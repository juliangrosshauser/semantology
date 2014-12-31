Gem::Specification.new do |s|
  s.name        = 'semantology'
  s.version     = '0.0.0'
  s.platform    = Gem::Platform::RUBY
  s.date        = '2014-07-20'
  s.summary     = 'Turn semantic markup into ontologies'
  s.description = 'Turn semantic markup into ontologies'
  s.authors     = ['Julian Grosshauser']
  s.email       = ['julian@juliangrosshauser.com']
  s.files       = ['lib/semantology.rb']
  s.executables = 'semantology'
  s.homepage    = 'https://github.com/juliangrosshauser/semantology'
  s.license     = 'Copyright (c) 2014-2015 Julian Grosshauser'

  s.required_ruby_version     = '>= 2.2.0'

  s.add_runtime_dependency 'nokogiri', ['~> 1.6']

  s.add_development_dependency 'bundler', ['~> 1.6']
  s.add_development_dependency 'rake', ['~> 10.3']
  s.add_development_dependency 'rspec', ['~> 3.0']
  s.add_development_dependency 'yard', ['~> 0.8']
  s.add_development_dependency 'yard-rspec', ['~> 0.1']
  s.add_development_dependency 'rubocop', ['~> 0.24']
  s.add_development_dependency 'guard', ['~> 2.6']
  s.add_development_dependency 'guard-rspec', ['~> 4.2']
  s.add_development_dependency 'guard-rubocop', ['~> 1.1']
  s.add_development_dependency 'terminal-notifier-guard', ['~> 1.5']
end
