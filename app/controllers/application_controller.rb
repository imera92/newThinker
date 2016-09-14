class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def require_login
      unless logged_in?
        flash[:warning] = "Debe iniciar sesion con sus credenciales!"
        redirect_to root_path
      end
    end
end
