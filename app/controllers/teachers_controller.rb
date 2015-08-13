require 'bcrypt'

class TeachersController < ApplicationController
  
  def new
    
  end
  
  def create
#     @teacher = Teacher.find_by name: params[:name]
    @teacher = Teacher.new(:name => params[:name] , :password => params[:password])
    @teacher.save
#     if @teacher.save
    session[:user_id] = @teacher.id
      redirect_to '/'
#     else
#       redirect_to '/signup'
#     end
  end
  private
  
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
    
    if @teacher
      session[:user_id] = @teacher
    end
    
    erb :index
  end
    
  def teacher_login 
   
   
  end
  
  def teacher_sign_up
    @teacher = Teacher.new
    @teacher.name = params[:name]
    @teacher.password = params[:password]
    @teacher.save
    
    if @teacher
      session[:user_id] = @teacher
    end
    
    erb :index
  end
  
  def teacher_logout
    session[:teacher_id] = nil
    erb :index
  end
#before_filter :authorize
  
end
