class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login
  

private
def not_authenticated
    redirect_to login_path, alert: "Porfavor inicia sesión primero."
end
#rescue_from CanCan::AccessDenied do |exception|
#   redirect_to root_path, :alert => exception.message
#end
rescue_from CanCan::AccessDenied do |exception|
  flash[:error] = "Access denied!"
  redirect_to root_url
end
end
