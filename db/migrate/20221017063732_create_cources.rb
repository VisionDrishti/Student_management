class CreateCources < ActiveRecord::Migration[7.0]
  def change
    create_table :cources do |t|

      t.timestamps
    end
  end
end
