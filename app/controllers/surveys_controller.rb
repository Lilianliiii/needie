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

  def score
    @score = @question_0 + @question_1 + @question_2 + @question_3 + @question_4 + @question_5 + @question_6
    + @question_7 + @question_8 + @question_9 + @question_10 + @question_11 + @question_12 + @question_13
    + @question_14 + @question_15 + @question_16 + @question_17 + @question_18 + @question_20 + @question_21
    + @question_22 + @question_23 + @question_24
  end
    # foreach

  def survey_params
    params.require(:survey).permit(:user_id, :score)
  end
end
