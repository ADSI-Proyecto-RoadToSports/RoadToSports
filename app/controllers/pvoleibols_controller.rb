class PvoleibolsController < ApplicationController
  before_action :set_pvoleibol, only: [:show, :edit, :update, :destroy]

  
  # GET /pvoleibols
  # GET /pvoleibols.json
  def index
    @pvoleibols = Pvoleibol.search(params[:search], params[:page])
    @nombrepartidocs = Nombrepartidoc.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportvPdf.new(@pvoleibols)
        send_data pdf.render, filename: 'pvoleibols_#{@pvoleibols_id}',
        type: 'application/pdf',
        disposition: 'inline'
      end
    end
  end

  # GET /pvoleibols/1
  # GET /pvoleibols/1.json
  def show
    @pvoleibols = Pvoleibol.find(params[:id])
  end

  # GET /pvoleibols/new
  def new
    @pvoleibol = Pvoleibol.new
  end

  # GET /pvoleibols/1/edit
  def edit
    @pvoleibols = Pvoleibol.find(params[:id])
  end

  # POST /pvoleibols
  # POST /pvoleibols.json
  def create
    @pvoleibol = Pvoleibol.new(pvoleibol_params)

    respond_to do |format|
      if @pvoleibol.save
        format.html { redirect_to pvoleibols_path, notice: 'Pvoleibol was successfully created.' }
        format.json { render :show, status: :created, location: @pvoleibol }
      else
        format.html { render :new }
        format.json { render json: @pvoleibol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pvoleibols/1
  # PATCH/PUT /pvoleibols/1.json
  def update
    respond_to do |format|
      if @pvoleibol.update(pvoleibol_params)
        format.html { redirect_to pvoleibols_path, notice: 'Pvoleibol was successfully updated.' }
        format.json { render :show, status: :ok, location: @pvoleibol }
      else
        format.html { render :edit }
        format.json { render json: @pvoleibol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pvoleibols/1
  # DELETE /pvoleibols/1.json
  def destroy
    @pvoleibol.destroy
    respond_to do |format|
      format.html { redirect_to pvoleibols_url, notice: 'Pvoleibol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pvoleibol
      @pvoleibol = Pvoleibol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pvoleibol_params
      params.require(:pvoleibol).permit(:equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id)
    end
end
