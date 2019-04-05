class AddJsonbColumnToSurveys < ActiveRecord::Migration[5.2]
  def change
  	add_column :surveys, :target_audience, :jsonb, null: false, default: '{}'
    add_index  :surveys, :target_audience, using: :gin
  end
end
