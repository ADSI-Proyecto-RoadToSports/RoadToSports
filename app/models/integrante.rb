class Integrante < ActiveRecord::Base

	validates :nombre, :presence => true
	validates :document_type, :presence => true
	validates :documento, :presence => true
	validates :ficha, :presence => true

  belongs_to :document_type, :foreign_key => 'documenttype_id'
  belongs_to :team

  if :limite == true
  	Integrante.create()
  end

end
