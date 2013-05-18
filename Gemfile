source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.1'
gem "figaro", ">= 0.5.3"

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'devise'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.1.0"

group :test do
  gem 'capybara', '2.0.2'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', '0.9.1'
  gem "factory_girl_rails", '4.2.0'
  gem "email_spec", '1.4.0'
end

group :production do
  gem 'pg', '0.12.2'
end