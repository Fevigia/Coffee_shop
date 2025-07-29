require 'rails_helper'

RSpec.describe Orderitem, type: :model do
  subject { build(:orderitem) }

  describe 'Validations' do
    it { should validate_presence_of(:menu_item_id) }
    it { should validate_presence_of(:quantity) }
    it { should validate_numericality_of(:quantity).only_integer.is_greater_than(0) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end
end
