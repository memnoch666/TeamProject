class GameDetailsController < ApplicationController
  before_action :set_game_detail, only: [:show, :edit, :update, :destroy]

  # GET /game_details
  # GET /game_details.json
  def index
    @game_details = GameDetail.all
  end

  # GET /game_details/1
  # GET /game_details/1.json
  def show
  end

  # GET /game_details/new
  def new
    @game_detail = GameDetail.new
  end

  # GET /game_details/1/edit
  def edit
  end

  # POST /game_details
  # POST /game_details.json
  def create
    @game_detail = GameDetail.new(game_detail_params)

    respond_to do |format|
      if @game_detail.save
        format.html { redirect_to @game_detail, notice: 'Game detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_details/1
  # PATCH/PUT /game_details/1.json
  def update
    respond_to do |format|
      if @game_detail.update(game_detail_params)
        format.html { redirect_to @game_detail, notice: 'Game detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_details/1
  # DELETE /game_details/1.json
  def destroy
    @game_detail.destroy
    respond_to do |format|
      format.html { redirect_to game_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_detail
      @game_detail = GameDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_detail_params
      params.require(:game_detail).permit(:game_id, :question_id, :status_id)
    end
end
