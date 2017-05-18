class Target < ApplicationRecord
  belongs_to :user

  mount_uploader :image, TargetUploader
end