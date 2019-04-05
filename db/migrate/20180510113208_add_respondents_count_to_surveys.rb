class AddRespondentsCountToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :respondents_count, :integer
  end
end
