require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationship' do
    it { should have_many(:bands) }
    it { should have_many(:members) }
  end
end
