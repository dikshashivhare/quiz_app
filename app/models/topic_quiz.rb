class TopicQuiz < ApplicationRecord
  has_many :multiple_choices
   accepts_nested_attributes_for :multiple_choices, reject_if: :all_blank, allow_destroy: true

end
