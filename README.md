# Eper

This is a simple ruby gem made for web applications. You need to resiter on football-data.org and use your own API key.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eper'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install eper

## Usage

1.	add your api_key as environment variable:
``` ruby
$ export football_data_api_key=YourAPIkeywillcomehere1234567890
```
2.  
		Eper.connect(id) 

where id is league id, check football-data.org API documentation.

## TODO
- optimize code
- add more options(e.g. teams, players, matches)
- write tests


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kicsipixel/eper.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
