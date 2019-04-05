class CreateStructure < ActiveRecord::Migration[5.2]
  def change
    create_table "completed_surveys", force: :cascade do |t|
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_completed_surveys_on_survey_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.date "birth_date"
    t.string "hh_income"
    t.string "first_name"
    t.string "last_name"
    t.string "education_level"
    t.string "life_style"
    t.string "relationship_status"
    t.string "life_stage"
    t.string "home_ownership"
    t.text "bio"
    t.jsonb "age_category", default: "{}", null: false
    t.boolean "is_completed", default: false, null: false
    t.index ["age_category"], name: "index_profiles_on_age_category", using: :gin
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "target_audience", default: "{}", null: false
    t.integer "status"
    t.integer "survey_type"
    t.index ["target_audience"], name: "index_surveys_on_target_audience", using: :gin
    t.index ["user_type", "user_id"], name: "index_surveys_on_user_type_and_user_id"
  end


  create_table "questions", force: :cascade do |t|
    t.text "text"
    t.string "type_violence"
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.bigint "solution_id"
    t.index ["solution_id"], name: "index_questions_on_solution_id"
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.bigint "survey_id"
    t.bigint "question_id"
    t.bigint "user_id"
    t.string "content"
    t.index ["question_id"], name: "index_solutions_on_question_id"
    t.index ["survey_id"], name: "index_solutions_on_survey_id"
    t.index ["user_id"], name: "index_solutions_on_user_id"
  end

  create_table "target_audiences", force: :cascade do |t|
    t.bigint "survey_id"
    t.jsonb "gender"
    t.jsonb "age"
    t.jsonb "hh_income"
    t.jsonb "education_level"
    t.jsonb "lifestyle"
    t.jsonb "relationship_status"
    t.jsonb "life_stage"
    t.jsonb "home_ownership"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_target_audiences_on_survey_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "user_survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["user_survey_id"], name: "index_user_answers_on_user_survey_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "unconfirmed_email"
  end

  add_foreign_key "profiles", "users"
  add_foreign_key "questions", "surveys"
  add_foreign_key "questions", "solutions"
  add_foreign_key "solutions", "questions"
  add_foreign_key "solutions", "users"
  add_foreign_key "solutions", "surveys"
  end
end
