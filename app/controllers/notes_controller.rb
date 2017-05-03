class NotesController < ApplicationController
  def index
      @notes = Note.all
    #   raise @notes.to_json
  end

  def new
      @note = Note.new
  end

  def create
      @note = Note.new(note_params)

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

  private
    def note_params
        params.require(:note).permit(:title, :uclaclass, :author, :notetype, :ufile)
    end
end
