## Changelog

### next
- updated rspec, byebug, passenger, and rollbar to latest

### 1.7.1
- switch travis ci builds to use the new docker infrastructure

### 1.7.0
- fix foundation, everything was broken until regenerating the overrides and settings file
- routes and initial template for rounds show

### 1.6.0
- updated to rails 4.2
- updated basically every gem in the project
- removed coffee-rails and turbolinks

### 1.5.0

- switched to vendored binaries, now installs taglib and audiowaveform from our builds on s3
- added ability to add and remove organizers from a Compo
- introduced Compo model, and the ability to create them as an admin

### 1.4.2

- switched to upstream heroku branch of taglib-ruby

### 1.4.1

- updated ruby to 2.1.2, updated rails to 4.1.1
- enable travis bundler cache

### 1.4.0

- admin users and admin dashboard
- installed skylight, byebug

### 1.3.1

- added a proper readme
- installed travis config, removed unused gems

### 1.3.0

- change the keys, jim, we're going open source
- upgrade to rails 4.1

### 1.2.7 - 1.2.20

- trying to get heroku to compile taglib-ruby
- switching to our branch of taglib-ruby

### 1.2.6

- installing taglib-ruby, see if heroku explodes
- added first rspec unit test
- removed error route test

### 1.2.5

- uninstalled bugsnag

### 1.2.4

- created url for testing exceptions, installed rollbar

### 1.2.3

- installed bugsnag

### 1.2.2

- git describe doesn't work on heroku, manual app version it is

### 1.2.1

- changed production to use rackspace asset host

### 1.2.0

- asset_sync installed and configured
- Footer with versioning info added
- Gems updated
- ruby upgraded from 2.1.0 to 2.1.1

### 1.1.0

- Navigation bar added
- Foundation installed
- Devise installed

### 1.0.0/1.0.1

- Basic gems were installed
- Simple homepage added
