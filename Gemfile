# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'

gem 'bitcoinrb', require: 'bitcoin'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'puma', '~> 5.0'
gem 'ridgepole'
gem 'sidetree'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'pry-rails'
  gem 'rails-erd'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'spring'
end
