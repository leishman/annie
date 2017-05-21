class TargetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @target = Target.new
  end

  def show
    @target = Target.find(params[:id])
  end

  def create
    @gun = Gun.find_by(name: params[:target][:gun_id])
    @range = GunRange.find_by(name: params[:target][:gun_range_id])

    @target = current_user.targets.build(sanitized_params)
    @target.gun = @gun
    @target.gun_range = @range

    @target.save!
    redirect_to user_target_path(current_user, @target)
  end

  private

  def sanitized_params
    params.require(:target).permit(:image)
  end
end