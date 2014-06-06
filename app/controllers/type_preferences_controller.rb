class TypePreferencesController < ApplicationController
  before_action :set_type_preference, only: [:show, :edit, :update, :destroy]

  # GET /type_preferences
  # GET /type_preferences.json
  def index
    @type_preferences = TypePreference.all
  end

  # GET /type_preferences/1
  # GET /type_preferences/1.json
  def show
  end

  # GET /type_preferences/new
  def new
    @type_preference = TypePreference.new
  end

  # GET /type_preferences/1/edit
  def edit
  end

  # POST /type_preferences
  # POST /type_preferences.json
  def create
    @type_preference = TypePreference.new(type_preference_params)

    respond_to do |format|
      if @type_preference.save
        format.html { redirect_to @type_preference, notice: 'Type preference was successfully created.' }
        format.json { render :show, status: :created, location: @type_preference }
      else
        format.html { render :new }
        format.json { render json: @type_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_preferences/1
  # PATCH/PUT /type_preferences/1.json
  def update
    respond_to do |format|
      if @type_preference.update(type_preference_params)
        format.html { redirect_to @type_preference, notice: 'Type preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_preference }
      else
        format.html { render :edit }
        format.json { render json: @type_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_preferences/1
  # DELETE /type_preferences/1.json
  def destroy
    @type_preference.destroy
    respond_to do |format|
      format.html { redirect_to type_preferences_url, notice: 'Type preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_preference
      @type_preference = TypePreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_preference_params
      params.require(:type_preference).permit(:name, :description)
    end
end
