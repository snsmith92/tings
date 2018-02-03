class Category < ApplicationRecord
  has_ancestry
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :ads
end
