FactoryBot.define do
  factory :orderitem do
    order_id { 1 }
    menu_item_id { 1 }
    quantity { 1 }
    price { "9.99" }
  end
end
