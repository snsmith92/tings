class Category < ApplicationRecord
  has_ancestry
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :ads


  def self.disable_options
    Category.where(ancestry: nil).map { |c| c.id if c.has_children? }.compact
  end 

end
