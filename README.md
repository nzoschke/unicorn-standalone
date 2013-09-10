# Unicorn::Standalone

Runs a native nginx / unicorn web server.

## Installation

Add this line to your application's Gemfile:

    gem 'unicorn-standalone'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unicorn-standalone

## Usage


config.ru
```
run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("Hello World!\n")] }
```

```bash
$ bundle exec unicorn-standalone
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
