class ProjectsController < ApplicationController
  before_action :set_project, only: %w[show edit update]

  def show
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

  def edit
  end

  def update
    @project.update!(project_params)
    redirect_to project_path(@project), notice: 'プロジェクトを更新しました'
  end

  def destroy
  end

  private

    def project_params
      params.fetch(:project).permit(:name)
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
