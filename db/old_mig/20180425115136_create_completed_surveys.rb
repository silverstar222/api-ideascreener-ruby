class CreateCompletedSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_surveys do |t|
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
