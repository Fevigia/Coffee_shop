require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject { build(:payment) }

  describe 'Validations' do
    it { should validate_presence_of(:order_id) }
    it { should validate_presence_of(:amount_decimal) }
    it { should validate_numericality_of(:amount_decimal).is_greater_than(0) }
    it { should validate_presence_of(:payment_method) }
    it { should validate_presence_of(:status) }
  end
end
