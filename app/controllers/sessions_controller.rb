class SessionsController < ApplicationController
  
  def new
  end

  def create
  end

  def destroy
  end
  
#   def new
#   end
#   def create
#     @teacher = Teacher.find_by(:email => params[:email])
#     if  @teacher && @teacher.authenticate(params[:password_digest])
#       session[:user_id] = teacher.id
#       redirect_to '/'
#     else
#       redirect_to '/login'
#     end
#   end
#   def student_create
#   end
#   def change
#     @student = Student.find_by(:email => params[:email])
#     if  @studnet && @student.authenticate(params[:password])
#       session[:user_id] = teacher.id
#       redirect_to '/'
#     else
#       redirect_to '/login'
#     end
#   end
#   def destroy
#     session[:user_id] = nil
#     redirect_to '/login'
#   end
end