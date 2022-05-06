class UserMoodsController < ApplicationController


  def index
    @user_moods = UserMood.all
  end


  # private
  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  # def set_mood
  #   @mood = Mood.find(params[:mood_id])
  # end
end
