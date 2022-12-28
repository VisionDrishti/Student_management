class AddDescreptionToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :descreption, :string
  end
end
