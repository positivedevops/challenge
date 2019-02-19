# Our simple app

## Development

Install bundler
```
gem install bundler
```

Install dependencies
```
bundle install
```

Run sinatra with shotgun for autoreloading.
```
# bash/zsh
export RACK_ENV=development; bundle exec shotgun app.rb

# fish
set -xU RACK_ENV=development; bundle exec shotgun app.rb
```

## Test

```
bundle exec rspec specs/
```
