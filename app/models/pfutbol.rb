class Pfutbol < ActiveRecord::Base

	belongs_to :tournament, :foreign_key => 'tournament_id'
	belongs_to :user, :foreign_key => 'user_id'
end
