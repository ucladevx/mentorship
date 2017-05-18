class NotesController < ApplicationController
  def index
      #note Note.search is defined in note model
      @notes = Note.search(params[:search])
      @notes = @notes.classes(params[:classes]) if params[:classes].present?
      @notes = @notes.professor(params[:professor]) if params[:professor].present?
      @notes = @notes.type(params[:type]) if params[:type].present?
      @note = Note.new
      if user_signed_in?
        @user = User.find_by id:current_user.id
      end
    #   raise @notes.to_json
  end

  def new
      @note = Note.new
  end

  def create
      @note = Note.new(note_params)
      @note.reputation = 0
      if @note.save
          redirect_to notes_path, notice: "The note #{@note.title} has been uploaded."
      else
          render "new"
      end
  end

  def destroy
      @note = Note.find(params[:id])
      @note.destroy
      redirect_to notes_path, notice: "The note #{@note.title} has been deleted."
  end

  def upvote
    if user_signed_in?
      @user = User.find_by id:current_user
      @note = Note.find(params[:format])
      if @user.upvotednotes.include?(@note.id)
        @note.reputation-=1
        @user.upvotednotes.delete(@note.id)
        @note.save
        @user.save
      else
        @note.reputation+=1
        @user.upvotednotes.push(@note.id)
        @note.save
        @user.save
      end
    end
  end

  private
    def note_params
        params.require(:note).permit(:title, :uclaclass, :author, :notetype, :ufile)
    end

end
