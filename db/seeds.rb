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
  description: "A variable is mutable, which means you can change it by assigning it a new value.",
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

  #================
  #CS 32
  #================
  newSkill = Skill.create!(
    ucla_class: "CS 32",
    order: 2,
    topic: "Structs",
    author: "Apurva Panse"
  )

  newConcept = newSkill.concept.create!(
    name: "Concept",
    description: "&nbsp;&nbsp;&nbsp;&nbsp;A <b>struct</b> is a single variable grouping together multiple related variables.
    We use structs to better organize information.",
    examples: ["If we wanted to define a person, we wouldn't want to define them by their
    individual characteristics, but rather as the entire person themselves.
    If we declared a person as a struct, it would look something like this:
    <pre><code class='language-cpp'>
    struct Person {
    	string job;
    	int age;
    	string gender;
    };
    </code></pre>",
    "We can use the Person struct to correctly categorize each person’s age, name and gender; rather than making an array for each characteristic, we can make an array of Persons, which each keep track of their characteristics. As always, don’t forget the semicolons. We can declare a Person and it’s characteristics like this:
    <pre><code class='language-cpp'>
    Person Apurva = new Person;
    Apurva.job = “Teacher”;
    Apurva.age = 20;
    Apurva.gender = “Female”;
    </code></pre>
    "
  ])

  newConcept.question.create!(
    content: "What will the following code print out?
    <pre><code class='language-cpp'>
    cout << Apurva.job << “, ”;
    Apurva.job = “Engineer”;
    cout << Apurva.job << endl;
    </code></pre>",
    question_type: "Multiple Choice",
    answers: ["Teacher, Teacher", "Teacher, Engineer", "Engineer, Engineer", "This code will result in an error message"],
    final_answer: "1"
  )

  newConcept = newSkill.concept.create!(
    name: "Concept",
    description: "&nbsp;&nbsp;&nbsp;&nbsp;Data members in a struct are by default public, unless the private keyword is used. The private key word makes the member only accessible to the other members of the class, and not by anything else in the program.",
    examples: ["<pre><code class='language-cpp'>
      struct Person {
      	private int age;
      	string job;
      	string gender;
      };
      </code></pre>
      "
  ])

  newConcept.question.create!(
    content: "Which of the following data members can only be accessed by other members in the class? ",
    question_type: "Multiple Choice",
    answers: ["Age", "Job", "Gender", "None of the Above"],
    final_answer: "1"
  )

  newSkill = Skill.create!(
    ucla_class: "CS 32",
    order: 3,
    topic: "Big-O",
    author: "Jorge Fuentes"
  )

  newConcept = newSkill.concept.create!(
    name: "Concept",
    description: "&nbsp;&nbsp;&nbsp;&nbsp;Big-O notation is used to evaluate the speed/time complexity of an algorithm.
      Thus, we can compare algorithms to see which one is faster. Big-O counts the number operations it takes to run a program, and measures the
      worst case of time complexity. A smaller Big-O means a faster algorithm.<br>
        &nbsp;&nbsp;&nbsp;&nbsp;We drop the coefficients in front of Big-O because as the numbers
      grow in size there is not much of a difference between 1.5N^3 and 3N^3. For simplicity, we would consider this time complexity N^3.
      So, when defining an algorithm's Big-O notation, we ignore the coefficients and lower-order terms.",
    examples: ["For example, the Big-O of this program is O(N), because
           we go through the for loop N times, so we complete N operations. The other for loop
           is executed N/2 times, but since it’s a lower order, we can ignore it and go with N.
           <pre><code class='language-cpp'>
            for (int i = 0; i < N; i++) {
            	cout << i << endl;
            }
            for (int j = 0; j < N/2; j++) {
            	cout << j << endl;
            }
            </code></pre>"
    ])

    newConcept.question.create!(
      content: "What is the Big-O of the following:
      <pre><code class='language-cpp'>
      for (int i = 0; i < N; i++) {
      	cout << i << endl;
      	for (int j = 0; j < N/2; j++) {
      		cout << j << endl;
      }
      }
      </code></pre>
      ",
      question_type: "Multiple Choice",
      answers: ["N", "N + N/2", "N^2", "N/2"],
      final_answer: "1"
    )

    newConcept.question.create!(
      content: "Which of the following Big-O represents the fastest algorithm?",
      question_type: "Multiple Choice",
      answers: ["3N!", "10log2(N)", "1N^2", "4N"],
      final_answer: "1"
    )

    newConcept = newSkill.concept.create!(
      name: "Operations",
      description: "&nbsp;&nbsp;&nbsp;&nbsp;Operations are defined as the following:
        <pre><code class='language-markup'>
          1.	Accessing an item
          2.	Evaluating a math expression
          3.	Traversing a single link in a linked list, an array, etc.
        </code></pre>
        Operations that do not rely on one another are “added” in Big-O, but usually the lower-term notiation is dropped. Operations that are nested are usually multiplied in Big-O. To analyze a multi-step algorithm, break each section down into its individual Big-O
        ",
      examples: ["<pre><code class='language-cpp'>
        for ( i < n) {			O(N)
        	for (j < i * i) {		O(N^2)
        		for (k < j){}	O(N^2)
        	}
        }
        </code></pre>
        Thus, the Big-O is O(N^5).
        "
      ])
