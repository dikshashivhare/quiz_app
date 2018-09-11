class Submission < ApplicationRecord
  belongs_to :topic_quiz, optional: true
  belongs_to :user, optional: true
end
