class ChangeUserRatingscoreFromIntToDecimal < ActiveRecord::Migration[5.0]
  def change
      remove_column :users, :ratingscore, :integer
      add_column :users, :ratingscore, :decimal
  end
end
