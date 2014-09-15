class Novelty < ActiveRecord::Base
	
	validates :name, :presence => true
	validates :description, :presence => true

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 6).order("id")
	end
end
