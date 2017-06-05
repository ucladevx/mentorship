class AddOrderToConcepts < ActiveRecord::Migration[5.0]
  def change
    add_column :concepts, :order, :integer
  end
end
