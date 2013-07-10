class EmployeesController < ApplicationController	
	
	def new
		@new_employee = Employee.new
		@new_employee.deduction = 10
		
# 		if params[:company]
# 			@causes = @_employer.causes
# 		else
			@causes = Cause.all
			@charities = Charity.all
# 		end
		
		
	end
	
	
	def new_impact
		@new_employee = Employee.new
		@new_employee.deduction = 10
		
# 		if params[:company]
# 			@causes = @_employer.causes
# 		else
			@causes = Cause.all
			@charities = Charity.all
# 		end
		
		
	end

	
	def create
		@new_employee = Employee.new(params[:employee])

		if @new_employee.nominated_charity.blank?
			@new_employee.nominated_charity = "NSPCC"
		end
		
		if @new_employee.save
	exit
			redirect_to employee_path(@_employer,@new_employee)
		else
			render :new
		end
	end
	
	def show
	end
	
	def edit
	end
	
	def update
		if @_employee.update_attributes(params[:employee])
      redirect_to employee_path(@_employer,@_employee)
    else
      render :edit
    end
	end
	
	def history
		
	end
	
	def charity_signup
		@new_employee = Employee.new
		@new_employee.deduction = 10
		@employers = Employer.all	
	end
	
end