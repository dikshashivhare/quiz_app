class CreateMultipleChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :multiple_choices do |t|
      t.text :question

      t.timestamps
    end
  end
end
