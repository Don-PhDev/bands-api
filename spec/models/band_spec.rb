require 'rails_helper'

RSpec.describe Band, type: :model do
  describe 'relationship' do
    it { should have_many(:members) }
  end
end
