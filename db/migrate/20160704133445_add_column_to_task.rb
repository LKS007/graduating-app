class AddColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :author_id, :integer
    add_column :tasks, :current_user_id, :integer 
  end
end
