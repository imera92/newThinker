class SessionsController < ApplicationController
  def new
  end

  def create
  	teacher = Teacher.find_by(email: params[:session][:email].downcase)
  	if teacher && teacher.authenticate(params[:session][:password])
  		log_in teacher
  		redirect_to list_path
  	else
  		flash.now[:danger] = 'Combinacion incorrecta de correo/contrasena'
  		render 'new'
  	end 
  end

  def destroy
  end
end
