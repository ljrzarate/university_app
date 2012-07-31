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
  end

  def update
  end

  def destroy
  end
end
