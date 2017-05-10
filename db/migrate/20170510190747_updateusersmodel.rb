class Updateusersmodel < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :usertype, :string, default: "s"
      add_column :users, :username, :string
      add_column :users, :ratingscore, :integer, default: 0
      add_column :users, :uploadednoteurls, :string, array: true, default: []
  end
end
