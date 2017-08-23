class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #devise has it own validation like for presence
  UCLA_EMAIL_REGEX = /\A[\w+\-.]+@(g.)?ucla.edu\z/i
  validates :email, presence: true, length: { maximum: 255 },
                         format: { with: UCLA_EMAIL_REGEX }

  has_many :conversations, dependent: :destroy

  def class_progress(class_name)
    skills = Skill.all.classes(class_name)
    if skills.blank?
      return 0
    end
    total_progress = 0
    skills.each{ |s|
      total_progress += s.progress(self.id)
    }
    return ((total_progress*100.0) / (skills.length * 100.0)).round
  end

end
