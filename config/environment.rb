# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Creditflex::Application.initialize!

config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
:user_name => "app2792492@heroku.com",
:password => "regan21",
:domain => "OhiocreditFlexibility.org",
:address => "smtp.sendgrid.net",
:port => 587,
:authentication => :plain,
:enable_starttls_auto => true
}

config.action_mailer.raise_delivery_errors = true