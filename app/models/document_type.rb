class DocumentType < ActiveRecord::Base
	has_many :integrantes
	has_many :participantes
	has_many :users
end
