class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :notetype

    mount_uploader :ufile, NoteUploader

    def self.search(search)
      where("title LIKE ?", "%#{search}%")
      where("uclaclass LIKE ?", "%#{search}%")
      where("author LIKE ?", "%#{search}%")
      where("notetype LIKE ?", "%#{search}%")
    end
end
