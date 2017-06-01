class AddProgressToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :progress, :int, array: true, default: []
    add_column :users, :mentor, :boolean
  end
end
