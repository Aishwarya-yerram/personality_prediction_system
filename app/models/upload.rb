class Upload < ApplicationRecord
  mount_uploader :name, ImageUploader
  has_many :skills
    
end