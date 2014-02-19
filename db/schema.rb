ActiveRecord::Schema.define(version: 20140219025949) do

  create_table "pets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "species_cd"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
