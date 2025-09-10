source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.5'

gem 'activeadmin', '4.0.0.beta16'
gem 'aws-sdk-s3', require: false
gem 'chartkick'
gem 'delayed', github: 'ryanckulp/delayed' # delayed_job_active_record rails 7 fork: https://github.com/betterment/delayed
gem 'devise', '~> 4.9'
gem 'groupdate' # used by Chartkick
gem 'honeypot-captcha', github: 'founderhacker/honeypot-captcha' # prevent unauthenticated form spam
gem 'httparty'
gem "image_processing", ">= 1.2"
gem 'importmap-rails'
gem 'jbuilder'
gem 'metamagic' # easily insert metatags for SEO / opengraph
gem 'methodz' # query db-backed object methods by partial name or type
gem 'pg'
gem 'postmark-rails'
gem 'pretender'
gem 'puma', '~> 7.0'
gem 'rack-cors', :require => 'rack/cors'
gem 'rails', '8.0.2.1'
gem 'redis', '~> 5.4'
gem 'rename', '1.1.3', git: 'https://github.com/ryanckulp/rename' # remove this gem after use
gem 'split', require: 'split/dashboard'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'stripe', '~> 15.0'
gem 'tailwindcss-rails'
gem 'turbo-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:windows, :jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  gem 'brakeman', require: false # security vulnerability scanner
  gem 'bundler-audit', require: false # dependency vulnerability scanner
  gem 'debug', platforms: [:mri, :windows]
  gem 'rubocop', require: false # code styling
  gem 'rubocop-capybara', require: false
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'letter_opener' # view mailers in browser
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 8.0'
  gem 'selenium-webdriver'
  gem 'shoulda-callback-matchers'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'simplecov-tailwindcss'
  gem 'webmock'
end
