class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :brand
      t.string :fingerprint
      t.string :exp_month
      t.string :exp_year
      t.string :cvc
      t.references :user, index: true

      t.timestamps
    end
  end
end
