class AddTodayToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :today, :boolean, default: false

    remove_column :bugs, :today, :boolean, default: false
  end
end
