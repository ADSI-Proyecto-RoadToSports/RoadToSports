class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.search(params[:search], params[:page])
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
    @scores = Score.find(params[:id])
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
    @scores = Score.find(params[:id])
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(score_params)
    render action: :new unless @score.save
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    render action: :edit unless @score.update_attributes(score_params)
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:description, :datescore, :modalitie_id, :team_id)
    end
end
