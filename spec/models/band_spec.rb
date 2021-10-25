require 'rails_helper'

RSpec.describe Band, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'relationship' do
    it { should belong_to(:user) }
    it { should have_many(:members) }
  end
end
