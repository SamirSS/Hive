class Teacher < ActiveRecord::Base
 
  has_many :classrooms
  belongs_to :school
end
