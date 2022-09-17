# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2017_07_11_194929) do
  create_table "actors", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "title", null: false
    t.integer "artist_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "buses", force: :cascade do |t|
    t.string "model", null: false
    t.integer "route_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["route_id"], name: "index_buses_on_route_id"
  end

  create_table "castings", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "actor_id", null: false
    t.integer "ord", null: false
    t.index ["actor_id"], name: "index_castings_on_actor_id"
    t.index ["movie_id"], name: "index_castings_on_movie_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "bus_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["bus_id"], name: "index_drivers_on_bus_id"
  end

  create_table "gardeners", force: :cascade do |t|
    t.string "name", null: false
    t.integer "house_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["house_id"], name: "index_gardeners_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.integer "yr", null: false
    t.float "score", null: false
    t.integer "votes", null: false
    t.integer "director_id", null: false
    t.index ["director_id"], name: "index_movies_on_director_id"
    t.index ["title"], name: "index_movies_on_title"
    t.index ["yr"], name: "index_movies_on_yr"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "gardener_id"
    t.string "species", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["gardener_id"], name: "index_plants_on_gardener_id"
  end

  create_table "routes", force: :cascade do |t|
    t.integer "number", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "seeds", force: :cascade do |t|
    t.integer "count", null: false
    t.integer "plant_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["plant_id"], name: "index_seeds_on_plant_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title", null: false
    t.integer "album_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["album_id"], name: "index_tracks_on_album_id"
  end

end
