class AddDefaultsToTasksTimestamps < ActiveRecord::Migration[7.1]
  def change
    change_column_default :tasks, :created_at, -> { 'CURRENT_TIMESTAMP' }
    change_column_default :tasks, :updated_at, -> { 'CURRENT_TIMESTAMP' }
  end
end
