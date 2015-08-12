class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :classrooms
  belongs_to :school
end
