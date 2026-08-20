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
  # Ruby 4.0 unbundled benchmark from the standard library; rubocop 1.50.2 still requires
  # it directly at startup.
  gem 'benchmark'

  gem 'simplecov'
  gem 'simplecov-console'
end

group :development do
  gem 'pry'
  gem 'yard'
end
