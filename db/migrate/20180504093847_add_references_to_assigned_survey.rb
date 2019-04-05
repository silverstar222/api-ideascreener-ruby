class AddReferencesToAssignedSurvey < ActiveRecord::Migration[5.2]
  def change
  	add_reference :assigned_surveys, :user, index: true, foreign_key: true
  	add_reference :assigned_surveys, :survey, index: true, foreign_key: true
  end
end
