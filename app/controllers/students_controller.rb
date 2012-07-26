class StudentsController < ApplicationController
  def index
    @student
    Student.all.each do |user|
        @student = user.name + "\n"
     end
  end  
    
  
  def show
	   @student = Student.find(params[:id])
  end

  def edit
  end

  def delete
  end

  def update
  end
end
