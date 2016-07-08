class AddForeignKeyToTasks < ActiveRecord::Migration
  def change
    add_foreign_key :tasks, :users, column: :author_id
    add_foreign_key :tasks, :users, column: :current_user_id
  end
end
