class TasksController < ApplicationController
  def index
    @tasks = Task.all
    authorize @tasks
  end


  def new
    @user = current_user
    @task = Task.new
    authorize @task
  end

  def create
    @user = current_user
    @task = Task.new (task_params)
    @task.user = @user
    authorize @task
    if @task.save
      redirect_to task_comments_path(@task.id)
    else
      render :index
    end
  end

  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    authorize @task
    redirect_to tasks_path
  end


  def edit
    @task = Task.find(params[:id])
    authorize @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    authorize @task
    redirect_to task_path(@task)
  end

private

  def task_params
    params.require(:task).permit(:status, :deadline, :priority_order, :title)
  end
end
