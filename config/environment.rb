# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Compo::Application.initialize!

APP_VERSION = "1.2.5" unless defined? APP_VERSION
