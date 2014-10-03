class PmicrofutbolsController < ApplicationController
  before_action :set_pmicrofutbol, only: [:show, :edit, :update, :destroy]

  # GET /pmicrofutbols
  # GET /pmicrofutbols.json
  def index
    @pmicrofutbols = Pmicrofutbol.search(params[:search], params[:page])
    @nombrepartidoms = Nombrepartidom.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportmPdf.new(@pmicrofutbols)
        send_data pdf.render, filename: 'Partidos De Microfutbol',
        type: 'application/pdf',
        disposition: 'inline'
      end
    end
  end

  # GET /pmicrofutbols/1
  # GET /pmicrofutbols/1.json
  def show
    @pmicrofutbols = Pmicrofutbol.find(params[:id])
  end

  # GET /pmicrofutbols/new
  def new
    @pmicrofutbol = Pmicrofutbol.new
  end

  # GET /pmicrofutbols/1/edit
  def edit
    @pmicrofutbols = Pmicrofutbol.find(params[:id])
  end

  # POST /pmicrofutbols
  # POST /pmicrofutbols.json
  def create
    @pmicrofutbol = Pmicrofutbol.new(pmicrofutbol_params)

    respond_to do |format|
      if @pmicrofutbol.save
        format.html { redirect_to pmicrofutbols_path}
        format.json { render :show, status: :created, location: @pmicrofutbol }
      else
        format.html { render :new }
        format.json { render json: @pmicrofutbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmicrofutbols/1
  # PATCH/PUT /pmicrofutbols/1.json
  def update
    respond_to do |format|
      if @pmicrofutbol.update(pmicrofutbol_params)
        format.html { redirect_to pmicrofutbols_path}
        format.json { render :show, status: :ok, location: @pmicrofutbol }
      else
        format.html { render :edit }
        format.json { render json: @pmicrofutbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmicrofutbols/1
  # DELETE /pmicrofutbols/1.json
  def destroy
    @pmicrofutbol.destroy
    respond_to do |format|
      format.html { redirect_to pmicrofutbols_url, notice: 'El partido ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmicrofutbol
      @pmicrofutbol = Pmicrofutbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmicrofutbol_params
      params.require(:pmicrofutbol).permit(:equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id)
    end
end
