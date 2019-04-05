class FixColumnNameCostPerUser < ActiveRecord::Migration[5.2]
  def change
  	rename_column :surveys, :cos_per_user, :cost_per_user
  end
end
