class CreateAssignedSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_surveys do |t|
      t.boolean :answered
      t.timestamps
    end
  end
end
