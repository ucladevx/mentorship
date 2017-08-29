class AddMessagesToConversations < ActiveRecord::Migration[5.0]
  def change
    add_reference :conversations, :messages, default: [], array: true
  end
end
