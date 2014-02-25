class Question < ActiveRecord::Base
  belongs_to :game_type
  belongs_to :game_move
  belongs_to :level
end
