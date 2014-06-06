class TypeRolesController < ApplicationController
  before_action :set_type_role, only: [:show, :edit, :update, :destroy]

  # GET /type_roles
  # GET /type_roles.json
  def index
    @type_roles = TypeRole.all
  end

  # GET /type_roles/1
  # GET /type_roles/1.json
  def show
  end

  # GET /type_roles/new
  def new
    @type_role = TypeRole.new
  end

  # GET /type_roles/1/edit
  def edit
  end

  # POST /type_roles
  # POST /type_roles.json
  def create
    @type_role = TypeRole.new(type_role_params)

    respond_to do |format|
      if @type_role.save
        format.html { redirect_to @type_role, notice: 'Type role was successfully created.' }
        format.json { render :show, status: :created, location: @type_role }
      else
        format.html { render :new }
        format.json { render json: @type_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_roles/1
  # PATCH/PUT /type_roles/1.json
  def update
    respond_to do |format|
      if @type_role.update(type_role_params)
        format.html { redirect_to @type_role, notice: 'Type role was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_role }
      else
        format.html { render :edit }
        format.json { render json: @type_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_roles/1
  # DELETE /type_roles/1.json
  def destroy
    @type_role.destroy
    respond_to do |format|
      format.html { redirect_to type_roles_url, notice: 'Type role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_role
      @type_role = TypeRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_role_params
      params.require(:type_role).permit(:name, :description)
    end
end
