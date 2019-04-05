class AddStripeAccountTypeToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :stripe_account_type, :string
  	add_column :users, :stripe_account_status, :text, default: '{}'
  end
end
