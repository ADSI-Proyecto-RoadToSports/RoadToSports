class Category < ActiveRecord::Base
	attr_accessible :title
	has_many :questions, :dependent => :destroy
end
