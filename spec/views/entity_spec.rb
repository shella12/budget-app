require 'rails_helper'

RSpec.describe 'expenses#new', type: :system do
  describe 'index page' do
    before(:each) do
      @ayesha = User.create!(name: 'Ayesha', email: 'ayesha@gmail.com', password: 'topsecret',
                             password_confirmation: 'topsecret')
      visit '/'
      click_on 'Log in'
      fill_in 'user[email]', with: 'ayesha@gmail.com'
      fill_in 'user[password]', with: 'topsecret'
      click_on 'Log in'
      click_link("Add new category")
      sleep(1)
      expect(current_path).to eql("/group/new")
    end

    it 'new category form' do
      expect(page).to have_content('NEW CATEGORY')
      expect(page).to have_selector(:link_or_button, 'Add new category')
    end  
    
  end
end