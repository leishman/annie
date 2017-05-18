class Gun < ApplicationRecord
  has_many :targets

  enum type: [:handgun, :rifle, :shotgun]
end