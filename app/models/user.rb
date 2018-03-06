class User < ApplicationRecord
  attr_accessor :login
  has_many :ads
  has_many :favourites
  validates :first_name, presence: :true
  validates :last_name, presence: :true 
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  validate :validate_username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:login]
  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication warden_conditions
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
end
