class AddSoftDeletedToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :soft_deleted, :boolean
  end
end
