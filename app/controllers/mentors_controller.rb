class MentorsController < ApplicationController
  def index
      @users = User.all
      @conversations = Conversation.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
