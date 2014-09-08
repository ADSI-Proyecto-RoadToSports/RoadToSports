class PmicrofutbolsController < ApplicationController
  before_action :set_pmicrofutbol, only: [:show, :edit, :update, :destroy]

  # GET /pmicrofutbols
  # GET /pmicrofutbols.json
  def index
    @pmicrofutbols = Pmicrofutbol.all
  end

  # GET /pmicrofutbols/1
  # GET /pmicrofutbols/1.json
  def show
  end

  # GET /pmicrofutbols/new
  def new
    @pmicrofutbol = Pmicrofutbol.new
  end

  # GET /pmicrofutbols/1/edit
  def edit
  end

  # POST /pmicrofutbols
  # POST /pmicrofutbols.json
  def create
    @pmicrofutbol = Pmicrofutbol.new(pmicrofutbol_params)

    respond_to do |format|
      if @pmicrofutbol.save
        format.html { redirect_to @pmicrofutbol, notice: 'Pmicrofutbol was successfully created.' }
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
        format.html { redirect_to @pmicrofutbol, notice: 'Pmicrofutbol was successfully updated.' }
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
      format.html { redirect_to pmicrofutbols_url, notice: 'Pmicrofutbol was successfully destroyed.' }
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
