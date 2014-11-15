source 'https://rubygems.org'
gem "sinatra", "~> 1.4"
gem "shotgun"
gem "haml", "~> 4.0"

group :development, :production do
  gem "mongoid", "~> 4.0.0"
end


group :test do
  gem "minitest", "~> 5.0"
  gem "rack-test", "~> 0.6"
  gem "rack-minitest", git: "git://github.com/agerwick/rack-minitest.git"
  gem "capybara", "~> 2.2"
  gem "capybara-webkit", "~> 1.0"
  gem "capybara_minitest_spec", "~> 1.0"
  gem "mongoid", "~> 4.0.0", :require => false
  gem "simplecov", :require => false
  gem "travis-lint"
end
