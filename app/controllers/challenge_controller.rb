class ChallengeController < ApplicationController
  def level
  	@easy = Question.find_by level: 1
  	@medium = Question.find_by level: 2
  	@hard = Question.find_by level: 3
  end

  def question
  end

  def answer
  end

  def solution
  end
end
