source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.4"

# Rails
gem "rails", "~> 7.1.3"

# Database
gem "sqlite3", "~> 1.4"

# Web server
gem "puma", "~> 6.0"

# Asset pipeline
gem "sprockets-rails"

# JavaScript
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# CSS
gem "tailwindcss-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem "hotwire-livereload"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Add any other gems you specifically need for your project here
