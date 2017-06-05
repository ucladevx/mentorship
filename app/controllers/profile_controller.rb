class ProfileController < ApplicationController
    @users = User.all
    @conversations = Conversation.all
end
