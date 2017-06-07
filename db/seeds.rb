# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Skill.create!(
  order: 2,
  topic: "Strings",
  author: "Jorge Fuentes"
)
Skill.create!(
  order: 3,
  topic: "Classes",
  author: "Gene Block"
)
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

sample = Skill.create!(
  order: 1,
  topic: "Loops",
  author: "Apurva Panse"
)

conceptOne = sample.concept.create!(
  description: "Loops allow us to execute a statement or a group of statements multiple times<br>
The statements are executed sequentially<br>
A conditional is checked, and if it passes the loop runs and executes the specified statements<br>
The basic structure is as follows:<br>
    Set Up
Test Expression/Conditional
        Statements
        Increment",
  examples: ["// Pseudocode
    Flip a coin
    Coin landed on heads
        Print “Heads”
        Flip the coin again
    Print “Done”
In this loop, we continue to flip the coin until it does not land on heads, so it lands on tails
This allows us to count how many times we rolled heads
It is more efficient to do a loop, because otherwise we could copy code
"])

conceptOne.question.create!(
  content: "If we wanted to print every letter in the word “Happy”, how many times would the loop to do so run?",
  question_type: "Multiple Choice",
  answers: ["N Times where n depends on the number of computer cores", "3", "4", "5", "6", "150"],
  final_answer: "D"
)
conceptOne.question.create!(
  content: "If coin did not return heads in the initial example, what would happen?",
  question_type: "Multiple Choice",
  answers: ["The loop continues and the coin is flipped again", "\"Heads\" is printed",
            "The loop ends and it prints \"Done\""],
  final_answer: "B"
)
