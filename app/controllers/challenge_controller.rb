class ChallengeController < ApplicationController
  before_filter :last_page

  def last_page
    session[:last_page] = request.env['HTTP_REFERRER']
  end

  def level
  	@easy = Question.find_by level_id: 1
  	@medium = Question.find_by level_id: 2
  	@hard = Question.find_by level_id: 3
  end

  def question
    @level = params[:level]
    @array = Question.where("level_id = ?", @level)
    @question = @array.sample
  end

  def answer
    @guess = params[:guess]
    @id = params[:question_id]
    @question = Question.find(params[:question_id])
    @robot = Robot.new
  end

  def solution
  end

  class Robot
    def play
      require 'lego_nxt'
      require 'ap'

      brick = LegoNXT::Brick.new

      [
        %w{E5 sixteenth},
        %w{E5 eighth},
        %w{E5 sixteenth},
        %w{-  sixteenth},
        %w{C5 sixteenth},
        %w{E5 eighth},
        %w{G5 quarter},
        %w{G4 quarter},

        %w{C5 eighth},
        %w{-  sixteenth},
        %w{G5 sixteenth},
        %w{-  eighth},
        %w{E5 eighth},
        %w{-  sixteenth},
        %w{A5 sixteenth},
        %w{-  sixteenth},
        %w{B5 sixteenth},
        %w{-  sixteenth},
        %w{Bb5 sixteenth},
        %w{A5 eighth}
      ].each do |note, duration|
        if '-' == note
          brick.wait duration
        else
          brick.play note, duration
        end

      end
    rescue

    end

  def easy
    require 'ap'
    require 'lego_nxt/low_level'

    brick = LegoNXT::LowLevel::connect

    brick.run_motor :all
    sleep 1
    brick.run_motor :a
    brick.stop_motor :b
    sleep 2
    brick.run_motor :all
    sleep 1
    brick.run_motor :b
    brick.stop_motor :a
    sleep 2
    brick.run_motor :all
    sleep 2
    brick.run_motor :b
    brick.stop_motor :a
    sleep 2
    brick.run_motor :all
    sleep 1
    brick.run_motor :a
    brick.stop_motor :b
    sleep 2
    brick.run_motor :all
    sleep 1
    brick.stop_motor :all
  rescue

  end


  def medium

    require 'lego_nxt/low_level'

    brick = LegoNXT::LowLevel::connect
    brick.run_motor :all
    sleep 2
    brick.run_motor :a
    brick.stop_motor :b
    sleep 2
    brick.run_motor :all
    sleep 1
    brick.run_motor :b
    brick.stop_motor :a
    sleep 2
    brick.run_motor :all
    sleep 4
    brick.run_motor :b
    brick.stop_motor :a
    sleep 2
    brick.run_motor :all
    sleep 2
    brick.run_motor :a
    brick.stop_motor :b
    sleep 2
    brick.run_motor :all
    sleep 2
    brick.stop_motor :all
  rescue

  end


  def hard

    require 'lego_nxt/low_level'

    brick = LegoNXT::LowLevel::connect

    brick.run_motor :all
    sleep 8
    brick.stop_motor :all
  rescue

  end
end
end
