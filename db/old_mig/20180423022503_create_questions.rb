class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :text
      t.string :type_violence
      t.references :survey, index: true

      t.timestamps
    end
  end
end
