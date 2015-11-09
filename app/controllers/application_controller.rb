class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller? 
  protect_from_forgery with: :exception
 
  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nombre, :apellido, :email, :nombreUsuario, :nacimiento, :nacionalidad, :masculino, :password, :password_confirmation, :esPremium) }
  end

  #def after_sign_in_path_for(resource) 
#	session[:previous_url] || root_path
   # redirect_to couchinn_path
  #end 

  #def after_sign_up_path_for(resource) 
	#"www.google.com" 
  #end 

  #def after_sign_out_path_for(resource)
  #	session[:previous_url] || root_path
  #end

end