FactoryBot.define do
  factory :menuitem do
    name { Faker::Coffee.blend_name }
    description { Faker::Food.description }
    price { Faker::Commerce.price(range: 1.0..20.0) }
    available { [true, false].sample }
  end
end
