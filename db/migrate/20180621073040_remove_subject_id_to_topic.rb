class RemoveSubjectIdToTopic < ActiveRecord::Migration[5.1]
  def change
    # remove_reference :topics, :subject_id, foreign_key: true
  end
end
