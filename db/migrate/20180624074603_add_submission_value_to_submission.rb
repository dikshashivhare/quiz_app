class AddSubmissionValueToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :submission_value, :jsonb
  end
end
