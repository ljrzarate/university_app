class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :profession
      t.string :address
      t.string :cellphone
      t.string :email

      t.timestamps
    end
  end
end
