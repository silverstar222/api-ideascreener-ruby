class AddProfileCompletedStatusToProfiles < ActiveRecord::Migration[5.2]
  def change
  	add_column :profiles, :is_completed, :boolean, null: false, default: false
  end
end
