# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skills = Skill.take(3)
6.times do
  content = "Lorem ipsum dolor sit amet, in donec lacinia tellus, ipsum dolor vehicula arcu, nibh diam sit. Diam phasellus egestas in lorem. Lorem pellentesque in auctor wisi, eget vel fusce, velit ligula vel lacinia."
  skills.each { |skill| skill.concept.create!(
      description: "Testing Description",
      type: "Multiple Choice",
      examples: [content],
      questions: [content, content, content],
      answers: [content, content, content]
    ) }
end

create_table "concepts", force: :cascade do |t|
  t.string   "description"
  t.string   "type"
  t.datetime "created_at",               null: false
  t.datetime "updated_at",               null: false
  t.text     "examples",    default: [],              array: true
  t.text     "answers",     default: [],              array: true
  t.text     "questions",   default: [],              array: true
  t.integer  "skill_id"
  t.integer  "order"
  t.index ["skill_id"], name: "index_concepts_on_skill_id", using: :btree
end
