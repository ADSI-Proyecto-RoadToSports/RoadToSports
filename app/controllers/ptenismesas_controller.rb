class PtenismesasController < ApplicationController
  before_action :set_ptenismesa, only: [:show, :edit, :update, :destroy]

  # GET /ptenismesas
  # GET /ptenismesas.json
  def index
    @ptenismesas = Ptenismesa.search(params[:search], params[:page])
    @nombrepartidots = Nombrepartidot.all
  end

  # GET /ptenismesas/1
  # GET /ptenismesas/1.json
  def show
    @ptenismesa = Ptenismesa.find(params[:id])
  end

  # GET /ptenismesas/new
  def new
    @ptenismesa = Ptenismesa.new
  end

  # GET /ptenismesas/1/edit
  def edit
    @ptenismesa = Ptenismesa.find(params[:id])
  end

  # POST /ptenismesas
  # POST /ptenismesas.json
  def create
    @ptenismesa = Ptenismesa.new(ptenismesa_params)

    respond_to do |format|
      if @ptenismesa.save
        format.html { redirect_to ptenismesas_path }
        format.json { render :show, status: :created, location: @ptenismesa }
      else
        format.html { render :new }
        format.json { render json: @ptenismesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptenismesas/1
  # PATCH/PUT /ptenismesas/1.json
  def update
    respond_to do |format|
      if @ptenismesa.update(ptenismesa_params)
        format.html { redirect_to ptenismesas_path }
        format.json { render :show, status: :ok, location: @ptenismesa }
      else
        format.html { render :edit }
        format.json { render json: @ptenismesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptenismesas/1
  # DELETE /ptenismesas/1.json
  def destroy
    @ptenismesa.destroy
    respond_to do |format|
      format.html { redirect_to ptenismesas_url, notice: 'El encuentro ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ptenismesa
      @ptenismesa = Ptenismesa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ptenismesa_params
      params.require(:ptenismesa).permit(:participante1, :puntos1, :participante2, :puntos2, :tournament_id, :fecha, :estado, :user_id, :gano1, :gano2)
    end
end
