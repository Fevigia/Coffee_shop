FactoryBot.define do
  factory :order do
    association :customer
    status { "pending" }
    total { Faker::Commerce.price(range: 1.0..100.0) }
  end
end
