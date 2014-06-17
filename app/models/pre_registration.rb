class PreRegistration < ActiveRecord::Base
  belongs_to :modalities_type
  belongs_to :sport
  belongs_to :tournament
  belongs_to :acceptance

  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
