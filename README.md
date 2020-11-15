# TravelingCli

Welcome to the travel aplication! This gem will help you list and look up details on all of the major and necessary information of a specific countrie when planning on traveling . All information is pulled from the "https://travelbriefing.org/countries.json api since its already in jason format when i want to search for a specific url it will be better to search it url.gsub("fomat=json" ") = https://travelbriefing.org/yemen then it will take u too the desired place.

## Installation

Add this line to your application's Gemfile:

gem "rest-client"
gem "json"
gem 'httparty'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install traveling_cli

## Usage

Execute the following 

./bin/executable

After running thise file folow the insteraction to get the information you want.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/traveling_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/traveling_cli/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TravelingCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/traveling_cli/blob/master/CODE_OF_CONDUCT.md).
