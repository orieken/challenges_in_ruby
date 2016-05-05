require 'faker'

FactoryGirl.define do
  factory :person do
    first_name { Faker::Name.first_name }
  end
end