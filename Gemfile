require 'rubygems'
require 'mongo'
source 'http://rubygems.org'
source 'http://gemcutter.org'

gem 'rails', '3.1.3'
gem 'rails3-generators'
gem "bson_ext"
gem 'mongo_mapper'
gem 'coffee-script-source', '1.1.2'
gem 'therubyracer', '>=0.8.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end

group :test, :spec, :cucumber do
  gem "rspec"
  gem "rspec-rails",      ">= 2.0.0.beta"
  gem "nokogiri"
  gem "capybara"
  gem "cucumber"
  gem "database_cleaner"
  gem "cucumber-rails"
end