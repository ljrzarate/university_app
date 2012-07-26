class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :course
      t.string :term

      t.timestamps
    end
  end
end
