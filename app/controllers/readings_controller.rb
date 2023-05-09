class ReadingsController < ApplicationController

  def show
    @reading = Reading.find(params[:id])
  end

end
