FactoryBot.define do
  factory :customer do
    fname { Faker::Name.first_name }
    lname { Faker::Name.last_name }
    sequence(:email) { |n| Faker::Internet.unique.email(name: "john.doe#{n}") }
    password_digest { 'hashed_password' }
  end
end 