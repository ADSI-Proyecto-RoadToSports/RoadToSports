class Tournament < ActiveRecord::Base
	validates :name, :presence => true
	validates :state, inclusion: [true, false]
	validates :date, :presence =>true
	validates :modalitiestype_id, :presence =>true
	validates :typetournament_id, :presence =>true

  belongs_to :modalities_type, :foreign_key => 'modalitiestype_id'
  belongs_to :sport, :foreign_key => 'sport_id'
  belongs_to :type_tournament, :foreign_key => 'typetournament_id'

  has_many :teams, :dependent => :destroy
  has_many :pfutbols, :dependent => :destroy
  has_many :pbaloncestos, :dependent => :destroy
  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("name")
	end
end