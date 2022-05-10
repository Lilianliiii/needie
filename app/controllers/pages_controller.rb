class PagesController < ApplicationController
  before_action :authenticate_user!, only: :profile

  def profile
    current_user
  end

  def contact
  end
end
