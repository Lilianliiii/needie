class UserMoodsController < ApplicationController

  def index
    user_moods = current_user.user_moods
    @new_moods = user_moods.map{ |user_mood|
      mood = user_mood.mood
      { name: mood.name,
        image: mood.image,
        start_time: user_mood.created_at.strftime("%Y-%m-%d") }}.to_json.html_safe

  end

end
