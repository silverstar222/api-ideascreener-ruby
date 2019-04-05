class DropSurveyTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :surveys, force: :cascade
  end
end
