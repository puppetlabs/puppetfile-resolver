source 'https://rubygems.org'

gemspec

group :test do
  gem 'rake'
  gem 'rspec', '~> 3.1'
  gem 'rspec-collection_matchers', '~> 1.0'
  gem 'rspec-its', '~> 1.0'

  gem 'rubocop', '~> 1.50.0'
  gem 'rubocop-rspec', '~> 2.19'
  gem 'rubocop-performance', '~> 1.16'
  # rubocop 1.50.2 still requires these directly; unbundled from the standard library
  # since Ruby 3.4.0 (base64) or 4.0.0 (benchmark, ostruct).
  gem 'base64'
  gem 'benchmark'
  gem 'ostruct'
  # required directly by spec/unit/puppetfile-resolver/spec_searchers/git/gclone_spec.rb;
  # unbundled from the standard library since Ruby 4.0.0.
  gem 'logger'

  gem 'simplecov'
  gem 'simplecov-console'
end

group :development do
  gem 'pry'
  gem 'yard'
end
