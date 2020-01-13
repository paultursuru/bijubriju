class Picture < ApplicationRecord
  belongs_to :bijou
  mount_uploader :photo, PhotoUploader
end
