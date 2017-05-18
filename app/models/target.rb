class Target < ApplicationRecord
  belongs_to :user
  belongs_to :gun

  mount_uploader :image, TargetUploader
end