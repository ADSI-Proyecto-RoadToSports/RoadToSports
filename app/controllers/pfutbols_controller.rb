class PfutbolsController < ApplicationController
  before_action :set_pfutbol, only: [:show, :edit, :update, :destroy]

  # GET /pfutbols.json
  def index
    @pfutbols = Pfutbol.search(params[:search], params[:page])
    @nombrepartidos = Nombrepartido.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@pfutbols)
        send_data pdf.render, filename: 'pfutbols_#{@pfutbols_id}',
        type: 'application/pdf',
        disposition: 'inline'
      end
    end
  end

  # GET /pfutbols/1
  # GET /pfutbols/1.json
  def show
    @pfutbol = Pfutbol.find(params[:id])
  end

  # GET /pfutbols/new
  def new
    @pfutbol = Pfutbol.new
  end

  # GET /pfutbols/1/edit
  def edit
    @pfutbol = Pfutbol.find(params[:id])
  end

  # POST /pfutbols
  # POST /pfutbols.json
  def create
    @pfutbol = Pfutbol.new(pfutbol_params)
    render action: :new unless @pfutbol.save
  end

  # PATCH/PUT /pfutbols/1
  # PATCH/PUT /pfutbols/1.json
  def update
    render action: :edit unless @pfutbol.update_attributes(pfutbol_params)
  end

  # DELETE /pfutbols/1
  # DELETE /pfutbols/1.json
  def destroy
    @pfutbol.destroy
    respond_to do |format|
      format.html { redirect_to pfutbols_url, notice: 'El partido ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pfutbol
      @pfutbol = Pfutbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pfutbol_params
      params.require(:pfutbol).permit(:equipo1, :puntos1, :equipo2, :puntos2, :fecha, :estado, :user_id, :tournament_id, :puntoso1, :puntoso2)
    end
end
