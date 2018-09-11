class Topic < ApplicationRecord
  has_many :topic_quizzes
  validates :name, uniqueness: :true
  belongs_to :subject, optional: :true

end
