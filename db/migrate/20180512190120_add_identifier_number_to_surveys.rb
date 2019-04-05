class AddIdentifierNumberToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :survey_identifier, :string
  end
end
