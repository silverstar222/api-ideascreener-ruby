class CreateSurveyResults < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_results do |t|
      t.integer :assigned_survey_id, null: false
      t.integer :answer_solution_id, null: false
      t.hstore :answer_solution_rates, default: {}, null: false
      t.text :answer_solution_feedback, null: false

      t.timestamps
    end
    add_index :survey_results, :assigned_survey_id
    add_index :survey_results, :answer_solution_id
  end
end