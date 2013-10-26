source 'https://rubygems.org'
ruby '2.0.0'                                # language

# Base
gem 'rails', '4.0.0'                        # framework
gem 'pg'                                    # database
gem 'haml-rails'                            # templating engine
gem 'simple_form'                           # better forms

# jQuery
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'

# Authentication & Authorization
gem 'cancan'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'rolify'

# Configuration
gem 'figaro'

# Asset pipeline
gem 'coffee-rails', '~> 4.0.0'
gem 'less-rails'
gem 'haml_assets'
# gem 'handlebars_assets'
gem 'i18n-js'
gem 'sass-rails', '~> 4.0.0'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'uglifier', '>= 1.3.0'

# Design
# gem 'bourbon'
# gem 'neat'
gem 'twitter-bootstrap-rails', github: 'diowa/twitter-bootstrap-rails', branch: 'fontawesome-3.2.1'

# Multi-environment configuration
# gem 'simpleconfig'

# API
gem 'jbuilder', '~> 1.2'
# gem 'rabl'

# Performance monitoring and Exception management
# gem 'newrelic_rpm'
# gem 'rack-google-analytics'
# gem 'airbrake'

# Search
# gem 'mysql', '0.3.13'
# gem 'thinking-sphinx', '3.0.0'

# Security
# gem 'bcrypt-ruby', '~> 3.0.0'
# gem 'secure_headers'

# Miscellanea
# gem 'http_accept_language'
# gem 'resque', require: 'resque/server' # Resque web interface

# Development and Test, combined
group :development, :test do
  gem 'awesome_print'
  gem 'capybara-webkit', github: 'thoughtbot/capybara-webkit', branch: 'master'
  gem 'debugger'
  gem 'delorean'
  gem 'factory_girl_rails', '>= 4.1.0'
  gem 'faker'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'jazz_hands'
  gem 'parallel_tests'
  gem 'pry'
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'rb-fsevent'
  gem 'rspec-rails', '>= 2.11.4'
  gem 'zeus-parallel_tests'
end

# Development
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'guard-livereload'
  gem 'meta_request'
  gem 'rack-livereload'
  gem 'terminal-notifier-guard'  

  # Deployment
  gem 'capistrano'
end

# Production
group :production do
  # gem 'puma'
  gem 'unicorn'
end

# Test
group :test do
  gem 'cucumber-rails'
  gem 'capybara', '>= 1.1.3'
  gem 'coveralls', require: false
  gem 'database_cleaner', '>= 0.9.1'
  gem 'email_spec'
  gem 'growl'
  gem 'pdf-inspector'
  gem 'launchy', '>= 2.2.2'
  gem 'rspec'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
  gem 'webmock', require: false
  gem 'zeus', :require => false
end

group :staging, :production do
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
