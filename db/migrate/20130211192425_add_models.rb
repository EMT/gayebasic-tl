class AddModels < ActiveRecord::Migration
  def up
		
		create_table :employers do |t|
			t.string :name
			t.string :slug
			t.string :nominated_charity
			t.boolean :matching, :default => false
			t.timestamps
		end
		
		create_table :employees do |t|
			t.string :name
			t.string :slug
			t.string :nominated_charity
			t.string :deduction
			t.references :employer
			t.timestamps
		end
		
  end

  def down
	
		drop_table :employers
		drop_table :employees
	
  end
end
