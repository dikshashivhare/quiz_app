class AddRefToMcqOption < ActiveRecord::Migration[5.1]
  def change
    add_reference :mcq_options, :multiple_choice, foreign_key: true
  end
end
