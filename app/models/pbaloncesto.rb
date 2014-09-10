class Pbaloncesto < ActiveRecord::Base

	belongs_to :tournament, :foreign_key => 'tournament_id'
	belongs_to :user, :foreign_key => 'user_id'


	def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 10).order("fecha")
	end


end
