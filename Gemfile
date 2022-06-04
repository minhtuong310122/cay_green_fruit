source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "bootsnap", ">= 1.4.4", require: false
gem "figaro"
gem "jbuilder", "~> 2.7"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.5", ">= 6.1.5.1"
gem "rails-i18n", "~> 7.0", ">= 7.0.3"
gem "rubocop"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
