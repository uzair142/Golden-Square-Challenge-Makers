# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

'''ruby
class ToDo

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

def complete_task(task) # Task will be a string
#...Throw error if the task is not in the list
#...Return a message saying the task is completed
end

def view_completed_tasks()
#...Return a message if the completed task list is empty
#...Return the list of completed tasks, as a string
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
task.add("Walk the dog")
task.add("Clean the dishes")
task.view_tasks() => Returns "Your tasks are as follows: Walk the dog, Clean the dishes"

#5
task = Todo.new()
task.view_completed_tasks() => Returns "The completed list is empty. Work harder!"

#6
task = Todo.new()
task.complete_task("Walk the dog") #=> Raise error message, "There is no such task."

#7
task = Todo.new()
task.add("Walk the dog")
task.add("Clean the dishes")
task.complete_task("Walk the dog") #=> "Task completed: Walk the dog"

#8
task = Todo.new()
task.add("Walk the dog")
task.add("Clean the dishes")
task.complete_task("Walk the dog")
task.view_tasks => Returns "Your tasks are as follows: Clean the dishes"

#9
task = Todo.new()
task.add("Walk the dog")
task.add("Clean the dishes")
task.complete_task("Walk the dog")
task.complete_task("Clean the dishes")
task.view_completed_tasks() => Returns "Your completed tasks are as follows: Walk the dog, Clean the dishes"

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
