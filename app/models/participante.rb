class Participante < ActiveRecord::Base
	
	validates :nombre, :presence => {message: "Este campo debe estar lleno"}
	validates :email, :presence => {message: "Este campo debe estar lleno"}
	validates :ficha, :presence => {message: "Este campo debe estar lleno"}
	validates :documento, :presence => {message: "Este campo debe estar lleno"}
	validates :documento, uniqueness: {message: "Ya existe este numero de documento"}
	validates :documento, :numericality => {message: "Ingrese solo numeros por favor"}

  belongs_to :sports, :foreign_key => 'sport_id'
  belongs_to :document_type, :foreign_key => 'document_type_id'
end
