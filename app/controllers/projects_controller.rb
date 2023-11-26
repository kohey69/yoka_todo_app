class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks.default_order
    @task = @project.tasks.build
  end
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to new_project_path, notice: 'プロジェクトを作成しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
