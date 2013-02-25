source 'http://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'



gem 'carrierwave'
#gem 'rmagick'
gem 'mini_magick'
gem 'fog'

gem "ckeditor", "3.7.0.rc2"
gem 'rinku'

gem 'make_voteable'

gem 'newrelic_rpm'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '>= 2.0.1'
gem 'sorcery'
gem 'cancan'
gem 'fog'
gem 'truncate_html'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'
gem 'bcrypt-ruby'
# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
    gem 'pry'
	#gem 'eventmachine', "1.0.0.beta.4.1"
	#gem 'thin'
	gem 'sqlite3'
 end
    
group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end

group :production do
 gem 'pg'
 end