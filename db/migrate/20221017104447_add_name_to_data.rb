class AddNameToData < ActiveRecord::Migration[7.0]
  def change
    add_column :data, :name, :string
  end
end
