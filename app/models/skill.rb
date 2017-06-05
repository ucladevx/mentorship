class Skill < ApplicationRecord
  #if you destroy a skill you will destroy its associated concepts
  has_many :concepts, dependent: :destroy

  def progress
    return 65
  end
end
