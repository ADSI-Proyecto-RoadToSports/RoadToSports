class InicioController < ApplicationController
  def index
  	@tournaments = Tournament.all
  end


end
