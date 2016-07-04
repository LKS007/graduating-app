class AddDefaultStateToTask < ActiveRecord::Migration
  def change
    change_column :tasks, :state, :string, null: :false, default: :new
  end
end
