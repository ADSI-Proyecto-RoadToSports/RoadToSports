class FchLgMatchesController < ApplicationController
  before_action :set_fch_lg_match, only: [:show, :edit, :update, :destroy]

  # GET /fch_lg_matches
  # GET /fch_lg_matches.json
  def index
    @fch_lg_matches = FchLgMatch.all
  end

  # GET /fch_lg_matches/1
  # GET /fch_lg_matches/1.json
  def show
  end

  # GET /fch_lg_matches/new
  def new
    @fch_lg_match = FchLgMatch.new
  end

  # GET /fch_lg_matches/1/edit
  def edit
  end

  # POST /fch_lg_matches
  # POST /fch_lg_matches.json
  def create
    @fch_lg_match = FchLgMatch.new(fch_lg_match_params)

    respond_to do |format|
      if @fch_lg_match.save
        format.html { redirect_to @fch_lg_match, notice: 'Fch lg match was successfully created.' }
        format.json { render :show, status: :created, location: @fch_lg_match }
      else
        format.html { render :new }
        format.json { render json: @fch_lg_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fch_lg_matches/1
  # PATCH/PUT /fch_lg_matches/1.json
  def update
    respond_to do |format|
      if @fch_lg_match.update(fch_lg_match_params)
        format.html { redirect_to @fch_lg_match, notice: 'Fch lg match was successfully updated.' }
        format.json { render :show, status: :ok, location: @fch_lg_match }
      else
        format.html { render :edit }
        format.json { render json: @fch_lg_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fch_lg_matches/1
  # DELETE /fch_lg_matches/1.json
  def destroy
    @fch_lg_match.destroy
    respond_to do |format|
      format.html { redirect_to fch_lg_matches_url, notice: 'Fch lg match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fch_lg_match
      @fch_lg_match = FchLgMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fch_lg_match_params
      params.require(:fch_lg_match).permit(:startdate, :endingdate, :place, :description, :team, :tournament_id)
    end
end
