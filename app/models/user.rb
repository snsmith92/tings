class User < ApplicationRecord
  # Database associations
  has_many :ads
  has_many :favourites
  has_many :favourite_ads, through: :favourites, source: :favourited, source_type: 'Ad'
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
