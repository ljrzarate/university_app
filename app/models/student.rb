class Student < ActiveRecord::Base
  attr_accessible :addres, :age, :cellphone, :identification, :name, :progam
  
  validates :name, :identification, :progam, :presence => true
  validates :age, :numericality => {:greater_than => 0, :less_than => 120}
  
  validates :cellphone, :length => {:is => 10}
  
  
end
