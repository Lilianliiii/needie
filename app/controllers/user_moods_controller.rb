class UserMoodsController < ApplicationController

  def index
    user_moods = current_user.user_moods
    moods = user_moods.map{ |user_mood| user_mood.mood }
    @new_moods = moods.map{ |mood| {name: mood.name, image: mood.image, start_time: mood.created_at.to_date } }.to_json.html_safe
  end

end
