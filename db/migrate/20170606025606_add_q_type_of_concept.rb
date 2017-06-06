class AddQTypeOfConcept < ActiveRecord::Migration[5.0]
  def change
    add_column :concepts, :question_type, :string
    remove_column :concepts, :type, :string
    add_column :concepts, :name, :string
  end
end
