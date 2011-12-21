source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mongoid'
gem 'bson_ext'

# Authentication and authorization
gem 'devise'
gem 'cancan'
gem 'koala'

gem 'i18n-js'
gem 'rack-p3p'

gem 'settingslogic'
gem 'simple_form'
gem 'navigasmic'
gem 'kaminari'

gem 'airbrake'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'backbone-rails'
gem 'bootstrap-sass'

# Stylesheets
gem 'compass', '~> 0.12.alpha.2'

# Background workers
gem 'hiredis'
gem 'redis', require: ['redis/connection/hiredis', 'redis']
gem 'resque', require: 'resque/server'

# Testing
gem 'split', require: 'split/dashboard'

# Use thin as the web server
gem 'thin'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'rspec-rails'
  gem 'mongoid-rspec'
  
  gem 'cucumber-rails'
  gem 'capybara'
  
  gem 'database_cleaner'
  gem 'faker'
  gem 'fabrication'
end
