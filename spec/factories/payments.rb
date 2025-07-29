FactoryBot.define do
  factory :payment do
    order_id { 1 }
    amount_decimal { "MyString" }
    payment_method { "MyString" }
    status { "MyString" }
  end
end
