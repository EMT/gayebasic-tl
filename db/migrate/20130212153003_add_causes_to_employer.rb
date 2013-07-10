class AddCausesToEmployer < ActiveRecord::Migration
  def change
		add_column :employers, :colour_1, :string
		add_column :employers, :colour_2, :string
		add_column :employers, :causes, :string
  end
end
