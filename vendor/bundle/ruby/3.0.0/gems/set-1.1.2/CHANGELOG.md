# Set Changelog

# 1.1.1 (2024-11-29)

* Enhancements
  * Fix Set#^ to respect subclasses [#38][] ([@kyanagi][])
  * Speed up Set#flatten [#39][] ([@kyanagi][])

# 1.1.0 (2023-12-23)

* Optimize for and require Ruby >=3

# 1.0.4 (2023-12-08)

* Enhancements
  * Avoid the `block or return` pattern to save Proc allocations [#29][] ([@casperisfine][])
  * Set#merge takes many enumerable objects [#30][]

# 1.0.3 (2022-09-06)

* Enhancements
  * Make Set a builtin feature \[[Feature #16989][]]

# 1.0.2 (2021-10-25)

* Enhancements
  * Allow Set#intersect? and #disjoint? to accept array argument \[[Feature #17838][]] [#18][] ([@jeremyevans][])
  * Make Set#pretty_print IRB::ColorPrinter friendly [#17][] ([@k-tsj][])
  * Improve documentation [#16][], [#20][] ([@BurdetteLamar][])
  * Follow the license change in Ruby and add BSD-2-Clause

# 1.0.1 (2020-12-22)

* Enhancements
  * Eliminate warnings

# 1.0.0 (2020-12-21)

This is the first release of set as a gem.  Here lists the changes since the version bundled with Ruby 2.7.

* Breaking Changes
  * SortedSet has been removed for dependency and performance reasons. [#2][] ([@knu][])

* Enhancements
  * Set#join is added as a shorthand for `.to_a.join`. [#4][] ([@marcandre][])
  * Set#<=> is added. [#5][] ([@marcandre][])

[#2]: https://github.com/ruby/set/pull/2
[#4]: https://github.com/ruby/set/pull/4
[#5]: https://github.com/ruby/set/pull/5
[#16]: https://github.com/ruby/set/pull/16
[#17]: https://github.com/ruby/set/pull/17
[#18]: https://github.com/ruby/set/pull/18
[#20]: https://github.com/ruby/set/pull/20
[#29]: https://github.com/ruby/set/pull/29
[#30]: https://github.com/ruby/set/pull/30
[#38]: https://github.com/ruby/set/pull/38
[#39]: https://github.com/ruby/set/pull/39
[Feature #17838]: https://bugs.ruby-lang.org/issues/17838
[Feature #16989]: https://bugs.ruby-lang.org/issues/16989

[@BurdetteLamar]: https://github.com/BurdetteLamar
[@casperisfine]: https://github.com/casperisfine
[@jeremyevans]: https://github.com/jeremyevans
[@k-tsj]: https://github.com/k-tsj
[@knu]: https://github.com/knu
[@kyanagi]: https://github.com/kyanagi
[@marcandre]: https://github.com/marcandre
