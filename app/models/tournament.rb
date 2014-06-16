class Tournament < ActiveRecord::Base
  belongs_to :modalitiestype
  belongs_to :typetournament
  belongs_to :acceptance

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("name")
	end
end
