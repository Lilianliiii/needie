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
    answer = params[:survey]
    all_answers = answer.values.map!{ |a| a.to_i }
    all_answers.sum
  end
end
