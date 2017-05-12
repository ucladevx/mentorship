class HomepageController < ApplicationController
  def index
      @sortednotes = Note.all.order(reputation: :desc)
      @notes = Note.all
      if user_signed_in?
        @user = User.find_by id:current_user.id
      end
  end

  helper_method :resource_name, :resource, :devise_mapping
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
