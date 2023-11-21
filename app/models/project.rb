class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  # TODO acts_as_listを導入したらpositionが昇順で一番上のプロジェクトをデフォルトで表示するように
  scope :default_order, -> { order(id: :asc) }
end
