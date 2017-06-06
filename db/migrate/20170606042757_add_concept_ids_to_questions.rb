class AddConceptIdsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :concept_id, :integer
    add_index :questions, :concept_id
    remove_column :concepts, :questions, :text
    remove_column :concepts, :answers, :text
    remove_column :skills, :concept_ids, :integer
  end
end
