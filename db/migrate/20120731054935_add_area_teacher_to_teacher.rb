class AddAreaTeacherToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :area_teacher, :string
  end
end
