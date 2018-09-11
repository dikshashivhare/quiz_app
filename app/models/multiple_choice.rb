class MultipleChoice < ApplicationRecord
  has_many :mcq_options, dependent: :destroy
  accepts_nested_attributes_for :mcq_options, reject_if: :all_blank, allow_destroy: true

end
