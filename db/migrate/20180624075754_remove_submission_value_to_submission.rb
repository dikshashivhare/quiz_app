class RemoveSubmissionValueToSubmission < ActiveRecord::Migration[5.1]
  def change
    remove_column :submissions, :submission_value, :jsonb
  end
end
