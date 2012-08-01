class TeachersController < ApplicationController
  def index
    @teacher = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      # Handle a successful save.
      flash[:success] = "added teacher successfully"
      @teacher = Teacher.all
      render 'index'      
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update_attributes(params[:teacher])
      flash[:notice] = "updated #{@teacher.name} successfully"  
      redirect_to teacher_path
    else
      flash[:error] = "can't update #{@teacher.name}"
      redirect_to edit_teacher_path
    end
  end

  def destroy
  end
end
