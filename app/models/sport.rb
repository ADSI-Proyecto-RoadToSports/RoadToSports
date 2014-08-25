class Sport < ActiveRecord::Base
	
	validates :name, :presence => true
	validates :description, :presence => true
	validates :modalitiestype_id, :presence =>true
	#validates :rule, :presence =>true

	  has_many :tournaments
	  has_many :teams, :dependent => :destroy

	  belongs_to :modalities_type, :foreign_key => 'modalitiestype_id'

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 7).order("")
	end
end
