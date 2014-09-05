class NombrepartidosController < ApplicationController
  before_action :set_nombrepartido, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource
  # GET /nombrepartidos
  # GET /nombrepartidos.json
  def index
    @nombrepartidos = Nombrepartido.all
  end

  # GET /nombrepartidos/1
  # GET /nombrepartidos/1.json
  def show
  end

  # GET /nombrepartidos/new
  def new
    @nombrepartido = Nombrepartido.new
  end

  # GET /nombrepartidos/1/edit
  def edit
  end

  # POST /nombrepartidos
  # POST /nombrepartidos.json
  def create
    @nombrepartido = Nombrepartido.new(nombrepartido_params)

    respond_to do |format|
      if @nombrepartido.save
        format.html { redirect_to @nombrepartido, notice: 'Nombrepartido was successfully created.' }
        format.json { render :show, status: :created, location: @nombrepartido }
      else
        format.html { render :new }
        format.json { render json: @nombrepartido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidos/1
  # PATCH/PUT /nombrepartidos/1.json
  def update
    respond_to do |format|
      if @nombrepartido.update(nombrepartido_params)
        format.html { redirect_to @nombrepartido, notice: 'Nombrepartido was successfully updated.' }
        format.json { render :show, status: :ok, location: @nombrepartido }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidos/1
  # DELETE /nombrepartidos/1.json
  def destroy
    @nombrepartido.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidos_url, notice: 'Nombrepartido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartido
      @nombrepartido = Nombrepartido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartido_params
      params.require(:nombrepartido).permit(:nombre)
    end
end
