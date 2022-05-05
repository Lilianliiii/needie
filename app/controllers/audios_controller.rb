class AudiosController < ApplicationController
# find therapy

  def show
    @audio = Audio.find(params[:id])
  end


  # def music
  #   @therapies = @mood.therapies.where(sub_category: "music")
  # end

  # def podcast
  #   @therapies = @mood.therapies.where(sub_category: "podcast")
  # end

  # private

  # def find_therapy
  #   @therapy = Therapy.find(params[:id])
  # end
end
