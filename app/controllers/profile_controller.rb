class ProfileController < ApplicationController
  def index
		if user_signed_in?
			@user = User.find_by id:current_user.id
		end
    @users = User.all
    @conversations = Conversation.all
    @skills = Skill.all
    @classes = ['CS 31', 'CS 32']
    @class_params = [{ucla_class: 'CS 31'}, {ucla_class: 'CS 32'}]
  end
end
