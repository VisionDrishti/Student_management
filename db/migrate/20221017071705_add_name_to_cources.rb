1class AddNameToCources < ActiveRecord::Migration[7.0]
  def change
    add_column :cources, :name, :string
    add_column :cources, :descreption, :string
  end
end
