class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :school
  has_many :class_students
  
  has_secure_password
end
