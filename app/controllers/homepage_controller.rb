class HomepageController < ApplicationController
  def index
      @sortednotes = Note.all.order(reputation: :desc)
      @notes = Note.all
      if user_signed_in?
        @user = User.find_by id:current_user.id
      end
  end
end
