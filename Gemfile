# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'ridgepole'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'pry-rails'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails-erd'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end
