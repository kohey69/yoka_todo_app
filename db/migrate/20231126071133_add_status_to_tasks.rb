class AddStatusToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :completed_at, :datetime
    add_column :tasks, :description, :text
  end
end
