class DropTableTargetAudiences < ActiveRecord::Migration[5.2]
  def change
  	drop_table :target_audiences
  end
end
