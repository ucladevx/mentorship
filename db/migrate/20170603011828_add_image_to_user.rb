class AddImageToUser < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :image, :string, default: '/public/profileimage/1.png'
  end
end
