class FeedController < ApplicationController
  before_action :authenticate_user!

  def show
    @targets = Target.all
  end
end