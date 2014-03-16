# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Compo::Application.initialize!

APP_VERSION = "1.2.2" unless defined? APP_VERSION
