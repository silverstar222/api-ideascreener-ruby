class AddTargetToSurveys < ActiveRecord::Migration[5.2]
  def change
  	add_column :surveys, :target, :hstore, default: {}, null: false
  end
end
