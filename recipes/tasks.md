# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

'''ruby
Class ToDo

def initialize()
 #...Initialize empty array
end

def add(Task) # Task will be a string
 #...Throw error if Task is empty
 #...Tasks should be added to the array
end

def view_tasks()
 #...Return the list of tasks, as a string
 #...Return a message if the task list is empty
end

end

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

'''ruby

#1
task = ToDo.new()
task.add("") => Raise error message, "Task is empty and so it cannot be added to the Task list"

#2
task = ToDo.new()
task.view_tasks => Return a message "The list is empty. Enjoy your day!"

#3
task = Todo.new()
task.add("Walk the dog") 
task.view_tasks() => Returns "Your tasks are as follows: Walk the dog"

#4
task = Todo.new()
tasks = task.add("Walk the dog") #Trial
tasks = task.add("Clean the dishes")
task.view_tasks() => Returns "Your tasks are as follows: Walk the dog, Clean the dishes"


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->