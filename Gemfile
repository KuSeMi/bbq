source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'twitter-bootstrap-rails'
gem 'lightbox-bootstrap-rails', '~> 5.1', '>= 5.1.0.1'
gem 'sassc-rails'
gem 'jquery-rails'
gem 'carrierwave', '~> 1.0'
gem 'rmagick', '~> 3.0.0'
gem 'fog-aws'
gem 'bootsnap', '>= 1.1.0', require: false
gem "figaro"
gem 'pundit', '2.0.0'
gem 'letter_opener'

group :development, :test do
  gem 'sqlite3', '~> 1.3.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'better_errors'
  gem "binding_of_caller"
  gem 'pry'
  gem 'rspec-rails', '~> 3.9'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
