# frozen_string_literal: true

require 'fiddle'

# @!visibility private
module SassConfig
  # @see https://learn.microsoft.com/en-us/windows/win32/api/
  module Win32API
    Kernel32 = Fiddle.dlopen('Kernel32.dll')

    # @see https://learn.microsoft.com/en-us/windows/win32/sysinfo/image-file-machine-constants
    module ImageFileMachineConstants
      IMAGE_FILE_MACHINE_I386 = 0x014c
      IMAGE_FILE_MACHINE_ARMNT = 0x01c4
      IMAGE_FILE_MACHINE_AMD64 = 0x8664
      IMAGE_FILE_MACHINE_ARM64 = 0xaa64
    end

    private_constant :ImageFileMachineConstants

    # @see https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/ne-processthreadsapi-machine_attributes
    module MachineAttributes
      USER_ENABLED = 0x00000001
      KERNEL_ENABLED = 0x00000002
      WOW64_CONTAINER = 0x00000004
    end

    private_constant :MachineAttributes

    # Specifies the ways in which an architecture of code can run on a host operating system.
    class MachineTypeAttributes
      def initialize(machine_type_attributes)
        @machine_type_attributes = machine_type_attributes
      end

      # The specified architecture of code can run in user mode.
      def user_enabled?
        @machine_type_attributes & MachineAttributes::USER_ENABLED == MachineAttributes::USER_ENABLED
      end

      # The specified architecture of code can run in kernel mode.
      def kernel_enabled?
        @machine_type_attributes & MachineAttributes::KERNEL_ENABLED == MachineAttributes::KERNEL_ENABLED
      end

      # The specified architecture of code runs on WOW64.
      def wow64_container?
        @machine_type_attributes & MachineAttributes::WOW64_CONTAINER == MachineAttributes::WOW64_CONTAINER
      end
    end

    private_constant :MachineTypeAttributes

    class << self
      def x86?
        get_machine_type_attributes(ImageFileMachineConstants::IMAGE_FILE_MACHINE_I386).user_enabled?
      end

      def arm?
        get_machine_type_attributes(ImageFileMachineConstants::IMAGE_FILE_MACHINE_ARMNT).user_enabled?
      end

      def x64?
        get_machine_type_attributes(ImageFileMachineConstants::IMAGE_FILE_MACHINE_AMD64).user_enabled?
      end

      def arm64?
        get_machine_type_attributes(ImageFileMachineConstants::IMAGE_FILE_MACHINE_ARM64).user_enabled?
      end

      private

      begin
        # @see https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-getmachinetypeattributes
        GetMachineTypeAttributes = Fiddle::Function.new(
          Kernel32['GetMachineTypeAttributes'],
          [-Fiddle::TYPE_SHORT, Fiddle::TYPE_VOIDP],
          Fiddle::TYPE_LONG
        )

        def get_machine_type_attributes(machine)
          p_machine_type_attributes = Fiddle::Pointer.malloc(Fiddle::SIZEOF_INT, Fiddle::RUBY_FREE)
          raise Fiddle.win32_last_error unless GetMachineTypeAttributes.call(machine, p_machine_type_attributes).zero?

          MachineTypeAttributes.new(p_machine_type_attributes.to_str.unpack1('i'))
        end
      rescue Fiddle::DLError
        # @see https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocess
        GetCurrentProcess = Fiddle::Function.new(
          Kernel32['GetCurrentProcess'],
          [],
          Fiddle::TYPE_VOIDP
        )

        # @see https://learn.microsoft.com/en-us/windows/win32/api/wow64apiset/nf-wow64apiset-iswow64process2
        IsWow64Process2 = Fiddle::Function.new(
          Kernel32['IsWow64Process2'],
          [Fiddle::TYPE_VOIDP, Fiddle::TYPE_VOIDP, Fiddle::TYPE_VOIDP],
          Fiddle::TYPE_CHAR
        )

        # @see https://learn.microsoft.com/en-us/windows/win32/api/wow64apiset/nf-wow64apiset-iswow64guestmachinesupported
        IsWow64GuestMachineSupported = Fiddle::Function.new(
          Kernel32['IsWow64GuestMachineSupported'],
          [-Fiddle::TYPE_SHORT, Fiddle::TYPE_VOIDP],
          Fiddle::TYPE_LONG
        )

        def get_machine_type_attributes(machine)
          h_process = GetCurrentProcess.call
          p_process_machine = Fiddle::Pointer.malloc(Fiddle::SIZEOF_SHORT, Fiddle::RUBY_FREE)
          p_native_machine = Fiddle::Pointer.malloc(Fiddle::SIZEOF_SHORT, Fiddle::RUBY_FREE)
          raise Fiddle.win32_last_error if IsWow64Process2.call(h_process, p_process_machine, p_native_machine).zero?

          if p_native_machine.to_str.unpack1('S!') == machine
            return MachineTypeAttributes.new(MachineAttributes::USER_ENABLED | MachineAttributes::KERNEL_ENABLED)
          end

          p_machine_is_supported = Fiddle::Pointer.malloc(Fiddle::SIZEOF_CHAR, Fiddle::RUBY_FREE)
          raise Fiddle.win32_last_error unless IsWow64GuestMachineSupported.call(machine, p_machine_is_supported).zero?

          if p_machine_is_supported.to_str.unpack1('c').zero?
            MachineTypeAttributes.new(0)
          else
            MachineTypeAttributes.new(MachineAttributes::USER_ENABLED | MachineAttributes::WOW64_CONTAINER)
          end
        end
      end
    end
  end

  private_constant :Win32API
end
