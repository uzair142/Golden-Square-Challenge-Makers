class ToDo
    
    def initialize()
        @task_list = []
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
      
      
    
end
    