class ProfileController < ApplicationController
	@user = User.find_by(id: current_user.id)
    @users = User.all
    @conversations = Conversation.all
end
