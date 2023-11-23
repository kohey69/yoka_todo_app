class Project < ApplicationRecord
  acts_as_list

  has_many :tasks, -> { order(position: :asc) }

  validates :name, presence: true, uniqueness: true

  # TODO acts_as_listを導入したらpositionが昇順で一番上のプロジェクトをデフォルトで表示するように
  scope :default_order, -> { order(position: :asc) }
end
