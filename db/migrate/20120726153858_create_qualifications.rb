class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.integer :student
      t.integer :exam
      t.integer :qualif

      t.timestamps
    end
  end
end
