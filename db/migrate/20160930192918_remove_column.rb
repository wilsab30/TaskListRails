class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column("tasks", "Completed", :boolean)
  end
end
