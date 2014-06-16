class Acceptance < ActiveRecord::Base
  has_many :pre_registrations
  
  belongs_to :user
  belongs_to :rol
  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
