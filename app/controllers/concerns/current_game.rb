module CurrentGame
  extend ActiveSupport::Concern

  private

    def set_game 
      @game = Game.find(session[:game_id])
    rescue ActiveRecord::RecordNotFound
      @game = Game.create
      session[:game_id] = @game.id
    end
end