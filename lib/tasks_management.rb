class TasksManagement
  def initialize # name is a string
    @tasks = []
  end
  def add_task(task) 
    fail "Ivalid, task can not be null" if task == nil
    fail "Error, task should not be a number" if task.is_a? Integer
  
    task.empty? ? @tasks : @tasks << task 
    #@tasks << task unless task.empty?
    # task is a string
    # Add tasks and return a list of them
  end
  def list_tasks
    @tasks 
    # return a list of tasks
  end

  def complete_task(task)
   @tasks.delete(task)  
    # remove from the list
  end

end