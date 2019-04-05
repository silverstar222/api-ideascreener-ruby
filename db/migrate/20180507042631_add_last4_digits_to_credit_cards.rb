class AddLast4DigitsToCreditCards < ActiveRecord::Migration[5.2]
  def change
    add_column :credit_cards, :last4_digits, :integer
  end
end
