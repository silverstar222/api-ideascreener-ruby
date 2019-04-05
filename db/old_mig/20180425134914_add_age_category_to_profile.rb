class AddAgeCategoryToProfile < ActiveRecord::Migration[5.2]
  def change
  	add_column :profiles, :age_category, :jsonb, null: false, default: '{}'
    add_index  :profiles, :age_category, using: :gin
  end
end
