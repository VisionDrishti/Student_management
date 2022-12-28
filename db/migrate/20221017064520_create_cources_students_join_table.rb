class CreateCourcesStudentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :cources, :students
  end
end
