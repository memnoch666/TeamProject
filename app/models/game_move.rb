class GameMove < ActiveRecord::Base
	belongs_to :game_type, :foreign_key => 'game_type_id'
end
