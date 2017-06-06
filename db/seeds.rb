# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

skills = Skill.take(3)
6.times do
  content = "Lorem ipsum dolor sit amet, in donec lacinia tellus, ipsum dolor vehicula arcu, nibh diam sit. Diam phasellus egestas in lorem. Lorem pellentesque in auctor wisi, eget vel fusce, velit ligula vel lacinia."
  skills.each { |skill| skill.concept.create!(
      description: "Testing Description",
      examples: [content],
      questions: [content, content, content],
      answers: [content, content, content]
    ) }
end
