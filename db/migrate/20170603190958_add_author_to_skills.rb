class AddAuthorToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :author, :string
    add_column :skills, :concept_ids, :integer, array: true, default: []
  end
end
