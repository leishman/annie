class GunRange < ApplicationRecord
  has_many :targets


  def image_path
    "ranges/#{name.parameterize.underscore}.png"
  end
end