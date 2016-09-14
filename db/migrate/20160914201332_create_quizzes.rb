class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :description
      t.references :teacher, foreign_key: true

      t.timestamps
    end
    add_index :quizzes, [:teacher_id, :created_at]
  end
end
