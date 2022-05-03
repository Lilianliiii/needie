class MoodsController < ApplicationController
  before_action :find_mood, except: [:index]

  def index
    @moods = Mood.all
  end

  def show
    # @mood = Mood.find(params[:id])
  end

  def audio
    # @mood = Mood.find(params[:id])
    @therapies = @mood.therapies.where(category: "audio")
  end

  def movement
    @therapies = @mood.therapies.where(category: "movement")
  end

  def affirmations
    @therapies = @mood.therapies.where(category: "affirmations")
  end

  def goodvibes
    @therapies = @mood.therapies.where(category: "goodvibes")
  end

  private

  def find_mood
    @mood = Mood.find(params[:id])
  end
  # user cannot CREATE a NEW mood or EDIT or Update or Destroy
end
