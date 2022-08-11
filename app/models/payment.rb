class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def payment_date
    self.created_at.strftime("%d %b %Y")
  end
end
