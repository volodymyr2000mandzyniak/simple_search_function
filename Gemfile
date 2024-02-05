source "https://rubygems.org"

ruby "3.1.0"
gem "rails", "~> 7.1.3"

gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem 'simplecov', require: false
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
end

group :development do
  gem "web-console"
  gem 'rubocop', "~> 1.58.0", require: false
  gem 'rubocop-rails', "~> 2.22.2", require: false
  gem 'rubocop-rspec', '~> 2.26.1', require: false
  gem 'rubocop-performance', '1.20.2'

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

