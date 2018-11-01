# Decathlon - Sports API wrapper

A Ruby interface to [Decathlon's Sports API](https://developers.decathlon.com/sports)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'decathlon-sports'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install decathlon-sports

## Usage

### Decathlon::Sports.all
```ruby
sports = Decathlon::Sports.all
```

### Decathlon::Sports.find
```ruby
sport = Decathlon::Sports.find(175)
```

### Decathlon::Sports::Recommendations.get
```ruby
recommendations = Decathlon::Sports::Recommendations.get(175)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/decathlon/sports-api-wrapper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Decathlon::Sports project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/decathlon/sports-api-wrapper/blob/master/CODE_OF_CONDUCT.md).
