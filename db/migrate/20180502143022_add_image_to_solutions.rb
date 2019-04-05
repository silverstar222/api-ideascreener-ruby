class AddImageToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :image, :string
  end
end
