class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def show
    task = Task.find_by(id:params[:id])
    render json: task
  end

  def create
    task = Task.new(name: params[:name], description: params[:description], user_id: params[:user_id])
    task.save
    render json: task
  end
end
