class RenameColumnTargetToTargetAudiences < ActiveRecord::Migration[5.2]
  def change
  	rename_column :surveys, :target, :target_audience
  end
end
