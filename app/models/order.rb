class Order < ApplicationRecord
    class Order < ApplicationRecord
  belongs_to :customer
  validates :customer_id, presence: true
  validates :status, presence: true
  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
