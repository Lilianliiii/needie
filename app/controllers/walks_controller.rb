class WalksController < ApplicationController

  def index
    @walks = Walk.all
    @markers = @walks.geocoded.map do |walk|
      {
        lat: walk.latitude,
        lng: walk.longitude
      }
    end
  end

  def show
    @walk = Walk.find(params[:id])
  end

end
