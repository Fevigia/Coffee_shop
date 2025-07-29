require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject { build(:customer) }

  describe 'Validations' do
    it { should validate_presence_of(:fname) }
    it { should validate_presence_of(:lname) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('userexample.com').for(:email) }
  end
end
