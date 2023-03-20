class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    respond_to do |format|
      format.html
      format.pdf do
        pdf = prawn::Document.new
        pdf.text "hello"
        send_data pdf.render, filename: "member.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end

  def create
    session[:employe_id] = employee.id
    redirect_to employees_path
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_path, notice: "employee has been created"
    else
      render :new
    end
  end

  def update
    @employee = Employee.find(params[:id])
    #@employee.re4e

    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    #reset_session
    #redirect_to employee_update_path
    #@employees.destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    #redirect_to employees, notice: 'employees has succesfully deleted.'
    redirect_to employee_update_path
    #head :no_content }
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def show
    @employees = Employee.all
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :city, :country, :pincode)
  end
end
