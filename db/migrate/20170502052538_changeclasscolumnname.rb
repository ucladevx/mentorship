class Changeclasscolumnname < ActiveRecord::Migration[5.0]
  def change
      rename_column :notes, :class, :uclaclass
  end
end
