class AddTodayToBugs < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :today, :boolean, default: false
  end
end
