class CreateConcepts < ActiveRecord::Migration[5.0]
  def change
    create_table :concepts do |t|
      t.string :examples, array: true, default: []
      t.string :description
      t.string :answers, array:true, default: []
      t.string :questions, array:true, default: []
      t.string :type

      t.timestamps
    end
  end
end
