class SurveysController < ApplicationController
  before_action :show_moods, only: :show
  def new
    @survey = Survey.new
  end

  def create
    # raise
    @survey = Survey.new(score: score)
    p @survey.errors
    p @survey.save
    if @survey.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    @survey.user = current_user
    @survey.save
  end

  def index
    @surveys = current_user.surveys
  end

  private

  def show_moods
    @moods = Mood.all
  end

  def score
    # survey_params
    # @all_scores = [@question_0, @question_1, @question_2, @question_3, @question_4, @question_5, @question_6, @question_7, @question_8, @question_9, @question_10, @question_11, @question_12, @question_13, @question_14, @question_15, @question_16, @question_17, @question_18, @question_19, @question_20, @question_21, @question_22, @question_23, @question_24]
    # @score = @all_scores.sum
    answer = params[:survey]
    all_answers = answer.values.map!{ |a| a.to_i }
    all_answers.sum
  end
end
