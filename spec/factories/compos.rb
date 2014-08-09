# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :compo do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
  end
end
