class Projects::TasksController < ApplicationController
  before_action :set_project
  before_action :set_task, only: %w[edit update]

  def create
    @task = @project.tasks.create!(task_params)
    redirect_to project_path(@project)
  end

  def edit
  end

  def update
    @task.update!(task_params)
    respond_to do |format|
      format.html { redirect_to project_path(@project), notice: 'タスクを更新しました' }
      format.json { head :ok }
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_task
      @task = @project.tasks.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :description, :position)
    end
end
