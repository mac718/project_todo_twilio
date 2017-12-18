class TasksController < ApplicationController
  def index
    @tasks = Task.all.sort_by { |k, v| v == :completion_date }
  end

  def show
    @task = Task.find(params[:id])
  end

  def new 
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path(@task.id)
    else
      render :new
    end
  end

  def destroy 
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :completion_date)
  end
end

