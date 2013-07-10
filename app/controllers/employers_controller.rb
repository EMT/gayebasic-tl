class EmployersController < ApplicationController
		
	def index
	end
	
	def show
	end
	
	def new
	end
	
	def create
	end
	
	def edit
	end
	
	def update
	end
	
	def report
	end
	
	def reports
	end
	
	def message
	end
	
	def cause
	end
	
	def branding
	end
	
	def update
		@emp = Employer.find(params[:company])
		params[:employer][:logo] = "Test"
		if @emp.update_attributes(params[:employer])
      redirect_to company_dashboard_path(@emp)
    else
      render :cause
    end
	end
	
	def employees
	end
	
	def batch
		@emp = Employee.new
		@emp.name = "Bulk Imported Employee"
		@emp.ni = "1092091"
		@emp.deduction = 10
		@emp.nominated_charity = "NSPCC"
	end
	
	def emp_delete
		@emp = Employee.find(params[:emp])
		@emp.destroy
		redirect_to company_employees_path(@emp.employer)
	end
	
	def emp_new
		@emp = Employee.new
	end
	
	def emp_create
		@emp = Employee.new(params[:employee])
		@emp.employer = @_employer
		if @emp.save
			redirect_to company_employees_path(@emp.employer)
		else
			render :emp_new
		end
	end
	
	def emp_edit
		@emp = Employee.find(params[:emp])
	end
	
	def emp_update
		@emp = Employee.find(params[:emp])
		if @emp.update_attributes(params[:employee])
      redirect_to company_employees_path(@emp.employer)
    else
      render :emp_edit
    end
	end
	
end