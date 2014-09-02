class Match < ActiveRecord::Base
	validates :teamA, :presence => true
	validates :teamB, :presence =>true
	validates :modalitie, :presence =>true
	validates :tournament, :presence =>true 
	validates :score, :presence =>true
	validates :fchlgmatch, :presence =>true


  belongs_to :modalitie
  belongs_to :tournament
  belongs_to :score
  belongs_to :fchlgmatch

  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end

