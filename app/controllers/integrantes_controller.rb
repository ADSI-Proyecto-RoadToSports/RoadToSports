class IntegrantesController < ApplicationController
  before_action :set_integrante, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /integrantes
  # GET /integrantes.json
  def index
      @integrantes = @team.integrantes.all
  end

  # GET /integrantes/1
  # GET /integrantes/1.json
  def show
  end

  # GET /integrantes/new
  def new
    @integrante = Integrante.new
  end

  # GET /integrantes/1/edit
  def edit
  end

  # POST /integrantes
  # POST /integrantes.json
  def create
    @integrante = Integrante.new(integrante_params)
    @integrante.team_id = @team.id
    respond_to do |format|
      if @integrante.save
        format.html { redirect_to team_integrantes_path(@team), notice: 'Integrante was successfully created.' }
        format.json { render :show, status: :created, location: @integrante }
      else
        format.html { render :new }
        format.json { render json: @integrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /integrantes/1
  # PATCH/PUT /integrantes/1.json
  def update
    respond_to do |format|
      if @integrante.update(integrante_params)
        format.html { redirect_to team_integrantes_path(@team), notice: 'Integrante was successfully updated.' }
        format.json { render :show, status: :ok, location: @integrante }
      else
        format.html { render :edit }
        format.json { render json: @integrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrantes/1
  # DELETE /integrantes/1.json
  def destroy
    @integrante.destroy
    respond_to do |format|
      format.html { redirect_to team_integrantes_url(@team), notice: 'Integrante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrante
        @team = Team.find(params[:team_id]) 
        @integrante = Integrante.find(params[:id]) if params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def integrante_params
      params.require(:integrante).permit(:nombre, :documenttype_id, :documento, :ficha, :team_id, :limite, :lesion, :TRoja ,:TAmarilla)
    end
end
