class AddEvaluatedUserToAssignedSurvey < ActiveRecord::Migration[5.2]
  def change
  	add_reference :assigned_surveys, :evaluated_user, references: :users, index: true
  	add_foreign_key :assigned_surveys, :users, column: :evaluated_user_id
  end
end
