require 'bcrypt'

class WelcomeController < ApplicationController
   
#   configure do
#     set :public_folder, 'public'
#     set :views, 'views'
    
#     enable :sessions
#     set :session_secret, 'Hive'
#   end
  
  def teacher_sign_up
    @teacher = Teacher.new
    @teacher.name = params[:name]
    @teacher.save
    
    if @teacher
      session[:teacher_id] = @teacher
    end
    
    erb :index
  end
  
  def student_sign_up
    @student = Student.new
    @student.name = params[:name]
    @student.save
    
    if @student
      session[:student_id] = @student
    end
    
    erb :index
  end
  
  def teacher_login 
    @teacher = Teacher.find_by name: params[:name]
    
    if @teacher
      session[:teacher_id] = @teacher
    end
    
    erb :index
  end

  def student_login
    @student = Student.find_by name: params[:name]
    
    if @student
      session[:student_id] = @student
    end
    
    erb :index
  end
  
  def teacher_logout
    session[:teacher_id] = nil
    erb :index
  end
  
  def student_logout
    session[:student_id] = nil
    erb :index
  end
  
end