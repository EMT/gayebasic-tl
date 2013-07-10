class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.string :slug

      t.timestamps
    end
  end
end
