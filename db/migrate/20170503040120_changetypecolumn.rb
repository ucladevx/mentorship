class Changetypecolumn < ActiveRecord::Migration[5.0]
  def change
      rename_column :notes, :type, :notetype
  end
end
