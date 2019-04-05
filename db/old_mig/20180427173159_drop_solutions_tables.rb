class DropSolutionsTables < ActiveRecord::Migration[5.2]
  def change
  	drop_table :solutions_tables, force: :cascade
  end
end
