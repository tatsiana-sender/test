class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if (@task.update(task_params))
      redirect_to project_task_path@task
    else
      render 'edit'
    end
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to project_path(@project)
  end
  private def task_params
    params.require(:task).permit(:title, :text, :username, :status)
  end
end
