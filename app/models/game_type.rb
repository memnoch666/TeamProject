class GameType < ActiveRecord::Base
	has_many :game_moves
	has_many :games
end
