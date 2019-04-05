class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, index: true

      t.timestamps
    end
    add_foreign_key :profiles, :users
  end
end
