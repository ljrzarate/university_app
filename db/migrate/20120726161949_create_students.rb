class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :addres
      t.integer :age
      t.string :cellphone
      t.string :name
      t.string :progam
      t.string :identification

      t.timestamps
    end
  end
end
