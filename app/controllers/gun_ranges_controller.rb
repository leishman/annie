class GunRangesController < ApplicationController

  def index
    @gun_ranges = GunRange.first(10)
  end
end