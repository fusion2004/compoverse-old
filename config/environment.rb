# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
ThaSauceCompo::Application.initialize!

APP_VERSION = "1.5.0" unless defined? APP_VERSION
