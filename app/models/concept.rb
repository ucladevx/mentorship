class Concept < ApplicationRecord
  belongs_to :skill
  # validates :skill_id, presence: true
  has_many :question, dependent: :destroy
  #retrieve concepts in ascending order by order by default
  default_scope -> { order(:order) }
end
