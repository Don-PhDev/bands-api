require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'relationship' do
    it { should belong_to(:band) }
  end
end
