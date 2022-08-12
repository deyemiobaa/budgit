class Category < ApplicationRecord
  has_one_attached :icon
  has_many :payments, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :icon, presence: true
  validates :user_id, presence: true

  def total_amount(user)
    payments.includes(:user).where(user:).sum(:amount)
  end

  def sorted_payments(user)
    payments.includes(:user).where(user:).order(created_at: :desc)
  end
end
