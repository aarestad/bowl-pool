# frozen_string_literal: true

class BowlGamesController < ApplicationController
  before_action :set_bowl_game, only: %i[show edit update destroy]

  # GET /bowl_games
  # GET /bowl_games.json
  def index
    @bowl_games = BowlGame.all
  end

  # GET /bowl_games/1
  # GET /bowl_games/1.json
  def show; end

  # GET /bowl_games/new
  def new
    @bowl_game = BowlGame.new
  end

  # GET /bowl_games/1/edit
  def edit; end

  # POST /bowl_games
  # POST /bowl_games.json
  def create
    @bowl_game = BowlGame.new(bowl_game_params)

    respond_to do |format|
      if @bowl_game.save
        format.html { redirect_to @bowl_game, notice: 'Bowl game was successfully created.' }
        format.json { render :show, status: :created, location: @bowl_game }
      else
        format.html { render :new }
        format.json { render json: @bowl_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowl_games/1
  # PATCH/PUT /bowl_games/1.json
  def update
    respond_to do |format|
      if @bowl_game.update(bowl_game_params)
        format.html { redirect_to @bowl_game, notice: 'Bowl game was successfully updated.' }
        format.json { render :show, status: :ok, location: @bowl_game }
      else
        format.html { render :edit }
        format.json { render json: @bowl_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowl_games/1
  # DELETE /bowl_games/1.json
  def destroy
    @bowl_game.destroy
    respond_to do |format|
      format.html { redirect_to bowl_games_url, notice: 'Bowl game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bowl_game
    @bowl_game = BowlGame.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bowl_game_params
    params.require(:bowl_game).permit(:name)
  end
end
