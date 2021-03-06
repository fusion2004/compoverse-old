source "https://rubygems.org"
ruby "2.2.2"

gem "dotenv-rails", groups: [:development, :test]

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.2.3"

gem "pg"

# Use SCSS for stylesheets
gem "sass-rails"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
# gem "coffee-rails", "~> 4.0.0"

gem "asset_sync" # Sync assets to cdn

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem "turbolinks"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem "jbuilder", "~> 2.0"

# gem "newrelic_rpm"
gem "skylight"

gem "foundation-rails"

gem "passenger" # Best server.

gem "rollbar" # Exception notification

# gem "interactor-rails" # Interactors, man

gem "devise" # User authentication

gem "cancancan" # User authorization

# gem "friendly_id", "~> 5.0.0" # Slugs!

# gem "rinku", require: "rails_rinku" # mother-fucking autolink

# gem "sidekiq" # Background jobs
# gem "sucker_punch" # Possibly free background jobs

# gem "devise-async" # Setup devise emails to go out async

# gem "carrierwave" # Upload handler

# gem "fog" # Cloud interaction

# gem "rails-i18n" # Rails I18n

gem "taglib-ruby" # Taglib ruby wrapper

# gem "gravtastic" # Gravatar

# gem "active_model_serializers" # Dat API tho (json serializer)

group :development do
  gem "better_errors" # Awesome error pages
  gem "binding_of_caller" # Makes better_errors betterer (REPL)
  gem "foreman" # Starts servers same as it would in production
  gem "meta_request" # For Rails Panel for Chrome
  gem "quiet_assets" # Stop logging assets
  # gem "letter_opener" # This stops mail from being sent in dev
end

group :development, :test do
  gem "pry"
  gem "pry-byebug"
  gem "database_cleaner"
  gem "rspec-rails"
  # gem "nyan-cat-formatter", :github => "mattsears/nyan-cat-formatter"
  gem "byebug"
  gem "capybara"
  gem "faker"
  gem "factory_girl_rails"
  gem "codeclimate-test-reporter", require: nil
end

group :production do
  gem "rails_12factor" # Heroku magic
end

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Use debugger
# gem "debugger", group: [:development, :test]
