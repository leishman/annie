class Api::GunRangesController < ApplicationController

  def index
    shooter = User.where("name LIKE ?", "%#{params[:shooter]}%").first
    @gun_ranges = []
    if shooter
      target = shooter.targets.last
      if target
        @gun_ranges = [target.gun_range]
      end
    end
  end
end