class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :game_type
end
