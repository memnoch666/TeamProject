class GameType < ActiveRecord::Base
	has_many :game_moves
end
