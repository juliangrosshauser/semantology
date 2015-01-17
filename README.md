# Semantology
Turn semantic markup into ontologies.

# Dependencies
[Nokogiri](http://nokogiri.org)
[RDF.rb](https://github.com/ruby-rdf/rdf)

# Development
## Ruby version
This gem is tested with Ruby 2.1.2 (See [.ruby-version](https://github.com/juliangrosshauser/semantology/blob/master/.ruby-version)).
For managing Ruby versions I recommend [rbenv](https://github.com/sstephenson/rbenv) (or [rvm](https://rvm.io)).

## Managing dependencies
[Bundler](http://bundler.io) is used to manage dependencies. Install it with `gem install bundler`.
Now you can install all required gems with `bundle install`.

## Testing
[RSpec](http://rspec.info) is used for testing.
To run all tests use `rake`.
If you run `bundle exec guard` tests and rubocop will automatically run if a file is changed.

## Code style guide
See [Ruby style guide](https://github.com/bbatsov/ruby-style-guide).
To inspect the code style use `rake rubocop`.

## Code documentation
Code is documented with [YARD](http://yardoc.org).

# License
See [LICENSE.txt](https://github.com/juliangrosshauser/semantology/blob/master/LICENSE.txt).