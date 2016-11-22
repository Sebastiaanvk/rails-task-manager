class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
   @task = Task.new(task_params)
   @task.save

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  # PATCH/PUT /restaurants/:id
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # DELETE /restaurants/:id
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end



private
  def task_params
    params.require(:task).permit(:name, :done)
  end

end
