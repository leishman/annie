class Target < ApplicationRecord
  belongs_to :user
  belongs_to :gun
  belongs_to :gun_range
  has_many :shots

  mount_uploader :image, TargetUploader


  validates :image, presence: true

  def processed_image_path
    image.url.sub("target.jpg", "target_processed.jpg")
  end
end