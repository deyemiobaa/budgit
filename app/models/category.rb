class Category < ApplicationRecord
  has_one_attached :icon
  has_many :payments, dependent: :destroy
  belongs_to :user
end
