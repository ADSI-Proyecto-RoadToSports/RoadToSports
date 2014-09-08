class PajedrezsController < ApplicationController
  before_action :set_pajedrez, only: [:show, :edit, :update, :destroy]

  # GET /pajedrezs
  # GET /pajedrezs.json
  def index
    @pajedrezs = Pajedrez.search(params[:search], params[:page])
    @nombrepartidods = Nombrepartidod.all
  end

  # GET /pajedrezs/1
  # GET /pajedrezs/1.json
  def show
    @pajedrez = Pajedrez.find(params[:id])
  end

  # GET /pajedrezs/new
  def new
    @pajedrez = Pajedrez.new
  end

  # GET /pajedrezs/1/edit
  def edit
    @pajedrez = Pajedrez.find(params[:id])
  end

  # POST /pajedrezs
  # POST /pajedrezs.json
  def create
    @pajedrez = Pajedrez.new(pajedrez_params)

    respond_to do |format|
      if @pajedrez.save
        format.html { redirect_to pajedrezs_path, notice: 'Pajedrez was successfully created.' }
        format.json { render :show, status: :created, location: @pajedrez }
      else
        format.html { render :new }
        format.json { render json: @pajedrez.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pajedrezs/1
  # PATCH/PUT /pajedrezs/1.json
  def update
    respond_to do |format|
      if @pajedrez.update(pajedrez_params)
        format.html { redirect_to pajedrezs_path, notice: 'Pajedrez was successfully updated.' }
        format.json { render :show, status: :ok, location: @pajedrez }
      else
        format.html { render :edit }
        format.json { render json: @pajedrez.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pajedrezs/1
  # DELETE /pajedrezs/1.json
  def destroy
    @pajedrez.destroy
    respond_to do |format|
      format.html { redirect_to pajedrezs_url, notice: 'Pajedrez was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pajedrez
      @pajedrez = Pajedrez.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pajedrez_params
      params.require(:pajedrez).permit(:participante1, :puntos1, :participante2, :puntos2, :tournament_id, :fecha, :estado, :user_id)
    end
end
