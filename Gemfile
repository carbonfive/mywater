source 'https://rubygems.org'

# Heroku uses the ruby version to configure your application's runtime.
ruby '2.1.5'

gem 'unicorn'
gem 'rack-canonical-host'
gem 'rails', '~> 4.1.6'
gem 'pg'

gem 'slim-rails'
gem 'sass-rails'#, '~> 5.0.0.beta1'                     # Rails 4.2 support
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'coffee-rails'
gem 'simple_form', '~> 3.1.0.rc2'                      # Bootstrap 3 support
gem 'uglifier'

gem 'awesome_print'
gem 'activerecord-postgis-adapter'
gem 'rgeo-geojson'

gem 'typhoeus'
gem 'nokogiri'

group :production, :acceptance do
  gem 'rails_stdout_logging'
  gem 'heroku_rails_deflate'
  gem 'newrelic_rpm'
end

group :test do
  gem 'fuubar'
  # gem 'jasminerice', github: 'bradphelan/jasminerice'  # Latest release still depends on haml.
  gem 'capybara'
  #gem 'capybara-email'
  gem 'poltergeist'
  gem 'factory_girl_rails'
  #gem 'timecop'
  gem 'database_cleaner'
  # gem 'simplecov'
end

group :test, :development do
  gem 'rspec-rails'
  #gem 'cane'
  #gem 'morecane'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'foreman'
  gem 'launchy'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'guard', '~> 2'
  gem 'guard-rspec'
  # gem 'guard-jasmine'
  gem 'guard-livereload'
  gem 'rb-fsevent'
  gem 'growl'
end
