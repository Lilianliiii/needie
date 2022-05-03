class MoodsController < ApplicationController

  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.find(params [:id])
  end

  # user cannot CREATE a NEW mood or EDIT or Update or Destroy
end
