class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.references :survey, foreign_key: true
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
