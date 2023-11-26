class AddStatusToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :status, :string, default: 'in_progress'
    add_column :tasks, :description, :text
  end
end