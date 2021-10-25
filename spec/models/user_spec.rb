require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { build(:user) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value("hello@world").for(:email) }
  end

  describe 'relationship' do
    it { should have_many(:bands) }
    it { should have_many(:members) }
  end
end
