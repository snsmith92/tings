class Ad < ApplicationRecord
  validates :title, presence: true, length: {maximum: 75}
  validates :cost, presence: true
  validates :description, presence: true, length: {minimum: 50, maximum: 1000}
  validates :accepted, presence: true

  belongs_to :user
  has_many :photos
  belongs_to :category
end
