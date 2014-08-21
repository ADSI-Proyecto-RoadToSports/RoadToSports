class Activity < ActiveRecord::Base
	validates :name, :presence => true
	validates :state, inclusion: [true, false]
	validates :description, :presence => true
	def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
