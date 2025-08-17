# Set

This library provides the Set class, which deals with a collection of
unordered values with no duplicates.  It is a hybrid of Array's
intuitive inter-operation facilities and Hash's fast lookup.

The method `to_set` is added to Enumerable for convenience.

Set implements a collection of unordered values with no duplicates.
This is a hybrid of Array's intuitive inter-operation facilities and
Hash's fast lookup.

Set is easy to use with Enumerable objects (implementing `each`).
Most of the initializer methods and binary operators accept generic
Enumerable objects besides sets and arrays.  An Enumerable object can
be converted to Set using the `to_set` method.

Set uses Hash as storage, so you must note the following points:

* Equality of elements is determined according to Object#eql? and
  Object#hash.  Use Set#compare_by_identity to make a set compare its
  elements by their identity.

* Set assumes that the identity of each element does not change while
  it is stored.  Modifying an element of a set will render the set to
  an unreliable state.

* When a string is to be stored, a frozen copy of the string is stored
  instead unless the original string is already frozen.

### Comparison

The comparison operators `<`, `>`, `<=`, and `>=` are implemented as
shorthand for the {proper_,}{subset?,superset?} methods.  The `<=>`
operator reflects this order, or return `nil` for sets that both have
distinct elements (`{x, y}` vs. `{x, z}` for example).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'set'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install set

## Usage

```ruby
require 'set'
s1 = Set[1, 2]                        #=> #<Set: {1, 2}>
s2 = [1, 2].to_set                    #=> #<Set: {1, 2}>
s1 == s2                              #=> true
s1.add("foo")                         #=> #<Set: {1, 2, "foo"}>
s1.merge([2, 6])                      #=> #<Set: {1, 2, "foo", 6}>
s1.subset?(s2)                        #=> false
s2.subset?(s1)                        #=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/set.

Feature requests should also go to https://bugs.ruby-lang.org/ for wider audience and discussion.

## License

The gem is available as open source under either the terms of the [2-Clause BSD License](https://opensource.org/licenses/BSD-2-Clause).  When bundled with Ruby, you can distribute/modify this program under the same terms of [Ruby](https://www.ruby-lang.org/en/about/license.txt).
