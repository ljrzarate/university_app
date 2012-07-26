class Course < ActiveRecord::Base
  attr_accessible :name, :program, :teacher
end
