class AddNiToEmployees < ActiveRecord::Migration
  def change
		add_column :employees, :ni, :string
  end
end
