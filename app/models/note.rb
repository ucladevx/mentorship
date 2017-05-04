class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :notetype

    mount_uploader :ufile, NoteUploader
end
