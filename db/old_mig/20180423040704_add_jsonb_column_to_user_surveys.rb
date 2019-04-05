class AddJsonbColumnToUserSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :user_surveys, :target_audience, :jsonb, null: false, default: '{}'
    add_index  :user_surveys, :target_audience, using: :gin
  end
end
