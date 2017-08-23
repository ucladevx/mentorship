class AddConversationsToUsers < ActiveRecord::Migration[5.0]
  def change
      add_reference :users, :conversations, default: [], array: true
  end
end
