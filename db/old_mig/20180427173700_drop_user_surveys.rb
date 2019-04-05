class DropUserSurveys < ActiveRecord::Migration[5.2]
  def change
  	drop_table :user_surveys, force: :cascade
  end
end
