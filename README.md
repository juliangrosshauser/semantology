# Semantology

Turn semantic markup into ontologies.

## Dependencies

* [Nokogiri](http://nokogiri.org)
* [RDF.rb](https://github.com/ruby-rdf/rdf)

## Usage

### Semantology::translate

Semantology provides a convinience class method for translating data from one format into another one:
```ruby
Semantology::translate(input_path, input_format, output_path, output_format)
```

Example:
```ruby
Semantology::translate('input.xml', :rdfa, 'output.ttl', :turtle)
```

### Semantology::Reader

To parse an input file you can use Semantology::Reader::read:
```ruby
data = Semantology::Reader.read(input_path, input_format)
```

Example:
```ruby
data = Semantology::Reader.read('input.xml', :rdfa)
```

### Semantology::Writer

Semantology::Writer::write is used to output data read by Semantology::Reader into a file:
```ruby
Semantology::Writer.write(output_path, output_format)
```

Example:
```ruby
Semantology::Writer.write(data, :turtle, 'output.ttl')
```

## Development

### Ruby version

This gem is only tested with Ruby 2.2.0 (See [.ruby-version](.ruby-version)).  
For managing Ruby versions I recommend [rbenv](https://github.com/sstephenson/rbenv) or [rvm](https://rvm.io).

### Managing dependencies

[Bundler](http://bundler.io) is used to manage dependencies.  
Install it with `gem install bundler`.  
Now you can install all required gems with `bundle install`.

### Testing

[RSpec](http://rspec.info) is used for testing.  
To run all tests use `bundle exec rake`.

### Code style guide

See [Ruby style guide](https://github.com/bbatsov/ruby-style-guide).  
To inspect the code style use `bundle exec rake rubocop`.

### Documentation

Generate documentation with `bundle exec rake yardoc`.

## License

Copyright (c) 2014-2015 Julian Grosshauser. See [LICENSE](LICENSE).
