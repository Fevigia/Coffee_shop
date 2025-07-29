require 'rails_helper'

RSpec.describe Menuitem, type: :model do
  subject { build(:menuitem) }

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_inclusion_of(:available).in_array([true, false]) }
  end
end
