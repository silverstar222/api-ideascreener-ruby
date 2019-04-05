class AddFieldsToProfiles < ActiveRecord::Migration[5.2]
  def change
  	# add_column :profiles, :provider, :string
   #  add_column :profiles, :uid, :string
  	add_column :profiles, :gender, :string
  	add_column :profiles, :birth_date, :date
  	add_column :profiles, :hh_income, :string
  	add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :education_level, :string
    add_column :profiles, :life_style, :string
    add_column :profiles, :relationship_status, :string
    add_column :profiles, :life_stage, :string
    add_column :profiles, :home_ownership, :string
    add_column :profiles, :bio, :text
  end
end