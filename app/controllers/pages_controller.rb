class PagesController < ApplicationController
  before_action :authenticate_user!, only: :profile

  def profile
    current_user
    @surveys = current_user.surveys
  end

  def contact
  end
end
