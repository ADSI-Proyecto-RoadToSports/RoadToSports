class TypeChangesController < ApplicationController
  before_action :set_type_change, only: [:show, :edit, :update, :destroy]

  # GET /type_changes
  # GET /type_changes.json
  def index
    @type_changes = TypeChange.all
  end

  # GET /type_changes/1
  # GET /type_changes/1.json
  def show
  end

  # GET /type_changes/new
  def new
    @type_change = TypeChange.new
  end

  # GET /type_changes/1/edit
  def edit
  end

  # POST /type_changes
  # POST /type_changes.json
  def create
    @type_change = TypeChange.new(type_change_params)

    respond_to do |format|
      if @type_change.save
        format.html { redirect_to @type_change, notice: 'Type change was successfully created.' }
        format.json { render :show, status: :created, location: @type_change }
      else
        format.html { render :new }
        format.json { render json: @type_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_changes/1
  # PATCH/PUT /type_changes/1.json
  def update
    respond_to do |format|
      if @type_change.update(type_change_params)
        format.html { redirect_to @type_change, notice: 'Type change was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_change }
      else
        format.html { render :edit }
        format.json { render json: @type_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_changes/1
  # DELETE /type_changes/1.json
  def destroy
    @type_change.destroy
    respond_to do |format|
      format.html { redirect_to type_changes_url, notice: 'Type change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_change
      @type_change = TypeChange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_change_params
      params.require(:type_change).permit(:name, :description)
    end
end
