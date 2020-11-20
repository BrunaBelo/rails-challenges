class RemoveUsersFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tasks, :users, null: false, foreign_key: true
  end
end
