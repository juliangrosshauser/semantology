group :red_green_refactor, halt_on_fail: true do
  guard :rspec, cmd: 'bundle exec rspec' do
    watch(%r{^(lib|lib/semantology|spec)/.+\.rb$})
  end

  guard :rubocop do
    watch(%r{^(lib|lib/semantology|spec)/.+\.rb$})
  end
end
