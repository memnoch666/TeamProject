class ChallengeController < ApplicationController
  def level
  	@easy = Question.find_by level_id: 1
  	@medium = Question.find_by level_id: 2
  	@hard = Question.find_by level_id: 3
  end

  def question
    @max = Question.count
    @level = params[:level]
    @array = Question.where("level_id = ?", @level)

    @question = @array.sample

  end

  def answer
    @guess = params[:guess]
    @question = Question.find(params[:question_id])
  end

  def solution
  end
end
