class AnimationsController < ApplicationController

  def show
    require 'open-uri'
    require 'json'
    url = 'https://meme-api.herokuapp.com/gimme'
    @animation = Animation.find(params[:id])
    meme = JSON.parse(URI.open("#{url}").read)['url']
    @meme = meme
  end

end
