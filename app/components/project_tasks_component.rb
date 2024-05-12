# frozen_string_literal: true

class ProjectTasksComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(project:, tasks:, completed: false)
    @project = project
    @tasks = tasks
    @completed = completed
  end

  def task_status_class
    @completed ? 'is-completed' : 'is-progress'
  end
end
