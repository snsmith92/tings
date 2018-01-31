class Image < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON
  belongs_to :user
  belongs_to :ad
end
