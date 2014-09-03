# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

document_types = [{name: "C.C", description: "Cedula de ciudadania"},
				{name: "T.I", description: "Tarjeta de identidad"},
				{name: "R.C", description: "Registro Civil"},
				{name: "C.E", description: "Cedula extrangeria"}]
document_types.each do |document_type|
	DocumentType.create(document_type) unless DocumentType.exists?(document_type)
end