require_relative '../lib/tasks_management'

describe TasksManagement do
  context "given a task added and an empty string" do 
    it "returns a list without an empty string" do 
      task = TasksManagement.new
      task.add_task("Walk dog")
      expect(task.add_task("")).to eq ["Walk dog"]
    end
  end

  context "given an empty string"do
    it "returns a empty list" do 
      task = TasksManagement.new
      expect(task.add_task("")).to eq []
    end
  end

  context "given null" do 
    it "throws an error" do 
      task = TasksManagement.new
      expect {task.add_task(nil)}.to raise_error "Ivalid, task can not be null"
    end
  end

  context "given a number" do 
    it "throws an error" do 
      task = TasksManagement.new
      expect {task.add_task(1)}.to raise_error "Error, task should not be a number"
    end
  end

  context "given a task" do
    it "stores and return task added" do 
      task = TasksManagement.new
      task.add_task("Walk the dog")
      expect(task.list_tasks).to eq ["Walk the dog"]
    end
  end

  context "given multiple tasks" do
    it "stores and return tasks added" do 
      task = TasksManagement.new
      task.add_task("Walk the dog")
      task.add_task("Do exercice")
      task.add_task("Buy milk")
      expect(task.list_tasks).to eq ["Walk the dog", "Do exercice", "Buy milk"]
    end
  end
end

describe 'complete_task method' do
  context "when 1 task is completed" do
    it "removes task from the list" do 
      task = TasksManagement.new
      task.add_task("Walk the dog")
      task.add_task("Do exercice")
      task.add_task("Buy milk")
      task.complete_task("Walk the dog")
      expect(task.list_tasks).to eq ["Do exercice", "Buy milk"]
    end
  end

  context "given 2 tasks completed" do
    it "removes tasks from the list" do 
      task = TasksManagement.new
      task.add_task("Walk the dog")
      task.add_task("Do exercice")
      task.add_task("Buy milk")
      task.complete_task("Walk the dog")
      task.complete_task("Buy milk")
      expect(task.list_tasks).to eq ["Do exercice"]
    end
  end

  context "given 1 task completed" do
    it "removes task from the list" do 
      task = TasksManagement.new
      task.add_task("Walk the dog")
      task.complete_task("Walk the dog")
      expect(task.list_tasks).to eq []
    end
  end
end