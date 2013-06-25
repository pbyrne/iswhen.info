source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '4.0.0'
gem 'draper'
gem 'newrelic_rpm'
gem 'unicorn'
gem 'haml-rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem "pg"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass' # explicit require of sass to prevent thread-safety warning
  gem 'sass-rails', '~> 4.0.0'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'simplecov'
  gem 'powder'
  gem 'foreman'
  gem 'better_errors'
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

