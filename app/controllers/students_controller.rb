class StudentController < ApplicationController
  
 def new
 end

 def create
   @student = Student.new(student_params)
   if @student.save
     session[:user_id] = @student.id
     redirect_to '/'
   else
     redirect_to '/signup-student'
   end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end
  
  
#   def student_sign_up
#     @student = Student.new
#     @student.name = params[:name]
#     @student.password = params[:password]
#     @student.save
    
#     if @student
#       session[:student_id] = @student
#     end
    
#     erb :index
#   end
  

#   def student_login
#     @student = Student.find_by name: params[:name]
    
#     if @student
#       session[:student_id] = @student
#     end
    
#     erb :index
#   end
  
  
  
#   def student_logout
#     session[:student_id] = nil
#     erb :index
#   end
#   def cool
#   end
#   def free
#   end
  
end