class CreateTopicQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_quizzes do |t|
      t.string :name
      t.text :description
      t.text :rules

      t.timestamps
    end
  end
end
