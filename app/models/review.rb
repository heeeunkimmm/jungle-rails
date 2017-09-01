class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :product_id, :user_id, :description, :rating, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
