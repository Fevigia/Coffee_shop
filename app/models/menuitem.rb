class Menuitem < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :available, inclusion: { in: [true, false] }
end
