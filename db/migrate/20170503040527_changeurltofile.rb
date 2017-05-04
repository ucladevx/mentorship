class Changeurltofile < ActiveRecord::Migration[5.0]
  def change
      rename_column :notes, :url, :ufile
  end
end
