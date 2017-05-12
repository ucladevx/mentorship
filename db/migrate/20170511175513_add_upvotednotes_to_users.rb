class AddUpvotednotesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :upvotednotes, :integer, array: true, default: []
  end
end
