class AddRefToMultipleChoice < ActiveRecord::Migration[5.1]
  def change
    add_reference :multiple_choices, :topic_quiz, foreign_key: true
  end
end
