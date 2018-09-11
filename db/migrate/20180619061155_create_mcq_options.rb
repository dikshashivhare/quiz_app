class CreateMcqOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :mcq_options do |t|
      t.string :option
      t.boolean :is_correct

      t.timestamps
    end
  end
end
