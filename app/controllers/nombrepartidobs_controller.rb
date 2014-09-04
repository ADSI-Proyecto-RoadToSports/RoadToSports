class NombrepartidobsController < ApplicationController
  before_action :set_nombrepartidob, only: [:show, :edit, :update, :destroy]

  # GET /nombrepartidobs
  # GET /nombrepartidobs.json
  def index
    @nombrepartidobs = Nombrepartidob.all
  end

  # GET /nombrepartidobs/1
  # GET /nombrepartidobs/1.json
  def show
  end

  # GET /nombrepartidobs/new
  def new
    @nombrepartidob = Nombrepartidob.new
  end

  # GET /nombrepartidobs/1/edit
  def edit
  end

  # POST /nombrepartidobs
  # POST /nombrepartidobs.json
  def create
    @nombrepartidob = Nombrepartidob.new(nombrepartidob_params)

    respond_to do |format|
      if @nombrepartidob.save
        format.html { redirect_to @nombrepartidob, notice: 'Nombrepartidob was successfully created.' }
        format.json { render :show, status: :created, location: @nombrepartidob }
      else
        format.html { render :new }
        format.json { render json: @nombrepartidob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombrepartidobs/1
  # PATCH/PUT /nombrepartidobs/1.json
  def update
    respond_to do |format|
      if @nombrepartidob.update(nombrepartidob_params)
        format.html { redirect_to @nombrepartidob, notice: 'Nombrepartidob was successfully updated.' }
        format.json { render :show, status: :ok, location: @nombrepartidob }
      else
        format.html { render :edit }
        format.json { render json: @nombrepartidob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombrepartidobs/1
  # DELETE /nombrepartidobs/1.json
  def destroy
    @nombrepartidob.destroy
    respond_to do |format|
      format.html { redirect_to nombrepartidobs_url, notice: 'Nombrepartidob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombrepartidob
      @nombrepartidob = Nombrepartidob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nombrepartidob_params
      params.require(:nombrepartidob).permit(:nombre)
    end
end
