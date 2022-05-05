class AnimationsController < ApplicationController

  def show
    @animation = Animation.find(params[:id])
  end

end
