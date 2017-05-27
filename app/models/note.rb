class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :notetype

    mount_uploader :ufile, NoteUploader

    scope :classes, -> (cls) {where uclaclass: cls}
    scope :professor, -> (prof) {where professor: prof}
    scope :type, -> (typ) {where notetype: typ}
end
