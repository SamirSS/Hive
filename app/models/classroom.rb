class Classroom < ActiveRecord::Base
  belongs_to :teacher
  has_many :homeworks
  has_many :posts
  has_many :class_students
  has_many :questions
end
