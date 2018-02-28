class Ad < ApplicationRecord
  validates :title, presence: true, length: {maximum: 75}
  validates :cost, presence: true
  validates :description, presence: true, length: {minimum: 50, maximum: 1000}
  validates :accepted, presence: true

  belongs_to :user
  belongs_to :category
  has_many :users, :through => :favourites

  def time_created
    created_at.strftime("%d %b, %Y")
  end

end
