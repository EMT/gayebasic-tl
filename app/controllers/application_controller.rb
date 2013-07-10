class ApplicationController < ActionController::Base
  protect_from_forgery

	before_filter :set_the_stage
	
	def set_the_stage
		
		if params[:company]
			@_employer = Employer.find(params[:company])
		else
			@_employer = Employer.first
		end
		
		if params[:person]
			@_employee = Employee.find(params[:person])
		elsif employee_signed_in?
			@_employee = current_employee
		else
			@_employee = @_employer.employees.first
		end
		
		if @_employee && @_employee.employer_id
			#@_employer = @_employee.employer
			@_employer = Employer.find(@_employee.employer_id)
		end
		
		if params[:cause]
			@_cause = Cause.find(params[:cause])
		else
			@_cause = Cause.first
		end
		
		if params[:charity]
			@_cause = Charity.find(params[:charity])
		else
			@_cause = Charity.first
		end
		
	end
	
	def after_sign_in_path_for(resource)
		if !@_employer
			@_employer = Employer.find(resource.employer_id)
		end
		employee_path(@_employer, resource)
	end

end
