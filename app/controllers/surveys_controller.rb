class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.save
    if @survey.save
      redirect_to survey_path
    else
      render :new
    end
  end

  def show
    score
    puts score
    if score >= 0 && score <= 5
      puts "No depression"
    elsif score > 5 && score <= 10
      puts "Normal but unhappy"
    elsif score > 10 && score <= 25
      puts "Mild Depression"
    elsif score > 25 && score <= 50
      puts "Severe Depression"
    elsif score > 50 && score <= 100
      puts "Extreme Depression"
    end
  end

  private

  def score
    survey_params
    @all_scores = [@question_0, @question_1, @question_2, @question_3, @question_4, @question_5, @question_6, @question_7, @question_8, @question_9, @question_10, @question_11, @question_12, @question_13, @question_14, @question_15, @question_16, @question_17, @question_18, @question_19, @question_20, @question_21, @question_22, @question_23, @question_24]
    @score = @all_scores.sum
  end

  def survey_params
    params.require(:survey).permit(:question_0, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, :question_8, :question_9, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_18, :question_19, :question_20, :question_21, :question_22, :question_23, :question_24)
  end
end
