class AddSlugToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :slug, :string
  end
end
