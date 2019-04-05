class AddSolutionRatesToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :solution_rates, :hstore, default: {}, null: false
  end
end
