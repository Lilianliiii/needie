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
      @markers = [
      {
        lat: @walk.latitude,
        lng: @walk.longitude,
        info_window: render_to_string(partial: "info_window", locals: { walk: @walk }),
        image_url: helpers.asset_url("steps.png")
      }]
  end

  def direction


  end






end
