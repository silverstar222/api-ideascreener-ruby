class AddSurveyReferencesToSolution < ActiveRecord::Migration[5.2]
  def change
    add_reference :solutions, :survey, foreign_key: true
  end
end
