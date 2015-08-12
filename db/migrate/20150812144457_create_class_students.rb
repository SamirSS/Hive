class CreateClassStudents < ActiveRecord::Migration
  def change
    create_table :class_students do |t|
      t.belongs_to :student
      t.belongs_to :classroom
      t.timestamps null: false
    end
  end
end
