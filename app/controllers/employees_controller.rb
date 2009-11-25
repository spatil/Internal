class EmployeesController < ApplicationController
 
  def index
  end

  def new
    @employee  = Employee.new
  end
 
  def create
    @employee = Employee.new(params[:employee])
    @employee.save!
    
    redirect_to employees_path
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(params[:employee])

    redirect_to employees_path
  end

end
