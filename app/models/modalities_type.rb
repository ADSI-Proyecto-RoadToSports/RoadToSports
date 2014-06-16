class ModalitiesType < ActiveRecord::Base
	has_many :modalities
	has_many :tournaments
end
