class Concept < ApplicationRecord
  belongs_to :skill
  # validates :skill_id, presence: true

  #retrieve concepts in ascending order by order by default
  default_scope -> { order(:order) }
end
