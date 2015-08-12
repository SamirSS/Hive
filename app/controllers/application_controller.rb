require 'bcrypt'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
#   configure do
#     set :public_folder, 'public'
#     set :views, 'views'
    
#     enable :sessions
#     set :session_secret, 'Hive'
#   end
  
#   get '/' do 
#     erb :index
#   end
  
#   post '/teacher_sign_up' do
#     @teacher = Teacher.new
#     @teacher.name = params[:name]
#     @teacher.save
    
#     if @teacher
#       session[:teacher_id] = @teacher
#     end
    
#     erb :index
#   end
  
#   post '/student_sign_up' do
#     @student = Student.new
#     @student.name = params[:name]
#     @student.save
    
#     if @student
#       session[:student_id] = @student
#     end
    
#     erb :index
#   end
  
#   post '/teacher_login' do
#     @teacher = Teacher.find_by name: params[:name]
    
#     if @teacher
#       session[:teacher_id] = @teacher
#     end
    
#     erb :index
#   end

#   post '/student_login' do
#     @student = Student.find_by name: params[:name]
    
#     if @student
#       session[:student_id] = @student
#     end
    
#     erb :index
#   end
  
#   post '/teacher_logout' do
#     session[:teacher_id] = nil
#     erb :index
#   end
  
#   post '/student_logout' do
#     session[:student_id] = nil
#     erb :index
#   end
  
end
