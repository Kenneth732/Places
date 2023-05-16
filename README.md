 create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.integer "length"
    t.string "description"
    t.string "poster_url"
    t.string "category"
    t.boolean "discount"
    t.integer "director_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "author"
    t.string "date"
    t.string "url"
    t.integer "movie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end