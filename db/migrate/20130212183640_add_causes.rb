class AddCauses < ActiveRecord::Migration
  def up
		create_table :causes do |t|
			t.string :name
			t.timestamps
		end
		create_table :causes_employers do |t|
			t.references :cause
			t.references :employer
		end
  end

  def down
		drop_table :causes
		drop_table :causes_employers
  end
end
