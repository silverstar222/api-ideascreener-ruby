class DropUserSurveysTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :surveys, force: :cascade
  end
end
