class DropTableUserAnswers < ActiveRecord::Migration[5.2]
  def change
  	drop_table :user_answers, force: :cascade
  end
end
