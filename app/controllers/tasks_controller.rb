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

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "You've successfully created your task!"
      redirect_to tasks_path(@task.id)
    else
      flash[:error] = "Uh Oh! Something went wrong!"
      render :new
    end
  end

  def update 
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "You've successfully updated your task!"
      redirect_to tasks_path(@task.id)
    else
      flash[:error] = "Uh Oh! Something went wrong!"
      render :update
    end
  end

  def destroy 
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:success] = "You've successfully deleted your task!"
      redirect_to tasks_path
    else
      flash[:error] = "Uh Oh! Something went wrong!"
      render task_path(params[:id])
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :completion_date)
  end
end

