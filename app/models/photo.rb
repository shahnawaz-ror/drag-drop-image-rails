class Photo < ApplicationRecord
  belongs_to :program
  mount_uploader :image, MediaUploader
end
