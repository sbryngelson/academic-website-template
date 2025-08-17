# Singleton

The Singleton module implements the Singleton pattern.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singleton'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singleton

## Usage

To use Singleton, include the module in your class.

```ruby
class Klass
   include Singleton
   # ...
end
```

This ensures that only one instance of Klass can be created.

```ruby
a,b = Klass.instance, Klass.instance

a == b
# => true

Klass.new
# => NoMethodError - new is private ...
```

The instance is created at upon the first call of Klass.instance().

```ruby
class OtherKlass
  include Singleton
  # ...
end

ObjectSpace.each_object(OtherKlass){}
# => 0

OtherKlass.instance
ObjectSpace.each_object(OtherKlass){}
# => 1
```

This behavior is preserved under inheritance and cloning.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/singleton.
