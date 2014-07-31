class Tournament < ActiveRecord::Base
  has_many :pre_registrations
  
  belongs_to :modalities_type, :foreign_key => 'modalitiestype_id'
  belongs_to :type_tournament, :foreign_key => 'typetournament_id'
  belongs_to :acceptance

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("name")
	end
end
