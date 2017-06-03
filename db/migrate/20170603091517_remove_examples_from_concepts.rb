class RemoveExamplesFromConcepts < ActiveRecord::Migration[5.0]
  def change
    remove_column :concepts, :examples, :string
    remove_column :concepts, :answers, :string
    remove_column :concepts, :questions, :string

    add_column :concepts, :examples, :text, array: true, default: []
    add_column :concepts, :answers, :text, array: true, default: []
    add_column :concepts, :questions, :text, array: true, default: []
    add_column :concepts, :skill_id, :integer
    add_index :concepts, [:skill_id]
  end
end
