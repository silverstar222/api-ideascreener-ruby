class AddBillingFieldsToSurvey < ActiveRecord::Migration[5.2]
  def change
  	add_column :surveys, :total_price, :decimal, precision: 8, scale: 2
  	add_column :surveys, :cos_per_user, :decimal, precision: 8, scale: 2
  	add_column :surveys, :max_participants_count, :integer
  end
end
