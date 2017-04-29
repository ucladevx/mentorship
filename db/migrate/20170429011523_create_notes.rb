class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :class
      t.integer :reputation
      t.string :url

      t.timestamps
    end
  end
end
