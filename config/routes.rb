Gaye::Application.routes.draw do
	
	devise_for :employees
	
	# Employee tools
	match ":company/register" => "employees#new", :as => "register"
	match ":company/register2" => "employees#new_impact", :as => "register"
	match "employees" => "employees#create", :method => "PUT"
	match ":company/profile/:person" => "employees#show", :as => "employee"
	match ":company/profile/:person/history" => "employees#history", :as => "employee_history"
	match ":company/profile/:person/donate" => "employees#donate", :as => "employee_donate"
	match ":company/profile/:person/edit" => "employees#edit", :as => "employee_update"
	match ":company/profile/:person/update" => "employees#update", :method => "PUT", :as => "update_employer_employee"
	
	# Employer tools
	match ":company/dashboard" => "employers#show", :as => "company_dashboard"
	match ":company/dashboard/report" => "employers#report", :as => "company_report"
	match ":company/dashboard/reports" => "employers#reports", :as => "company_reports"
	match ":company/dashboard/message" => "employers#message", :as => "company_message"
	match ":company/dashboard/batch" => "employers#batch", :as => "company_batch"
	match ":company/dashboard/branding" => "employers#branding", :as => "company_branding"
	match ":company/dashboard/cause" => "employers#cause", :as => "company_cause"
	match ":company/dashboard/update" => "employers#update", :method => "PUT", :as => "company_update"
	
	# Employer, employee editing
	match ":company/dashboard/employees/:emp/delete" => "employers#emp_delete", :as => "company_employees_delete"
	match ":company/dashboard/employees" => "employers#employees", :as => "company_employees"
	
	match ":company/dashboard/employees/:emp/edit" => "employers#emp_edit", :as => "company_employees_edit"
	match ":company/dashboard/employees/:emp/update" => "employers#emp_update", :method => "PUT", :as => "company_update_employer_employee"

	match ":company/dashboard/employees/new" => "employers#emp_new", :as => "company_employees_new"
	match ":company/dashboard/employees/create" => "employers#emp_create", :method => "POST", :as => "company_create_employer_employee"
	
	# Charity tools
	match "charitysignup/:charity" => "employees#charity_signup", :as => "charity_signup"

	# Landing pages
	match ":company" => "employers#index", :as => "company"
	root :to => "home#index"
	
end
