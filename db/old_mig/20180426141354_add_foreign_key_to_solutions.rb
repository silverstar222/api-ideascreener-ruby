class AddForeignKeyToSolutions < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :solutions, :questions
  end
end
