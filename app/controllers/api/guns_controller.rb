class Api::GunsController < ApplicationController

  def index
    @guns = Gun.where("name LIKE ?", "%#{params[:term]}%")
  end
end