# frozen_string_literal: true

class TaskCompleteFormComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
