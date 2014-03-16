# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Compo::Application.initialize!

APP_VERSION = `git describe --always --tags` unless defined? APP_VERSION
