class Integrante < ActiveRecord::Base

	validates :nombre, :presence => {message: "Este campo debe estar lleno"}
	validates :document_type, :presence => {message: "Este campo ebe estar lleno"}
	validates :documento, :presence => {message: "Este campo debe estar lleno"}
	validates :ficha, :presence => {message: "Este campo debe estar lleno"}
	validates :documento, :uniqueness => {message: "Ya existe este numero de documento"}
	validates :documento, :numericality => {message: "Ingrese solo numeros por favor"}

  belongs_to :document_type, :foreign_key => 'documenttype_id'
  belongs_to :team

  if :limite == true
  	Integrante.create()
  end

end
