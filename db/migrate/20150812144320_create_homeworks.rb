class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :name
      t.string :content
      t.belongs_to :classroom
      t.timestamps null: false
    end
  end
end
