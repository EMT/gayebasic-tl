class AddAddressToUsers < ActiveRecord::Migration
  def change
		add_column :employees, :address, :text
  end
end
