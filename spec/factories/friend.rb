require 'faker'
FactoryGirl.define do
  factory :friend do
    first_name { Faker::Name.first_name }
    person_id nil
  end
end