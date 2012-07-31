class StudentsController < ApplicationController
  
  def index
     @student = Student.all
  end  
  
  def new    
    @student = Student.new
  end
 
  def create
    @student = Student.new(params[:student])
    if @student.save
      # Handle a successful save.
      flash[:success] = "added student successfully"
      @student = Student.all
      render 'index'      
    else     
      render 'new'
    end
  end
  
  def show
	   @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      # Handle a successful save.
      flash[:notice] = "updated #{@student.name} successfully"  
      redirect_to students_path                    
    else
      flash[:error] = "can't update #{@student.name}"
      redirect_to edit_student_path
    end
  end
    
  def destroy
    Student.find(params[:id]).destroy
    flash[:notice] = "deleted successfully"
    redirect_to students_path
  end
end
