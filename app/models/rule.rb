class Rule < ActiveRecord::Base

	validates :name, :presence => true
	validates :description, :presence => true
	validates :state, inclusion: [true, false]
	
	has_many :sports
	belongs_to :sport, :foreign_key => 'sport_id'
	belongs_to :type_rule, :foreign_key => 'type_rule_id'
	def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("sport_id")
	end
end
