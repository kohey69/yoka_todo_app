class TasksController < ApplicationController
  before_action :set_project
  def create
    @task = @project.tasks.create!(task_params)
    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:name, :position)
  end
end
