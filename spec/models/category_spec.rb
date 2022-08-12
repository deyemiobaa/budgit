require 'rails_helper'

RSpec.describe Category, type: :model do
  before :all do
    @user = FactoryBot.create(:user)
    @category = Category.create(name: 'Test Category', icon: fixture_file_upload('logo.png'), user_id: @user.id)
  end

  it 'is valid with valid attributes' do
    expect(@category).to be_valid
  end

  it 'is not valid without a name' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'icon should be present' do
    expect(@category.icon).to be_attached
  end
end
