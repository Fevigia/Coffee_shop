require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { build(:order) }

  describe 'Validations' do
    it { should validate_presence_of(:customer_id) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:total) }
    it { should validate_numericality_of(:total).is_greater_than_or_equal_to(0) }
  end
end
