class Teacher < ActiveRecord::Base
  attr_accessible :address, :cellphone, :email, :name, :profession, :identification, :area_teacher
  
  validates :name, :identification, :address, :cellphone, :profession, :presence => true 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, format: { with: VALID_EMAIL_REGEX }, :uniqueness => true
  validates :identification, :numericality => true
  validates :cellphone, :length => {:is => 10}
end