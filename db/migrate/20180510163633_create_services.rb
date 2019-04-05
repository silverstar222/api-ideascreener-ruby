class CreateServices < ActiveRecord::Migration[5.2]
  def change
     create_table :services do |t|
      	t.bigint "user_id"
    	t.string "provider"
    	t.string "uid"
    	t.string "access_token"
    	t.string "access_token_secret"
    	t.string "refresh_token"
    	t.datetime "expires_at"
    	t.text "auth"
    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
    	t.index ["user_id"], name: "index_services_on_user_id"
    end
  end
end
