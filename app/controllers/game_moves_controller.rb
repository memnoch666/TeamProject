class GameMovesController < ApplicationController
  before_action :set_game_move, only: [:show, :edit, :update, :destroy]

  # GET /game_moves
  # GET /game_moves.json
  def index
    @game_moves = GameMove.all
  end

  # GET /game_moves/1
  # GET /game_moves/1.json
  def show
  end

  # GET /game_moves/new
  def new
    @game_move = GameMove.new
  end

  # GET /game_moves/1/edit
  def edit
  end

  # POST /game_moves
  # POST /game_moves.json
  def create
    @game_move = GameMove.new(game_move_params)

    respond_to do |format|
      if @game_move.save
        format.html { redirect_to @game_move, notice: 'Game move was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_move }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_moves/1
  # PATCH/PUT /game_moves/1.json
  def update
    respond_to do |format|
      if @game_move.update(game_move_params)
        format.html { redirect_to @game_move, notice: 'Game move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_moves/1
  # DELETE /game_moves/1.json
  def destroy
    @game_move.destroy
    respond_to do |format|
      format.html { redirect_to game_moves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_move
      @game_move = GameMove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_move_params
      params.require(:game_move).permit(:game_type_id, :description, :code)
    end
end
