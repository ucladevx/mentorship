class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :answers, default: [], array: true
      t.string :question_type
      t.string :final_answer
      t.text :content
      t.timestamps
    end
  end

  remove_column :concepts, :question_type, :string

end
