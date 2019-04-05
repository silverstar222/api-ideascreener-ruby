class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.references :user, index: true
      t.string :uuid

      t.timestamps
    end
  end
end
