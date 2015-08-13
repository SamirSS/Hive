require 'bcrypt'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_teacher
    @current_teacher ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
  end
  helper_method :current_teacher
  def authorize
    #redirect_to '/signup' unless current_teacher
  end  
  
end
