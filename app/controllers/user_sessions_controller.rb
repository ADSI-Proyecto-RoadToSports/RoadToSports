class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
  	@user = User.new

  end

 def create
    if @user = login(params[:email], params[:password])
      if @user.genero == true
        redirect_back_or_to(:users, notice: 'Bienvenido '+ current_user.nombre )
      else
        redirect_back_or_to(:users, notice: 'Bienvenida '+ current_user.nombre )
      end
    else
      flash.now[:alert] = 'Error en el Email o contraseña.'
      render action: 'index'
    end
  end

  def destroy
    logout
    redirect_to(root_url, notice: 'Desconectado!')
  end

end
