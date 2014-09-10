class NombrepartidodsController < ApplicationController
  before_action :set_nombrepartidod, only: [:show, :edit, :update, :destroy]

  # GET /nombrepartidods
  # GET /nombrepartidods.json
  def index
    @nombrepartidods = Nombrepartidod.all
  end

  # GET /nombrepartidods/1
  # GET /nombrepartidods/1.json
  def show
  end

  # GET /nombrepartidods/new
  def new
    @nombrepartidod = Nombrepartidod.new
  end

  # GET /nombrepartidods/1/edit
  def edit
  end

  # POST /nombrepartidods
  # POST /nombrepartidods.json
  def create
    @nombrepartidod = Nombrepartidod.new(nombrepartidod_params)

    respond_to do |format|
      if @nombrepartidod.save
        format.html { redirect_to @nombrepartidod, notice: 'Nombrepartidod was successfully created.' }
        format.json { render :show, status: :created, location: @nombrepartidod }
      else
        format.html { render :new }
        format.json { render json: @nombrepartidod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidods/1
  # PATCH/PUT /nombrepartidods/1.json
  def update
    respond_to do |format|
      if @nombrepartidod.update(nombrepartidod_params)
        format.html { redirect_to pajedrezs_path }
        format.json { render :show, status: :ok, location: @nombrepartidod }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartidod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidods/1
  # DELETE /nombrepartidods/1.json
  def destroy
    @nombrepartidod.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidods_url, notice: 'Nombrepartidod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartidod
      @nombrepartidod = Nombrepartidod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartidod_params
      params.require(:nombrepartidod).permit(:nombre)
    end
end
