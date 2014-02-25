class GameType < ActiveRecord::Base
	has_many :game_move
end
