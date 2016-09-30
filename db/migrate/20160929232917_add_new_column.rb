class AddNewColumn < ActiveRecord::Migration
  def change
    add_column("Tasks", "Completed", :boolean)
  end
end
