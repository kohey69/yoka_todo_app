module ApplicationHelper
  def project_path?(project)
    project&.persisted? && project_path(project)
  end
end
