class TasksController < ApplicationController
  def new
  end
  
  def create
    @task = Task.new(task_params)
    @task.done = 0
 
    @task.save
    redirect_to root_path
  end
  
  def show
  end
  
  def complete
    @task = Task.find(params[:id])
    @task.done = 1
    @task.completed = Time.now
    @task.save!
    redirect_to root_path
  end
  
  def update
    redirect_to root_path
  end
  
private
  def task_params
    params.require(:task).permit(:title, :note)
  end
end