# Semantology
Turn semantic markup into ontologies.

## Dependencies
* [Nokogiri](http://nokogiri.org)
* [RDF.rb](https://github.com/ruby-rdf/rdf)

## Development
### Ruby version
This gem is only tested with Ruby 2.2.0 (See [.ruby-version](.ruby-version)).
For managing Ruby versions I recommend [rbenv](https://github.com/sstephenson/rbenv) or [rvm](https://rvm.io).

### Managing dependencies
[Bundler](http://bundler.io) is used to manage dependencies. Install it with `gem install bundler`.
Now you can install all required gems with `bundle install`.

### Testing
[RSpec](http://rspec.info) is used for testing.
To run all tests use `rake`.

### Code style guide
See [Ruby style guide](https://github.com/bbatsov/ruby-style-guide).
To inspect the code style use `rake rubocop`.

## License
Copyright (c) 2014-2015 Julian Grosshauser. See [LICENSE](LICENSE).
