class TypeInformationsController < ApplicationController
  before_action :set_type_information, only: [:show, :edit, :update, :destroy]

  # GET /type_informations
  # GET /type_informations.json
  def index
    @type_informations = TypeInformation.all
  end

  # GET /type_informations/1
  # GET /type_informations/1.json
  def show
  end

  # GET /type_informations/new
  def new
    @type_information = TypeInformation.new
  end

  # GET /type_informations/1/edit
  def edit
  end

  # POST /type_informations
  # POST /type_informations.json
  def create
    @type_information = TypeInformation.new(type_information_params)

    respond_to do |format|
      if @type_information.save
        format.html { redirect_to @type_information, notice: 'Type information was successfully created.' }
        format.json { render :show, status: :created, location: @type_information }
      else
        format.html { render :new }
        format.json { render json: @type_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_informations/1
  # PATCH/PUT /type_informations/1.json
  def update
    respond_to do |format|
      if @type_information.update(type_information_params)
        format.html { redirect_to @type_information, notice: 'Type information was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_information }
      else
        format.html { render :edit }
        format.json { render json: @type_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_informations/1
  # DELETE /type_informations/1.json
  def destroy
    @type_information.destroy
    respond_to do |format|
      format.html { redirect_to type_informations_url, notice: 'Type information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_information
      @type_information = TypeInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_information_params
      params.require(:type_information).permit(:name, :description)
    end
end
