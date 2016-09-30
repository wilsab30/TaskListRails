class AddNewcolumn< ActiveRecord::Migration
  def change
    add_column("Tasks", "finished", :boolean)
  end
end
