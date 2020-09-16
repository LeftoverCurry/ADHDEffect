source 'https://rubygems.org'

# Ruby Version
ruby '2.6.3'

# Rails dependancies
  gem 'puma', '~> 4.1'
  gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
  gem 'bootsnap', '>= 1.4.2', require: false
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
  gem 'jbuilder', '~> 2.7'

# Database and Data Management
  gem 'pg', '>= 0.18', '< 2.0'
  gem 'activerecord-import'
  gem 'faker'
  gem 'seedbank'

# Front End Framework and Helpers
  gem 'chartkick'
  gem 'flutie'
  gem 'groupdate'
  gem 'react_on_rails'
  gem 'turbolinks', '~> 5'
  gem 'webpacker', '~> 5.0'

# User Auth
  gem 'devise'

group :development do
  # Documentation
    gem 'annotate'
    gem 'yard'

  # Linting
    gem 'rubocop'
    gem 'rubocop-rails'
    gem 'rubocop-rspec', '~> 1.43'

  # Servers and Preloaders
    gem 'foreman'
    gem 'listen', '~> 3.2'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
    gem 'web-console', '>= 3.3.0'

  # IDE interface
    gem 'solargraph'


end

group :test do
  # Integration testing
    gem 'capybara', '>= 2.15'
    gem 'selenium-webdriver'
    gem 'webdrivers'
end

group :development, :test do
  # Testing and debugging
    gem 'factory_bot_rails'
    gem 'pry-rails'
    gem 'rspec-rails'
end
