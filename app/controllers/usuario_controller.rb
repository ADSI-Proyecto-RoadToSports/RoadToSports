class UsuarioController < ApplicationController
  def index
  	@pre_registrations = PreRegistration.all
  end
end
