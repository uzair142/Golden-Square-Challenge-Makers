class ToDo
    
    def initialize()
        @task_list = []
        @completed_list = []
    end
    
    def add(task)
      fail "Task is empty and so it cannot be added to the Task list" if task == "" 
      @task_list.append(task)
    end
    
    def view_tasks()
      if @task_list.length() == 0
        "The list is empty. Enjoy your day!"
      else
        "Your tasks are as follows: #{@task_list.join(', ')}"
      end
    end
      
    def view_completed_tasks
      if @completed_list.length == 0
        "The completed list is empty. Work harder!"
      else 
        "Your completed tasks are as follows: #{@completed_list.join(', ')}"  
      end
    end

    def complete_task(task)
      fail 'There is no such task.' unless @task_list.include?(task)
      # @task_list.select! {|todo| todo != task } #=> new array without the task
      @task_list.delete(task)
      @completed_list.push(task)
      return "Task completed: #{task}"
    end
      
    
end
    