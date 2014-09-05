class Participante < ActiveRecord::Base

	#validates :email, uniqueness: true
	#validates :documento, uniqueness: true


  belongs_to :sports, :foreign_key => 'sport_id'
  belongs_to :document_type, :foreign_key => 'document_type_id'
end
