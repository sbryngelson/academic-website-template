# Time

When 'time' is required, Time is extended with additional methods for parsing
and converting Times.

## Features

This library extends the Time class with the following conversions between
date strings and Time objects:

* date-time defined by {RFC 2822}[http://www.ietf.org/rfc/rfc2822.txt]
* HTTP-date defined by {RFC 2616}[http://www.ietf.org/rfc/rfc2616.txt]
* dateTime defined by XML Schema Part 2: Datatypes ({ISO
  8601}[http://www.iso.org/iso/date_and_time_format])
* various formats handled by Date._parse
* custom formats handled by Date._strptime

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'time'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install time

## Usage

Takes a string representation of a Time and attempts to parse it
using a heuristic.

```ruby
require 'time'

Time.parse("2010-10-31") #=> 2010-10-31 00:00:00 -0500
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/time.

