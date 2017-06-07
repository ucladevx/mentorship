class Skill < ApplicationRecord
  #if you destroy a skill you will destroy its associated concepts
  has_many :concept, dependent: :destroy

  def progress(s_id)
    if user_signed_in?
      @user = User.find_by id:current_user.id
      return 50
    else
      return 0
    end
end
