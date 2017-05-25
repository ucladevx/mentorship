class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #devise has it own validation like for presence
  UCLA_EMAIL_REGEX = /\A[\w+\-.]+@(g.)*ucla.edu\z/i
  validates :email, presence: true, length: { maximum: 255 },
                         format: { with: UCLA_EMAIL_REGEX }
end
