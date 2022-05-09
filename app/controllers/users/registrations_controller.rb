class Users::RegistrationsController < Devise::RegistrationsController
  after_action :update_survey, only: [:create]
  def update_survey
    if params[:survey].present?
      @survey = Survey.find(params[:survey])
      @survey.user = current_user
      @survey.save
    end
  end
end
