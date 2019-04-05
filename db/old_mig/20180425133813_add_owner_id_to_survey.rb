class AddOwnerIdToSurvey < ActiveRecord::Migration[5.2]
  def change
  	add_column :surveys, :owner_id, :bigint
  end
end
