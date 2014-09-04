class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.search(params[:search], params[:page])
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @tournaments = Tournament.find(params[:id])
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

  # GET /tournaments/1/edit
  def edit
    @tournaments = Tournament.find(params[:id])
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
       @tournament = Tournament.new(tournament_params)
       render action: :new unless @tournament.save
  end

  def update
        render action: :edit unless @tournament.update_attributes(tournament_params)
  end

  def destroy
       @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'El torneo ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tournament
       @tournament = Tournament.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:name, :modalitiestype_id, :sport_id, :state, :date, :typetournament_id)
    end
end
