class AddProfessorToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :professor, :string
  end
end
