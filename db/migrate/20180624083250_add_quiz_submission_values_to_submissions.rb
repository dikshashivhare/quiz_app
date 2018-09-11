class AddQuizSubmissionValuesToSubmissions < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :quiz_submission_values, :jsonb, null: :false, default: '{}'
  end
end
