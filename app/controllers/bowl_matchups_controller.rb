# frozen_string_literal: true

class BowlMatchupsController < ApplicationController
  before_action :set_bowl_matchup, only: %i[show edit update destroy]

  # GET /bowl_matchups
  # GET /bowl_matchups.json
  def index
    @bowl_matchups = BowlMatchup.all
  end

  # GET /bowl_matchups/1
  # GET /bowl_matchups/1.json
  def show; end

  # GET /bowl_matchups/new
  def new
    @bowl_matchup = BowlMatchup.new
  end

  # GET /bowl_matchups/1/edit
  def edit; end

  # POST /bowl_matchups
  # POST /bowl_matchups.json
  def create
    @bowl_matchup = BowlMatchup.new(bowl_matchup_params)

    respond_to do |format|
      if @bowl_matchup.save
        format.html { redirect_to @bowl_matchup, notice: 'Bowl matchup was successfully created.' }
        format.json { render :show, status: :created, location: @bowl_matchup }
      else
        format.html { render :new }
        format.json { render json: @bowl_matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowl_matchups/1
  # PATCH/PUT /bowl_matchups/1.json
  def update
    respond_to do |format|
      if @bowl_matchup.update(bowl_matchup_params)
        format.html { redirect_to @bowl_matchup, notice: 'Bowl matchup was successfully updated.' }
        format.json { render :show, status: :ok, location: @bowl_matchup }
      else
        format.html { render :edit }
        format.json { render json: @bowl_matchup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowl_matchups/1
  # DELETE /bowl_matchups/1.json
  def destroy
    @bowl_matchup.destroy
    respond_to do |format|
      format.html { redirect_to bowl_matchups_url, notice: 'Bowl matchup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bowl_matchup
    @bowl_matchup = BowlMatchup.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bowl_matchup_params
    params.require(:bowl_matchup).permit(:year, :bowl_game_id, :away_team_id, :home_team_id, :home_team_point_spread)
  end
end
