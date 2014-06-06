class TypeConfigurationsController < ApplicationController
  before_action :set_type_configuration, only: [:show, :edit, :update, :destroy]

  # GET /type_configurations
  # GET /type_configurations.json
  def index
    @type_configurations = TypeConfiguration.all
  end

  # GET /type_configurations/1
  # GET /type_configurations/1.json
  def show
  end

  # GET /type_configurations/new
  def new
    @type_configuration = TypeConfiguration.new
  end

  # GET /type_configurations/1/edit
  def edit
  end

  # POST /type_configurations
  # POST /type_configurations.json
  def create
    @type_configuration = TypeConfiguration.new(type_configuration_params)

    respond_to do |format|
      if @type_configuration.save
        format.html { redirect_to @type_configuration, notice: 'Type configuration was successfully created.' }
        format.json { render :show, status: :created, location: @type_configuration }
      else
        format.html { render :new }
        format.json { render json: @type_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_configurations/1
  # PATCH/PUT /type_configurations/1.json
  def update
    respond_to do |format|
      if @type_configuration.update(type_configuration_params)
        format.html { redirect_to @type_configuration, notice: 'Type configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_configuration }
      else
        format.html { render :edit }
        format.json { render json: @type_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_configurations/1
  # DELETE /type_configurations/1.json
  def destroy
    @type_configuration.destroy
    respond_to do |format|
      format.html { redirect_to type_configurations_url, notice: 'Type configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_configuration
      @type_configuration = TypeConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_configuration_params
      params.require(:type_configuration).permit(:name, :description)
    end
end
