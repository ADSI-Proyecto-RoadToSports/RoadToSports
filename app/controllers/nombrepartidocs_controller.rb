class NombrepartidocsController < ApplicationController
  before_action :set_nombrepartidoc, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource
  # GET /nombrepartidocs
  # GET /nombrepartidocs.json
  def index
    @nombrepartidocs = Nombrepartidoc.all
  end

  # GET /nombrepartidocs/1
  # GET /nombrepartidocs/1.json
  def show
  end

  # GET /nombrepartidocs/new
  def new
    @nombrepartidoc = Nombrepartidoc.new
  end

  # GET /nombrepartidocs/1/edit
  def edit
  end

  # POST /nombrepartidocs
  # POST /nombrepartidocs.json
  def create
    @nombrepartidoc = Nombrepartidoc.new(nombrepartidoc_params)

    respond_to do |format|
      if @nombrepartidoc.save
        format.html { redirect_to @nombrepartidoc, notice: 'Nombrepartidoc was successfully created.' }
        format.json { render :show, status: :created, location: @nombrepartidoc }
      else
        format.html { render :new }
        format.json { render json: @nombrepartidoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidocs/1
  # PATCH/PUT /nombrepartidocs/1.json
  def update
    respond_to do |format|
      if @nombrepartidoc.update(nombrepartidoc_params)
        format.html { redirect_to pvoleibols_path}
        format.json { render :show, status: :ok, location: @nombrepartidoc }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartidoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidocs/1
  # DELETE /nombrepartidocs/1.json
  def destroy
    @nombrepartidoc.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidocs_url, notice: 'Nombrepartidoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartidoc
      @nombrepartidoc = Nombrepartidoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartidoc_params
      params.require(:nombrepartidoc).permit(:nombre)
    end
end
