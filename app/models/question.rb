class Question < ActiveRecord::Base
	attr_accessible :category_id, :title , :descripcion
	belongs_to :category 
	has_many :comments
end
