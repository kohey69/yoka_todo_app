# frozen_string_literal: true

class TaskDetailComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(task:)
    @task = task
  end
end
