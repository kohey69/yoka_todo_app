source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "haml-rails"
gem "simple_form"
gem "acts_as_list"
gem "enumerize"
gem "sentry-ruby", "~> 5.13" #fly.ioのデプロイ時に自動生成
gem "sentry-rails", "~> 5.13" #fly.ioのデプロイ時に自動生成
gem "view_component"
gem 'sgcop', github: 'SonicGarden/sgcop'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "erb2haml"
end

group :development do
  gem "web-console"
  gem "dockerfile-rails", ">= 1.5" #fly.ioのデプロイ時に自動生成
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
