class AddTypeToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :type, :string
  end
end
