class Project < ApplicationRecord
  acts_as_list

  has_many :tasks

  validates :name, presence: true, uniqueness: true

  scope :default_order, -> { order(position: :asc) }
end
