class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :notetype

    mount_uploader :ufile, NoteUploader

    def self.search(search)
      where("title LIKE ? OR uclaclass LIKE ?
         OR author LIKE ? OR notetype LIKE ?",
         "%#{search}%", "%#{search}%",
         "%#{search}%", "%#{search}%")
    end

    scope :classes, -> (cls) {where uclaclass: cls}
    scope :professor, -> (prof) {where author: prof}
    scope :type, -> (typ) {where notetype: typ}
end
