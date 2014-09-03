class Rule < ActiveRecord::Base

	validates :name, :presence => true
	validates :description, :presence => true
	validates :state, inclusion: [true, false]
	
	has_many :sports
	belongs_to :sport, :foreign_key => 'sport_id'
	def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 4).order("sport_id")
	end
end
