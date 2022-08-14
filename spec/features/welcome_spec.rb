require 'rails_helper'

RSpec.describe 'Welcome Page', type: :feature do
  describe 'GET /index' do
    it 'renders the index template' do
      visit root_path
      expect(page).to have_css("img[alt='logo']")
    end

    it 'contains a link to sign up and log in' do
      visit root_path
      expect(page).to have_link('SIGN UP')
      expect(page).to have_link('LOG IN')
    end

    it 'sign up link redirects to sign up page' do
      visit root_path
      click_link('SIGN UP')
      expect(page).to have_content('REGISTER')
    end

    it 'log in link redirects to log in page' do
      visit root_path
      click_link('LOG IN')
      expect(page).to have_content('LOGIN')
    end
  end
end
