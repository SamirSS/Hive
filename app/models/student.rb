class Student < ActiveRecord::Base
  belongs_to :school
  has_many :class_students
end
