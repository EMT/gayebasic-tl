class AddOptToEmployees < ActiveRecord::Migration
  def change
	add_column :employees, :opt_in, :boolean, :default => false
  end
end
