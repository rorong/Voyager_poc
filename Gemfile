source "https://rubygems.org"

ruby "3.2.4"

gem "rails", "~> 7.1.3", ">= 7.1.3.2"

gem "bootsnap", require: false
gem "haml-rails"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug", platforms: %i[mri windows]
  gem "standardrb"

  gem "bundler-leak"
  gem "bundler-audit"
  gem "brakeman"

  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "database_cleaner"
  gem "capybara-email"
  gem "database_cleaner-active_record"
  gem "dotenv-rails"
  gem "rails-controller-testing"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
  gem "super_diff"
  gem "simplecov", require: false
end

group :development do
  gem "web-console"
end

# for user authorization
gem "devise", "~> 4.9"
