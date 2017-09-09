# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	address: 'smtp.sentgrid.net',
	port: '587',
	authentication: :plain,
	user_name: ENV['chegrun'],
	password: ENV['chrngrndmnn'],
	domain:  'heroku.com',
	enable_starttls_auto: true
}

