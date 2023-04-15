require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'Associations test' do
    it { should belong_to(:author) }
    it { should have_many(:entity_groups).dependent(:destroy) }
  end

  describe 'Validation test' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
  end
end
