class AmendsYa < ActiveRecord::Migration
  def up
		add_column :employees, :email, :string
		add_column :employees, :password, :string
		add_column :employers, :logo, :string
		change_column :employers, :colour_1, :string, :default => "#C23A1A"
		change_column :employers, :colour_2, :string, :default => "#EA5528"	
  end

  def down
  end
end
