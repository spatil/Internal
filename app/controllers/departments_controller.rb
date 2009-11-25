class DepartmentsController < ApplicationController
  def index
  end

  def new
    @department  = Department.new
  end
 
  def create
    @department = Department.new(params[:department])
    @department.save!
    
    redirect_to departments_path
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    @department.update_attributes(params[:department])

    redirect_to departments_path
  end
end
