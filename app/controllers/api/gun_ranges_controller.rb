class Api::GunRangesController < ApplicationController

  def index
    @gun_ranges = GunRange.where("name LIKE ?", "%#{params[:term]}%")
  end
end