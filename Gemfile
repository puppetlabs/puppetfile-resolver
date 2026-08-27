# frozen_string_literal: true

gemsource_default = ENV['GEM_SOURCE'] || 'https://rubygems.org'
source gemsource_default

gemspec

def location_for(place_or_version, fake_version = nil, opts = {})
  git_url_regex = /\A(?<url>(https?|git)[:@][^#]*)(#(?<branch>.*))?/
  file_url_regex = %r{\Afile://(?<path>.*)}

  if place_or_version && (git_url = place_or_version.match(git_url_regex))
    [fake_version, { git: git_url[:url], branch: git_url[:branch], require: false }].compact
  elsif place_or_version && (file_url = place_or_version.match(file_url_regex))
    ['>= 0', { path: File.expand_path(file_url[:path]), require: false }]
  else
    [place_or_version, { require: false }.merge(opts)]
  end
end

group :test do
  gem 'facter', *location_for(ENV.fetch('FACTER_GEM_VERSION', nil), nil, { source: gemsource_puppetcore })
  gem 'puppet', *location_for(ENV.fetch('PUPPET_GEM_VERSION', nil), nil, { source: gemsource_puppetcore })

  gem 'rake'
  gem 'rspec', '~> 3.1'
  gem 'rspec-collection_matchers', '~> 1.0'
  gem 'rspec-its', '~> 1.0'

  gem 'rubocop', '~> 1.50.0'
  gem 'rubocop-rspec', '~> 2.19'
  gem 'rubocop-performance', '~> 1.16'

  gem 'simplecov'
  gem 'simplecov-console'
end

group :development do
  gem 'pry'
  gem 'yard'
end
