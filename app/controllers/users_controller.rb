class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.search(params[:search], params[:page])
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @users = User.find(params[:id])
  end
   

  def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'El usuario ha sido creado exitosamente.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end

  def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'El usuario ha sido modificado exitosamente.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_sessions_path, notice: 'El usuario ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :admin, :usuario, :invitado, :nombre, :document_type_id, :documento)
    end
    
end
