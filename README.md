# TicTacToe

Tic Tac Toe for the command line! This is a version of the walkthrough offered by CodeQuizes at: https://codequizzes.wordpress.com/2013/10/25/creating-a-tic-tac-toe-game-with-ruby/. This version includes some additional features not present in the walkthrough.

Current Problems:
 - A player can overwrite another player's move.

Nice-to-Haves that we don't have:

 - Stats aren't tracked, not even within a session
 - Player data cannot be saved

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

Tic tac toe is a simple game. Instructions are printed in the command line when run.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tic_tac_toe.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

