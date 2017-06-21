source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'best_in_place', '~> 3.1', '>= 3.1.1'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'carrierwave', '~> 1.1'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'google_url_shortener', '~> 1.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'social-share-button', '~> 0.10.0'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'capybara', '~> 2.13'
  gem 'faker'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate', '~> 2.4.1.beta1'
  gem 'awesome_print', '~> 1.7'
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry'
  gem 'rspec-rails', '~> 3.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)
