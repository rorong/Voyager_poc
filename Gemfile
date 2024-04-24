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

  # for test cases
  gem 'rspec-rails', '~> 6.1.0'
  gem 'rails-controller-testing'
end

group :development do
  gem "web-console"
end

# for user authorization
gem "devise", "~> 4.9"
