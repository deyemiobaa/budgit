require 'rails_helper'

RSpec.describe '/payments', type: :feature do
  it 'creates a new Payment' do
    @user = FactoryBot.create(:user)
    sign_in @user
    @category = Category.create(name: 'Test Category', icon: fixture_file_upload('logo.png'), user_id: @user.id)
    visit new_payment_path
    fill_in 'Name', with: 'Test Payment'
    fill_in 'Amount', with: 100
    select 'Test Category'
    click_on 'Create Payment'
    expect(page).to have_content('Test Payment')
  end
end
