class FchLgMatch < ActiveRecord::Base
	
validates :startdate , :presence => true
	validates :endingdate , :presence => true
	validates :place , :presence => true
	validates :description , :presence => true
	validates :team , :presence => true
	validates :tournament , :presence => true
  belongs_to :tournament

  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
