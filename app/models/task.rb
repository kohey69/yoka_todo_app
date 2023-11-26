class Task < ApplicationRecord
  belongs_to :project
  acts_as_list scope: :project

  scope :default_order, -> { order(position: :asc) }
end
