class Target < ApplicationRecord
  belongs_to :user
  belongs_to :gun
  belongs_to :gun_range

  mount_uploader :image, TargetUploader


  validates :image, presence: true
end