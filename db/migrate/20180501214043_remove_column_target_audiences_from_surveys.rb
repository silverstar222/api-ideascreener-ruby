class RemoveColumnTargetAudiencesFromSurveys < ActiveRecord::Migration[5.2]
  def change
  	remove_column :surveys, :target_audience
  end
end
