class TypeTournamentsController < ApplicationController
  before_action :set_type_tournament, only: [:show, :edit, :update, :destroy]

  # GET /type_tournaments
  # GET /type_tournaments.json
  def index
    @type_tournaments = TypeTournament.all
  end

  # GET /type_tournaments/1
  # GET /type_tournaments/1.json
  def show
  end

  # GET /type_tournaments/new
  def new
    @type_tournament = TypeTournament.new
  end

  # GET /type_tournaments/1/edit
  def edit
  end

  # POST /type_tournaments
  # POST /type_tournaments.json
  def create
    @type_tournament = TypeTournament.new(type_tournament_params)

    respond_to do |format|
      if @type_tournament.save
        format.html { redirect_to @type_tournament }
        format.json { render :show, status: :created, location: @type_tournament }
      else
        format.html { render :new }
        format.json { render json: @type_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_tournaments/1
  # PATCH/PUT /type_tournaments/1.json
  def update
    respond_to do |format|
      if @type_tournament.update(type_tournament_params)
        format.html { redirect_to @type_tournament}
        format.json { render :show, status: :ok, location: @type_tournament }
      else
        format.html { render :edit }
        format.json { render json: @type_tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_tournaments/1
  # DELETE /type_tournaments/1.json
  def destroy
    @type_tournament.destroy
    respond_to do |format|
      format.html { redirect_to type_tournaments_url, notice: 'El partido ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_tournament
      @type_tournament = TypeTournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_tournament_params
      params.require(:type_tournament).permit(:name, :description)
    end
end
