class CreateTargetAudiences < ActiveRecord::Migration[5.2]
  def change
    create_table :target_audiences do |t|
      t.references :survey, foreign_key: true
      t.jsonb :gender
      t.jsonb :age
      t.jsonb :hh_income
      t.jsonb :education_level
      t.jsonb :lifestyle
      t.jsonb :relationship_status
      t.jsonb :life_stage
      t.jsonb :home_ownership

      t.timestamps
    end
  end
end
