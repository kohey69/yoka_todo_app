class Task < ApplicationRecord
  acts_as_list scope: :project

  belongs_to :project

  attribute :completed, :boolean
  alias_attribute :completed?, :completed

  scope :default_order, -> { order(position: :asc) }
  scope :in_progress, -> { where(completed_at: nil) }
  scope :completed, -> { where.not(completed_at: nil) }

  def completed
    self.completed_at.present?
  end

  def completed=(value)
    return if value.nil?

    bool_value = ActiveRecord::Type::Boolean.new.cast(value)
    if bool_value == true && completed_at.blank?
      self.completed_at = Time.current
    elsif bool_value == false && completed.present?
      self.completed_at = nil
    end
  end
end
