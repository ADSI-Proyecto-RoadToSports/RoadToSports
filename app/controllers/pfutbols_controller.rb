class PfutbolsController < ApplicationController
  before_action :set_pfutbol, only: [:show, :edit, :update, :destroy]

  # GET /pfutbols
  # GET /pfutbols.json
  def index
    @pfutbols = Pfutbol.all
  end

  # GET /pfutbols/1
  # GET /pfutbols/1.json
  def show
  end

  # GET /pfutbols/new
  def new
    @pfutbol = Pfutbol.new
  end

  # GET /pfutbols/1/edit
  def edit
  end

  # POST /pfutbols
  # POST /pfutbols.json
  def create
    @pfutbol = Pfutbol.new(pfutbol_params)

    respond_to do |format|
      if @pfutbol.save
        format.html { redirect_to @pfutbol, notice: 'Pfutbol was successfully created.' }
        format.json { render :show, status: :created, location: @pfutbol }
      else
        format.html { render :new }
        format.json { render json: @pfutbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pfutbols/1
  # PATCH/PUT /pfutbols/1.json
  def update
    respond_to do |format|
      if @pfutbol.update(pfutbol_params)
        format.html { redirect_to @pfutbol, notice: 'Pfutbol was successfully updated.' }
        format.json { render :show, status: :ok, location: @pfutbol }
      else
        format.html { render :edit }
        format.json { render json: @pfutbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pfutbols/1
  # DELETE /pfutbols/1.json
  def destroy
    @pfutbol.destroy
    respond_to do |format|
      format.html { redirect_to pfutbols_url, notice: 'Pfutbol was successfully destroyed.' }
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
      params.require(:pfutbol).permit(:equipo1, :puntos2, :gano1, :equipo2, :puntos2, :gano2, :fecha, :estado, :user_id, :tournament_id)
    end
end
