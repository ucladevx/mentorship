class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer :difficulty
      t.integer :order
      t.string :topic

      t.timestamps
    end
  end
end
