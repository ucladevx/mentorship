# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Skill.create!(
  ucla_class: "CS 31",
  order: 2,
  topic: "Strings",
  author: "Jorge Fuentes"
)
Skill.create!(
  ucla_class: "CS 32",
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
  ucla_class: "CS 31",
  order: 1,
  topic: "Loops",
  author: "Apurva Panse"
)

conceptOne = sample.concept.create!(
  name: "Concept",
  description: "Loops allow us to execute a statement or a group of statements multiple times
The statements are executed sequentially
A conditional is checked, and if it passes the loop runs and executes the specified statements
The basic structure is as follows:

<div class='skills-code-section skills-indent'>
Set Up <br>
Test <br>
Expression/Conditional<br>
		<div class='skills-indent'>
		Statements <br>
		Increment <br>
		</div>
</div>",
  examples: ["", "<div class='skills-code-section skills-indent'>
	// Pseudocode <br>
	Flip a coin <br>
	Coin landed on heads <br>
		<div class='skills-indent'>
		Print “Heads” <br>
		Flip the coin again<br>
		</div>
	Print 'Done'
	</div>
</div>

In this loop, we continue to flip the coin until it does not land on heads, so it lands on tails
This allows us to count how many times we rolled heads
It is more efficient to do a loop, because otherwise we could copy code"
])

conceptOne.question.create!(
  content: "If we wanted to print every letter in the word “Happy”, how many times would the loop to do so run?",
  question_type: "Multiple Choice",
  answers: ["N times where N is the number of computer cores", "3", "4", "5", "6", "150"],
  final_answer: "3"
)
conceptOne.question.create!(
  content: "If the coin did not return heads in the initial example, what would happen?",
  question_type: "Multiple Choice",
  answers: ["The loop continues and the coin is flipped again", "\"Heads\" is printed",
            "The loop ends and it prints \"Done\""],
  final_answer: "2"
)

conceptTwo = sample.concept.create!(
  name: "While",
  description: "A while loop repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.
	Inside the while loop, condition needs to be updated, otherwise it will result in an infinite loop and the program will crash. This is because the condition never become false.",
    examples: ["
  <pre><code class='language-cpp'>
	int x = 5;
	while (x < 10) {
		cout << “Less than 10” << endl;
	}
  </code></pre>

	If the code is left as is, it will result in an infinite loop. The conditional will never be false, because the 5 < 10, and x is never updated. To fix the infinite loop, we add an increment (x += 1) within the loop body
Now the loop will look like this:
	<pre><code class='language-cpp'>
	int x = 5;
	while (x < 10) {
		cout << “Less than 10” << endl;
		x += 1;
	}</code></pre>"
  ])

conceptTwo.question.create!(
  content: "What would we need to add to the following code block to fix the infinite loop?
	<pre><code class='language-cpp'>
	int x = 6;
	while (x > 0) {
		cout << “X is positive” << endl;
		// Add code here
	}</code></pre>",
  question_type: "Multiple Choice",
  answers: ["x += 1", "x -= 1", "x = x+1", "x++"],
  final_answer: "1"
  )
