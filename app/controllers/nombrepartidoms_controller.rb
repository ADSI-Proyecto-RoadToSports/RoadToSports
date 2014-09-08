class NombrepartidomsController < ApplicationController
  before_action :set_nombrepartidom, only: [:show, :edit, :update, :destroy]

  # GET /nombrepartidoms
  # GET /nombrepartidoms.json
  def index
    @nombrepartidoms = Nombrepartidom.all
  end

  # GET /nombrepartidoms/1
  # GET /nombrepartidoms/1.json
  def show
  end

  # GET /nombrepartidoms/new
  def new
    @nombrepartidom = Nombrepartidom.new
  end

  # GET /nombrepartidoms/1/edit
  def edit
  end

  # POST /nombrepartidoms
  # POST /nombrepartidoms.json
  def create
    @nombrepartidom = Nombrepartidom.new(nombrepartidom_params)

    respond_to do |format|
      if @nombrepartidom.save
        format.html { redirect_to @nombrepartidom, notice: 'Nombrepartidom was successfully created.' }
        format.json { render :show, status: :created, location: @nombrepartidom }
      else
        format.html { render :new }
        format.json { render json: @nombrepartidom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidoms/1
  # PATCH/PUT /nombrepartidoms/1.json
  def update
    respond_to do |format|
      if @nombrepartidom.update(nombrepartidom_params)
        format.html { redirect_to pmicrofutbols_path }
        format.json { render :show, status: :ok, location: @nombrepartidom }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartidom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidoms/1
  # DELETE /nombrepartidoms/1.json
  def destroy
    @nombrepartidom.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidoms_url, notice: 'Nombrepartidom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartidom
      @nombrepartidom = Nombrepartidom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartidom_params
      params.require(:nombrepartidom).permit(:nombre)
    end
end
