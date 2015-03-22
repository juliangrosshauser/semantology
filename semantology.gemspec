# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semantology/version'

Gem::Specification.new do |spec|
  spec.name        = 'semantology'
  spec.version     = Semantology::VERSION
  spec.authors     = ['Julian Grosshauser']
  spec.email       = ['julian@juliangrosshauser.com']

  spec.summary     = 'Turn semantic markup into ontologies'
  spec.description = 'semantology turns semantic markup into ontologies'
  spec.homepage    = 'https://github.com/juliangrosshauser/semantology'
  spec.license     = 'Copyright (c) 2014-2015 Julian Grosshauser'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version     = '>= 2.2.0'

  spec.add_runtime_dependency 'nokogiri', ['~> 1.6']
  spec.add_runtime_dependency 'rdf', ['~> 1.1']
  spec.add_runtime_dependency 'linkeddata', ['~> 1.1']

  spec.add_development_dependency 'bundler', ['~> 1.9']
  spec.add_development_dependency 'rake', ['~> 10.3']
  spec.add_development_dependency 'rspec', ['~> 3.0']
  spec.add_development_dependency 'yard', ['~> 0.8']
  spec.add_development_dependency 'yard-rspec', ['~> 0.1']
  spec.add_development_dependency 'kramdown', ['~> 1.5']
  spec.add_development_dependency 'rubocop', ['~> 0.24']
end
