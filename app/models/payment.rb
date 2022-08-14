class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :category_id, presence: true
  validates :name, presence: true

  def payment_date
    created_at.strftime('%d %b %Y')
  end
end
