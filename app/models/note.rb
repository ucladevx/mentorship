class Note < ApplicationRecord
    validates_presence_of :title, :uclaclass, :author, :notetype

    mount_uploader :ufile, NoteUploader

    #check every field for notes and return the combined set of them
    def self.search(params)
      t = Note.arel_table
      notes = Note.all #needed if no search
      if params[:search].present?
        notes = Note.where(t[:title].matches('%'+params[:search]+'%')
                          .or(t[:professor].matches('%'+params[:search]+'%'))
                          .or(t[:uclaclass].matches('%'+params[:search]+'%'))
                          .or(t[:notetype].matches('%'+params[:search]+'%'))
                          )
      end
      return notes
    end

    scope :classes, -> (cls) {where uclaclass: cls}
    scope :professor, -> (prof) {where professor: prof}
    scope :type, -> (typ) {where notetype: typ}
end
