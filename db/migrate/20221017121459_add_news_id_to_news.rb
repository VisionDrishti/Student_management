class AddNewsIdToNews < ActiveRecord::Migration[7.0]
  def change
    add_column :news, :News_id, :string
  end
end
