class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :program
      t.integer :teacher

      t.timestamps
    end
  end
end
