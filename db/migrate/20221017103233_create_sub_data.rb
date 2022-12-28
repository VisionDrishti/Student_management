class CreateSubData < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_data do |t|
      t.string :title
      t.references :data, null: false, foreign_key: true

      t.timestamps
    end
  end
end
