class Modalitie < ActiveRecord::Base
  has_many :pre_registrations
  has_many :sports

  belongs_to :activity
  belongs_to :tournament
  belongs_to :modalities_type
  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
