class AddEventIdToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :Event_id, :string
  end
end
