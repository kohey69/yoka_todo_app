# frozen_string_literal: true

class TaskDetailComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
