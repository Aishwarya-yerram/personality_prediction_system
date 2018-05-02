class Upload < ApplicationRecord
  has_many :skills

  mount_uploader :name, ImageUploader

end