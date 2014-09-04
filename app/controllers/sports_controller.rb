class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /sports
  # GET /sports.json
  def index
    @sports = Sport.search(params[:search], params[:page])
  end

  # GET /sports/1
  # GET /sports/1.json
  def show

    @sports = Sport.find(params[:id])
  end

  # GET /sports/new
  def new
    @sport = Sport.new
  end

  # GET /sports/1/edit
  def edit
    @sports = Sport.find(params[:id])
  end

  # POST /sports
  # POST /sports.json
  def create
    @sport = Sport.new(sport_params)
    render action: :new unless @sport.save
  end

  # PATCH/PUT /sports/1
  # PATCH/PUT /sports/1.json
  def update
    render action: :edit unless @sport.update_attributes(sport_params)
  end

  # DELETE /sports/1
  # DELETE /sports/1.json
  def destroy
    @sport.destroy
    respond_to do |format|
      format.html { redirect_to sports_url, notice: 'Sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_params
      params.require(:sport).permit(:name, :description, :modalitiestype_id)
    end
end
