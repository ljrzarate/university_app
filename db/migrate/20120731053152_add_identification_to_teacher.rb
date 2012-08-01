class AddIdentificationToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :identification, :integer
  end
end
