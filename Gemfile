source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.13'
gem 'draper'
gem 'newrelic_rpm'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem "pg"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'simplecov'
  gem 'powder'
  gem 'oink' # show me where i'm loading too much crap
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

