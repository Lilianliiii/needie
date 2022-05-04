class SurveysController < ApplicationController
  def new
    # @user = User.find(params[:user_id])
    @survey = Survey.new
  end

  def create
    # @user = User.find(params[:user_id])
    @survey = Survey.new(survey_params)
    @survey.user = @user

    # if @survey.save
    #   redirect_to
    # else
    #   render :new
    # end
  end

  def show
  end

  private

  # def score
  #   @score =
  # end

  def survey_params
    params.require(:survey).permit(:user_id, :score)
  end
end
