class AddSolutionReferencesToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :solution, foreign_key: true
  end
end
