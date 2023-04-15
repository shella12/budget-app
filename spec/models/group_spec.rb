require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Associations test' do
    it { should have_many(:entity_groups).dependent(:destroy) }
  end

  describe 'Validation test' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end
end
