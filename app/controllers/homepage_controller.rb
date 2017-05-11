class HomepageController < ApplicationController
  def index
      @sortednotes = Note.all.order(reputation: :desc)
  end
end
