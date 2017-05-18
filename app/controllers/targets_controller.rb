class TargetsController < ApplicationController

  def new
    @target = Target.new
  end

  def show
    @target = Target.find(params[:id])
  end


  def create
    target = current_user.targets.create!(sanitized_params)
    redirect_to user_target_path(current_user, target)
  end

  private

  def sanitized_params
    params.require(:target).permit(:image)
  end
end