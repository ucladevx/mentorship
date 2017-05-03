class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :type

    mount_uploader :url, NoteUploader
end
