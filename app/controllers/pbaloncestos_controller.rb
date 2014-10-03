class PbaloncestosController < ApplicationController
  before_action :set_pbaloncesto, only: [:show, :edit, :update, :destroy]


  # GET /pbaloncestos
  # GET /pbaloncestos.json
  def index
    @pbaloncestos = Pbaloncesto.search(params[:search], params[:page])
    @nombrepartidobs = Nombrepartidob.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportbPdf.new(@pbaloncestos)
        send_data pdf.render, filename: 'Partidos De Baloncesto',
        type: 'application/pdf',
        disposition: 'inline'
      end
    end
  end

  # GET /pbaloncestos/1
  # GET /pbaloncestos/1.json
  def show
     @pbaloncesto = Pbaloncesto.find(params[:id])
  end

  # GET /pbaloncestos/new
  def new
    @pbaloncesto = Pbaloncesto.new
  end

  # GET /pbaloncestos/1/edit
  def edit
    @pbaloncesto = Pbaloncesto.find(params[:id])
  end

  # POST /pbaloncestos
  # POST /pbaloncestos.json
  def create
    @pbaloncesto = Pbaloncesto.new(pbaloncesto_params)

    respond_to do |format|
      if @pbaloncesto.save
        format.html { redirect_to pbaloncestos_path }
        format.json { render :show, status: :created, location: @pbaloncesto }
      else
        format.html { render :new }
        format.json { render json: @pbaloncesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pbaloncestos/1
  # PATCH/PUT /pbaloncestos/1.json
  def update
    respond_to do |format|
      if @pbaloncesto.update(pbaloncesto_params)
        format.html { redirect_to pbaloncestos_path }
        format.json { render :show, status: :ok, location: @pbaloncesto }
      else
        format.html { render :edit }
        format.json { render json: @pbaloncesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pbaloncestos/1
  # DELETE /pbaloncestos/1.json
  def destroy
    @pbaloncesto.destroy
    respond_to do |format|
      format.html { redirect_to pbaloncestos_url, notice: 'El partido ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pbaloncesto
      @pbaloncesto = Pbaloncesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pbaloncesto_params
      params.require(:pbaloncesto).permit(:equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id)
    end
end
