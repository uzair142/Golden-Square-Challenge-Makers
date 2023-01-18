require 'ToDo'

describe ToDo do
    
    before(:each) do
      @tasks = ToDo.new
    end
    
    it "raises an error message if the task is an empty string" do
      expect{@tasks.add("")}.to raise_error("Task is empty and so it cannot be added to the Task list")
    end
    
    it "returns a message if the task list is empty" do
      expect(@tasks.view_tasks()).to eq("The list is empty. Enjoy your day!")
    end
    
    it "adds a task and return the list" do
      @tasks.add("Walk the dog")
      expect(@tasks.view_tasks()).to eq("Your tasks are as follows: Walk the dog")
    end
    
    it "adds two tasks and return the list" do
      @tasks.add("Walk the dog")
      @tasks.add("clean the dishes")
      expect(@tasks.view_tasks()).to eq("Your tasks are as follows: Walk the dog, clean the dishes")
    end
      
        
    
end