class NotesController < ApplicationController
  def index
      @notes = Note.all
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
        @user.upvotednotes.delete(@note.id)
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
