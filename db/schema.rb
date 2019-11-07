# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_03_095121) do

  create_table "final_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_final_round_records_on_player_id"
  end

  create_table "final_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "final_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_final_rounds_on_player_id"
  end

  create_table "first_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_first_round_records_on_player_id"
  end

  create_table "first_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "first_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_first_rounds_on_player_id"
  end

  create_table "fourth_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_fourth_round_records_on_player_id"
  end

  create_table "fourth_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fourth_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.string "climate", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_fourth_rounds_on_player_id"
  end

  create_table "managers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.float "muscle_coefficient", null: false
    t.float "agile_coefficient", null: false
    t.float "technique_coefficient", null: false
    t.float "change_coefficient", null: false
    t.float "spirit_coefficient", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.float "coefficient", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "position", null: false
    t.string "dominant_throw"
    t.string "dominant_batting"
    t.string "level", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "second_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_second_round_records_on_player_id"
  end

  create_table "second_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "second_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.string "climate", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_second_rounds_on_player_id"
  end

  create_table "semi_final_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_semi_final_round_records_on_player_id"
  end

  create_table "semi_final_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semi_final_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_semi_final_rounds_on_player_id"
  end

  create_table "third_round_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "take_part_in", null: false
    t.integer "point_difference", null: false
    t.integer "lost_point", null: false
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.integer "hit", null: false
    t.integer "second_base_hit", null: false
    t.integer "third_base_hit", null: false
    t.integer "home_run", null: false
    t.integer "sacrifice_bunt", null: false
    t.integer "sacrifice_fly", null: false
    t.integer "steal", null: false
    t.integer "pitch", null: false
    t.integer "straight_ball_out", null: false
    t.integer "change_ball_out", null: false
    t.integer "strike_out", null: false
    t.integer "fly_liner_out", null: false
    t.integer "roller", null: false
    t.integer "double_play", null: false
    t.string "wagama_order"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_third_round_records_on_player_id"
  end

  create_table "third_round_teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "base_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "third_rounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "opponent", null: false
    t.string "supporter", null: false
    t.string "supporter_mood", null: false
    t.string "horisugi_doll", null: false
    t.string "climate", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_third_rounds_on_player_id"
  end

  create_table "total_records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "muscle", null: false
    t.integer "agile", null: false
    t.integer "technique", null: false
    t.integer "change", null: false
    t.integer "spirit", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_total_records_on_player_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nickname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "final_round_records", "players"
  add_foreign_key "final_rounds", "players"
  add_foreign_key "first_round_records", "players"
  add_foreign_key "first_rounds", "players"
  add_foreign_key "fourth_round_records", "players"
  add_foreign_key "fourth_rounds", "players"
  add_foreign_key "players", "users"
  add_foreign_key "second_round_records", "players"
  add_foreign_key "second_rounds", "players"
  add_foreign_key "semi_final_round_records", "players"
  add_foreign_key "semi_final_rounds", "players"
  add_foreign_key "third_round_records", "players"
  add_foreign_key "third_rounds", "players"
  add_foreign_key "total_records", "players"
end
