source "https://rubygems.org"
ruby "2.1.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.0.3"

gem "pg"

# Use SCSS for stylesheets
gem "sass-rails", "~> 4.0.0"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 1.2"

# Use ActiveModel has_secure_password
gem "bcrypt"
gem "bcrypt-ruby", "~> 3.1.2"

gem "newrelic_rpm"

gem "foundation-rails"

gem "passenger" # Best server.

# gem "interactor-rails" # Interactors, man

gem "devise" # User authentication

gem "figaro" # Settings

# gem "cancan" # User authorization

# gem "friendly_id", "~> 5.0.0" # Slugs!

# gem "rinku", require: "rails_rinku" # mother-fucking autolink

# gem "sidekiq" # Background jobs
# gem "sucker_punch" # Possibly free background jobs

# gem "devise-async" # Setup devise emails to go out async

# gem "carrierwave" # Upload handler

# gem "fog" # Cloud interaction

# gem "rails-i18n" # Rails I18n

# gem "taglib-ruby" # Taglib ruby wrapper

# gem "gravtastic" # Gravatar

# gem "active_model_serializers" # Dat API tho (json serializer)

group :development do
  gem "better_errors" # Awesome error pages
  gem "binding_of_caller" # Makes better_errors betterer
  gem "foreman" # Starts servers same as it would in production
  gem "meta_request" # For Rails Panel for Chrome
  gem "quiet_assets" # Stop logging assets
  # gem "letter_opener" # This stops mail from being sent in dev
end

group :development, :test do
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "rspec-rails", "~> 3.0.0.beta"
  gem "capybara"
  gem "faker"
  gem "factory_girl_rails"
  gem "sqlite3"
end

group :production do
  gem "rails_12factor" # Heroku magic
end

# Use Capistrano for deployment
# gem "capistrano", group: :development

# Use debugger
# gem "debugger", group: [:development, :test]
