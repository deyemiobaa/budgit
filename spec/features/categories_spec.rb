require 'rails_helper'

RSpec.describe '/categories', type: :feature do
  before :each do
    @user = FactoryBot.create(:user)
    sign_in @user
  end

  describe 'GET /index' do
    it 'renders the index template' do
      visit authenticated_root_path
      expect(page).to have_text('Categories')
    end

    it 'redirect to new category page' do
      visit authenticated_root_path
      click_on 'New Category'
      expect(page).to have_content('New Category')
    end
  end

  describe 'GET /show' do
    it 'renders a successful response and page' do
      category = Category.create(name: 'Test Category', icon: fixture_file_upload('logo.png'), user_id: @user.id)
      visit category_path(category)
      expect(page).to have_content('Test Category')
    end
  end

  describe 'GET /new' do
    it 'renders a form' do
      visit new_category_path
      expect(page).to have_content('New Category')
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Category' do
        visit new_category_path
        fill_in 'Name', with: 'Test Category'
        attach_file('Icon', "#{Rails.root}spec/fixtures/files/logo.png")
        click_on 'Create Category'
        expect(page).to have_content('Test Category')
      end
    end
  end
end
