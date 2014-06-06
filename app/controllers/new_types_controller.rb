class NewTypesController < ApplicationController
  before_action :set_new_type, only: [:show, :edit, :update, :destroy]

  # GET /new_types
  # GET /new_types.json
  def index
    @new_types = NewType.all
  end

  # GET /new_types/1
  # GET /new_types/1.json
  def show
  end

  # GET /new_types/new
  def new
    @new_type = NewType.new
  end

  # GET /new_types/1/edit
  def edit
  end

  # POST /new_types
  # POST /new_types.json
  def create
    @new_type = NewType.new(new_type_params)

    respond_to do |format|
      if @new_type.save
        format.html { redirect_to @new_type, notice: 'New type was successfully created.' }
        format.json { render :show, status: :created, location: @new_type }
      else
        format.html { render :new }
        format.json { render json: @new_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_types/1
  # PATCH/PUT /new_types/1.json
  def update
    respond_to do |format|
      if @new_type.update(new_type_params)
        format.html { redirect_to @new_type, notice: 'New type was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_type }
      else
        format.html { render :edit }
        format.json { render json: @new_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_types/1
  # DELETE /new_types/1.json
  def destroy
    @new_type.destroy
    respond_to do |format|
      format.html { redirect_to new_types_url, notice: 'New type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_type
      @new_type = NewType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_type_params
      params.require(:new_type).permit(:name, :description)
    end
end
