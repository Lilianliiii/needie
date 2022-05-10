class MoodsController < ApplicationController
  before_action :find_mood, except: [:index]

  def index
    @moods = Mood.all
  end

  def show
    # @mood = Mood.find(params[:id])
    # also create user_mood if user is logged in
    if user_signed_in?
      @user_mood = UserMood.create(user: current_user, mood: @mood, date: Date.today)
      flash.now[:notice] = "Your Mood has been logged"
    end

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
    @therapies = @mood.therapies.where(category: "good vibes")
  end

  private

  def find_mood
    @mood = Mood.find(params[:id])
  end
  # user cannot CREATE a NEW mood or EDIT or Update or Destroy
end
