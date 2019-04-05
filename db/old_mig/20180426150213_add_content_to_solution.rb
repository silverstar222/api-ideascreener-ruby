class AddContentToSolution < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :content, :string
  end
end
