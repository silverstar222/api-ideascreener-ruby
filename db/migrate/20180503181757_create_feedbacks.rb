class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.references :solution, foreign_key: true
      t.references :survey, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
