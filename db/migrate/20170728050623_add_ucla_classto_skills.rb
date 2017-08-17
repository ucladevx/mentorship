class AddUclaClasstoSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :ucla_class, :string
  end
end
