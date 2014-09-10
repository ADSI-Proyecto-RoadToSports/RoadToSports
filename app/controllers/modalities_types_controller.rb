class ModalitiesTypesController < ApplicationController
  before_action :set_modalities_type, only: [:show, :edit, :update, :destroy]

  # GET /modalities_types
  # GET /modalities_types.json
  def index
    @modalities_types = ModalitiesType.all
  end

  # GET /modalities_types/1
  # GET /modalities_types/1.json
  def show
  end

  # GET /modalities_types/new
  def new
    @modalities_type = ModalitiesType.new
  end

  # GET /modalities_types/1/edit
  def edit
  end

  # POST /modalities_types
  # POST /modalities_types.json
  def create
    @modalities_type = ModalitiesType.new(modalities_type_params)

    respond_to do |format|
      if @modalities_type.save
        format.html { redirect_to @modalities_type }
        format.json { render :show, status: :created, location: @modalities_type }
      else
        format.html { render :new }
        format.json { render json: @modalities_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modalities_types/1
  # PATCH/PUT /modalities_types/1.json
  def update
    respond_to do |format|
      if @modalities_type.update(modalities_type_params)
        format.html { redirect_to @modalities_type }
        format.json { render :show, status: :ok, location: @modalities_type }
      else
        format.html { render :edit }
        format.json { render json: @modalities_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modalities_types/1
  # DELETE /modalities_types/1.json
  def destroy
    @modalities_type.destroy
    respond_to do |format|
      format.html { redirect_to modalities_types_url, notice: 'El partido ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modalities_type
      @modalities_type = ModalitiesType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modalities_type_params
      params.require(:modalities_type).permit(:name, :description)
    end
end
