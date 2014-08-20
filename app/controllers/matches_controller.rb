class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.search(params[:search], params[:page])
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
    @matches = Match.find(params[:id])
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
    @matches = Match.find(params[:id])
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)
    render action: :new unless @match.save
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    render action: :edit unless @match.update_attributes(match_params)
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:teamA, :teamB, :modalitie_id, :tournament_id, :score_id, :fchlgmatch_id)
    end
end
