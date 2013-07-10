class AddPendingToEmployees < ActiveRecord::Migration
  def change
		add_column :employees, :approved, :boolean, :default => false
  end
end
