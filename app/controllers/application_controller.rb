class ApplicationController < ActionController::Base
  before_action :set_projects

  private
  def set_projects
    @projects = Project.default_order
  end
end
