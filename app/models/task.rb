class Task < ApplicationRecord
  extend Enumerize

  acts_as_list scope: :project
  enumerize :status, in: [:in_progress, :completed], default: :in_progress

  belongs_to :project

  scope :default_order, -> { order(position: :asc) }
  scope :in_progress, -> { where(status: 'in_progress') }
  scope :completed, -> { where(status: 'completed') }
end
