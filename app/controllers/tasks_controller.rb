class TasksController < ApplicationController
  def index
    @tasks = Task.all.sort_by { |k, v| v == :completion_date }
  end
end
