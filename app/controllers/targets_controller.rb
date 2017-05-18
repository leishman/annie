class TargetsController < ApplicationController

  def new
    @target = Target.new
  end

  def show
    @target = Target.find(params[:id])
  end


  def create
    @gun = Gun.find_by(name: params[:target][:gun_id])
    @target = current_user.targets.build(sanitized_params)
    @target.gun = @gun
    @target.save!
    redirect_to user_target_path(current_user, @target)
  end

  private

  def sanitized_params
    params.require(:target).permit(:image)
  end
end