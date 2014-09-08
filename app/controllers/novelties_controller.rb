class NoveltiesController < ApplicationController
  before_action :set_novelty, only: [:show, :edit, :update, :destroy]

  # comments_controller.rb possibility

  # GET /novelties
  # GET /novelties.json
  def index
    @novelties = Novelty.search(params[:search], params[:page])
  end

  # GET /novelties/1
  # GET /novelties/1.json
  def show
    @novelty = Novelty.find(params[:id])
  end

  # GET /novelties/new
  def new
    @novelty = Novelty.new
  end

  # GET /novelties/1/edit
  def edit
    @novelty = Novelty.find(params[:id])
  end

  # POST /novelties
  # POST /novelties.json
  def create
    @novelty = Novelty.new(novelty_params)
    render action: :new unless @novelty.save
  end

  # PATCH/PUT /novelties/1
  # PATCH/PUT /novelties/1.json
  def update
    render action: :edit unless @novelty.update_attributes(novelty_params)
  end

  # DELETE /novelties/1
  # DELETE /novelties/1.json
  def destroy
    @novelty.destroy
    respond_to do |format|
      format.html { redirect_to novelties_url, notice: 'La noticia/novedad ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novelty
      @novelty = Novelty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novelty_params
      params.require(:novelty).permit(:name, :description)
    end
end
