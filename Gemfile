# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# React front end framework
gem 'react_on_rails'
gem 'foreman'
# Bootstrap and required dependancies
gem 'jquery-rails'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Chart visualization gem, configure to use Google Charts
gem 'chartkick'
# Provides methods for grouping by date and time.
gem 'groupdate'
# Provides view helpers for better modulization of front end components.
gem 'flutie'
# Provide randomized data for seeds and factories
gem 'faker'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'annotate'
  # Access an interactive console on exception pages or by calling 'console`
  # anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  # Linting and formatting support for IDE
  gem 'rubocop-rails'
  gem "rubocop-rspec", "~> 1.43"
  gem 'solargraph'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Devise gem for user authorization
gem 'devise'
group :development, :test do
  # Debase used for Rails debugger for vscode
  gem 'debase'
  # Create factories for testing
  gem 'factory_bot_rails'
  # Pretty console based debugging
  gem 'pry-rails'
  # Rspec testing gem for Rails
  gem 'rspec-rails'
  # Debugging for VSCode
  gem 'ruby-debug-ide'
  # Documentation
  gem 'yard'
end

gem 'mini_racer', platforms: :ruby


