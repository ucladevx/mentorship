class ProfileController < ApplicationController
  def index
		if user_signed_in?
			@user = User.find_by id:current_user.id
		end
    @users = User.all
    @conversations = Conversation.all
  end
end
