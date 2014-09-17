class NombrepartidotsController < ApplicationController
  before_action :set_nombrepartidot, only: [:show, :edit, :update, :destroy]

  # GET /nombrepartidots
  # GET /nombrepartidots.json
  def index
    @nombrepartidots = Nombrepartidot.all
  end

  # GET /nombrepartidots/1
  # GET /nombrepartidots/1.json
  def show
  end

  # GET /nombrepartidots/new
  def new
    @nombrepartidot = Nombrepartidot.new
  end

  # GET /nombrepartidots/1/edit
  def edit
  end

  # POST /nombrepartidots
  # POST /nombrepartidots.json
  def create
    @nombrepartidot = Nombrepartidot.new(nombrepartidot_params)

    respond_to do |format|
      if @nombrepartidot.save
        format.html { redirect_to @nombrepartidot}
        format.json { render :show, status: :created, location: @nombrepartidot }
      else
        format.html { render :new }
        format.json { render json: @nombrepartidot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidots/1
  # PATCH/PUT /nombrepartidots/1.json
  def update
    respond_to do |format|
      if @nombrepartidot.update(nombrepartidot_params)
        format.html { redirect_to ptenismesas_path }
        format.json { render :show, status: :ok, location: @nombrepartidot }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartidot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidots/1
  # DELETE /nombrepartidots/1.json
  def destroy
    @nombrepartidot.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidots_url, notice: 'Nombrepartidot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartidot
      @nombrepartidot = Nombrepartidot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartidot_params
      params.require(:nombrepartidot).permit(:nombre)
    end
end
