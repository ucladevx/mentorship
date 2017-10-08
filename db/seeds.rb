# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
#=================
# CS31
#================

newSkill = Skill.create!(
  ucla_class: "CS 31",
  order: 1,
  topic: "Variables",
  author: "Apurva Panse"
)

newConcept = newSkill.concept.create!(
  name: "Concept",
  description: "&nbsp;&nbsp;&nbsp;&nbsp;<b>Variables</b> are basically a name storing a value. To use a variable, it must first be declared with its type preceding the name. Simply declaring the variable leaves it uninitialized with undefined/garbage values. The assignment operator \"=\" gives the variable a value. <br>
  &nbsp;&nbsp;&nbsp;&nbsp;There are a few essential basic/primitive types of variables: ints, chars, doubles, and bools. Each type of variable holds a different type of value. Ints hold integers, doubles hold decimals, chars hold letters, and bools hold True or False.<br>",
  examples: [
    "<pre><code class='language-cpp'>
    int number = 5;
    char letter = \"G\";
    bool isUCLAgreat = True;
    </code></pre>
    &nbsp;&nbsp;&nbsp;&nbsp;In this case, “number”, “letter” and “isUCLAgreat” are the names of variables. "
  ]
)

newConcept.question.create!(
  content: "Which type of variable would you need to store the number of times someone clicks a link?",
  question_type: "Multiple Choice",
  answers: ["Char", "Int", "Double", "Bool"],
  final_answer: "1"
)

newConcept.question.create!(
  content: "To store information about whether a user purchased an item, we would use what type of variable?",
  question_type: "Multiple Choice",
  answers: ["Char", "Int", "Double", "Bool"],
  final_answer: "3"
)

newConcept = newSkill.concept.create!(
  name: "Mutability",
  description: "A variable is mutable, so its value can change.",
  examples: ["<pre><code class='language-cpp'>
  int max = 5;
  cout << max << endl;
  max = 7;
  cout << max << endl;
  </code></pre>
  This code block will print 5, then 7. The new value of “max” is 7. A variable’s value can also be set to that of another variable. ",
  "<pre><code class='language-cpp'>
  int max = 5;
  int min = max - 2;
  cout << min << endl;
  </code></pre>
  This code block will print 3, since the value of “max” is 5, and the value of min is “max” – 2. "
  ]
)

newConcept.question.create!(
  content: "In the following code block, what should be printed?
  <pre><code class='language-cpp'>
  int salary = 100;
  int bonus = 50;
  salary = salary + bonus;
  int expenses = 75;
  int profit = salary – expenses;
  profit = profit – 10;
  cout << profit << endl;
  </code></pre>",
  question_type: "Multiple Choice",
  answers: ["75", "-35", "65", "150"],
  final_answer: "2"
)

newSkill = Skill.create!(
  ucla_class: "CS 31",
  order: 2,
  topic: "Loops",
  author: "Apurva Panse"
)

newConcept = newSkill.concept.create!(
  name: "Concept",
  description: "<b>Loops</b> allow us to execute a statement or a group of statements multiple times.<br>
The statements are executed sequentially.<br>
A conditional is checked, and if it passes the loop runs and executes the specified statements.<br>
The basic structure is as follows:
<pre><code class='language-markup'>Set Up
Test
Expression/Conditional
  Statements
  Increment
</code></pre>",

  examples: ["", "In this loop, we continue to flip the coin until it does not land on heads, so it lands on tails.<br>
This allows us to count how many times we rolled heads.<br>
It is more efficient to do a loop, because otherwise we could copy code.
<pre><code class='language-markup'>// Pseudocode
Flip a coin
Coin landed on heads
  Print &quot;Heads&quot;
  Flip the coin again
Print &quot;Done&quot;
</code></pre>"
])

newConcept.question.create!(
  content: "If we wanted to print every letter in the word “Happy”, how many times would the loop to do so run?",
  question_type: "Multiple Choice",
  answers: ["N times where N is the number of computer cores", "3", "4", "5", "6", "150"],
  final_answer: "3"
)
newConcept.question.create!(
  content: "If the coin did not return heads in the initial example, what would happen?",
  question_type: "Multiple Choice",
  answers: ["The loop continues and the coin is flipped again", "\"Heads\" is printed",
            "The loop ends and it prints \"Done\""],
  final_answer: "2"
)

newConcept = newSkill.concept.create!(
  name: "While",
  description: "&nbsp;&nbsp;&nbsp;&nbsp;A <b>while</b> loop repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.<br>
	&nbsp;&nbsp;&nbsp;&nbsp;Inside the while loop, condition needs to be updated, otherwise it will result in an infinite loop and the program will crash. This is because the condition never becomes false.",
    examples: ["
  <pre><code class='language-cpp'>int x = 5;
	while (x < 10) {
		cout << &quot;Less than 10&quot; << endl;
	}</code></pre>

	&nbsp;&nbsp;&nbsp;&nbsp;If the code is left as is, it will result in an infinite loop. The conditional will never be false, because the 5 < 10, and x is never updated. To fix the infinite loop, we add an increment (x += 1) within the loop body.<br>
  Now the loop will look like this:
<pre><code class='language-cpp'>int x = 5;
while (x < 10) {
	cout << &quot;Less than 10&quot; << endl;
	x += 1;
}</code></pre>"])

newConcept.question.create!(
  content: "What would we need to add to the following code block to fix the infinite loop?
<pre><code class='language-cpp'>int x = 6;
while (x > 0) {
	cout << &quot;X is positive&quot; << endl;
	// Add code here
}</code></pre>",
  question_type: "Multiple Choice",
  answers: ["x += 1", "x -= 1", "x = x+1", "x++"],
  final_answer: "1"
  )
