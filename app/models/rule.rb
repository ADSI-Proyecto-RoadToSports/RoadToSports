class Rule < ActiveRecord::Base

	validates :name, :presence => true
	validates :description, :presence => true
	validates :state, inclusion: [true, false]
	
	has_many :sports
	
	def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
