class Updateusersmodel < ActiveRecord::Migration[5.0]
  def change
      add_column :notes, :usertype, :string, default: "s"
      add_column :notes, :username, :string
      add_column :notes, :ratingscore, :integer, default: 0
      add_column :notes, :uploadednoteurls, :string, array: true, default: []
  end
end
