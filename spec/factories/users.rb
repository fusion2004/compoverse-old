# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password "secret_password"
    encrypted_password { User.new.send(:password_digest, "secret_password") }
  end
end
