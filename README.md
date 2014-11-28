# DateDiscreter

Check discrete of months, days and hours

[![Build Status](https://travis-ci.org/sue445/date_discreter.svg?branch=master)](https://travis-ci.org/sue445/date_discreter)
[![Dependency Status](https://gemnasium.com/sue445/date_discreter.svg)](https://gemnasium.com/sue445/date_discreter)
[![Code Climate](https://codeclimate.com/github/sue445/date_discreter/badges/gpa.svg)](https://codeclimate.com/github/sue445/date_discreter)
[![Coverage Status](https://img.shields.io/coveralls/sue445/date_discreter.svg)](https://coveralls.io/r/sue445/date_discreter)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date_discreter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_discreter

## Usage
```ruby
>> require "date_discreter"
```

### discrete_months / continuous_months?
```ruby
>> continuous_months = [Date.parse("2014-10-01"), Date.parse("2014-11-01"), Date.parse("2014-12-01")]
>> DateDiscreter.discrete_months(continuous_months)
=> []
>> DateDiscreter.continuous_months?(continuous_months)
=> true

>> discrete_months = [Date.parse("2014-10-01"), Date.parse("2014-12-01")]
>> DateDiscreter.discrete_months(discrete_months)
=> [Date.parse("2014-11-01")]
>> DateDiscreter.continuous_months?(discrete_months)
=> false
```

### discrete_days / continuous_days?
```ruby
>> continuous_days = [Date.parse("2014-12-01"), Date.parse("2014-12-02"), Date.parse("2014-12-03")]
>> DateDiscreter.discrete_days(continuous_days)
=> []
>> DateDiscreter.continuous_days?(continuous_days)
=> true

>> discrete_days = [Date.parse("2014-12-01"), Date.parse("2014-12-03")]
>> DateDiscreter.discrete_days(discrete_days)
=> [Date.parse("2014-12-02")]
>> DateDiscreter.continuous_days?(discrete_days)
=> false
```

### discrete_hours / continuous_hours?
```ruby
>> continuous_hours = [Time.parse("2014-12-01 00:00:00"), Time.parse("2014-12-01 01:00:00"), Time.parse("2014-12-01 02:00:00")]
>> DateDiscreter.discrete_hours(continuous_hours)
=> []
>> DateDiscreter.continuous_hours?(continuous_hours)
=> true

>> discrete_hours = [Time.parse("2014-12-01 00:00:00"), Time.parse("2014-12-01 02:00:00")]
>> DateDiscreter.discrete_hours(discrete_hours)
=> [Time.parse("2014-12-01 01:00:00")]
>> DateDiscreter.continuous_hours?(discrete_hours)
=> false
```

## Contributing

1. Fork it ( https://github.com/sue445/date_discreter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/sue445/date_discreter/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

