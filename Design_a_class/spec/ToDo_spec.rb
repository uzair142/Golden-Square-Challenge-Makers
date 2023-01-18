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
      
    it 'returns a message if the completed task list is empty' do
      expect(@tasks.view_completed_tasks).to eq "The completed list is empty. Work harder!"
    end  
    
    it 'raises an error message if the task is not in the task list' do
      expect {@tasks.complete_task("Walk the dog")}.to raise_error('There is no such task.')
    end
    
    it 'returns a message if we completed a task from the task list and updates the task list' do
      @tasks.add("Walk the dog")
      @tasks.add("Walk the dog")
      @tasks.add("Clean the dishes")
      expect(@tasks.complete_task("Walk the dog")).to eq 'Task completed: Walk the dog'
      expect(@tasks.view_tasks).to eq 'Your tasks are as follows: Clean the dishes'
    end

    it 'returns the completed task list.' do
      @tasks.add("Walk the dog")
      @tasks.add("Clean the dishes")
      @tasks.complete_task("Walk the dog")
      @tasks.complete_task("Clean the dishes")
      expect(@tasks.view_completed_tasks).to eq 'Your completed tasks are as follows: Walk the dog, Clean the dishes'
    end

end