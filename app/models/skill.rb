class Skill < ApplicationRecord
  #if you destroy a skill you will destroy its associated concepts
  has_many :concept, dependent: :destroy

  def progress(u_id)
    unless u_id.nil?
      user = User.find_by id:u_id
      skill_concepts = self.concept
      skill_questions = []
      skill_concepts.each { |c|
        c.question.each{ |q|
          skill_questions.push(q.id)
        }
      }
      user_completed_questions = 0
      skill_questions.each{ |q|
        if user.progress.include?(q)
          user_completed_questions += 1
        end
      }
      return user_completed_questions *100 / skill_questions.length
    end

    return 0
  end

end
