# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

skills = Skill.take(3)
i = 0
6.times do
  content = "Lorem ipsum dolor sit amet, in donec lacinia tellus, ipsum dolor vehicula arcu, nibh diam sit.
  Diam phasellus egestas in lorem. Lorem pellentesque in auctor wisi, eget vel fusce, velit ligula vel lacinia."
  skills.each { |skill|
    newConcept = skill.concept.create!(
      description: "Testing Description",
      name: "Concept" + i.to_s,
      examples: [content],
      order: i
    )
    j = 1
    2.times do
      newConcept.question.create!(
        content: "Question" + j.to_s + content,
        question_type: "Multiple Choice",
        final_answer: "A",
        answers: [content, content, content, content]
      )
      j+=1
    end
  }
  i += 1
end
