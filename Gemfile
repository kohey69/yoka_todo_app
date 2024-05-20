# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'acts_as_list'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'enumerize'
gem 'haml-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'redis'
gem 'sentry-rails' # fly.ioのデプロイ時に自動生成
gem 'sentry-ruby' # fly.ioのデプロイ時に自動生成
gem 'sgcop', github: 'SonicGarden/sgcop'
gem 'simple_form'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'view_component'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'erb2haml'
end

group :development do
  gem 'dockerfile-rails' # fly.ioのデプロイ時に自動生成
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end
