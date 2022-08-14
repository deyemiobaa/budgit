require 'rails_helper'

RSpec.describe Payment, type: :model do
  before :all do
    @user = FactoryBot.create(:user)
    @category = Category.create(name: 'Test Category', icon: fixture_file_upload('logo.png'), user_id: @user.id)
    @payment = Payment.create(name: 'Test Payment', amount: 100, user_id: @user.id, category_id: @category.id)
  end

  it 'is valid with valid attributes' do
    expect(@payment).to be_valid
  end
end
