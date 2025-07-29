class Payment < ApplicationRecord
  validates :order_id, presence: true
  validates :amount_decimal, presence: true, numericality: { greater_than: 0 }
  validates :payment_method, presence: true
  validates :status, presence: true
end
