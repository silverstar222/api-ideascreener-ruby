class AddVideoToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :video, :string
  end
end
