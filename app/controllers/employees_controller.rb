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
  end

  def update
  end

end
