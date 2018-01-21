class Ad < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum: 75}
  validates :cost, presence: true
  validates :description, presence: true, length: {minimum: 50, maximum: 1000}
  validates :accepted, presence: true
end
