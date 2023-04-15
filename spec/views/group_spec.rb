require 'rails_helper'

RSpec.describe 'expenses#new', type: :system do
  describe 'index page' do
    let(:group) { FactoryBot.create(:group) }
    before(:each) do
      group.save
      @ayesha = User.create!(name: 'Ayesha', email: 'ayesha@gmail.com', password: 'topsecret',
                             password_confirmation: 'topsecret')
      @transaction = Entity.create(name: 'Over Time', amount: 200,
                                   author: @user)
      @category_tansaction = EntityGroup.create(entity_id: @transaction.id, group:)

      visit '/'
      click_on 'Log in'
      fill_in 'user[email]', with: 'ayesha@gmail.com'
      fill_in 'user[password]', with: 'topsecret'
      click_on 'Log in'
      sleep(1)
    end

    it 'new category form' do
      expect(group.icon).to be_an_instance_of(ActiveStorage::Attached::One)
      expect(page).to have_content(group.name)
      expect(page).to have_content('$0')
      expect(page).to have_content(group.created_at.strftime('%d %b %Y'))
      click_on group.name.to_s
      sleep(1)
      expect(current_path).to eql("/group/#{group.id}")
      expect(page).to have_content('DETAIL')
      expect(page).to have_selector(:link_or_button, 'Add new transaction')
      click_on 'Add new transaction'
      sleep(1)
      expect(current_path).to eql('/entity/new')
      expect(page).to have_selector(:link_or_button, 'Add Transaction')
      fill_in 'name', with: 'Mcdonald'
      fill_in 'amount', with: 8.9
      page.check(group.name.to_s)
      click_on 'Add Transaction'
    end
  end
end
