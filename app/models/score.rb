class Score < ActiveRecord::Base

	validates :description, :presence => true
	validates :datescore, :presence => true
	validates :modalitie , :presence => true
	validates :team, :presence => true
	
  belongs_to :modalitie
  belongs_to :team

  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
