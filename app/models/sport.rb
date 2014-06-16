class Sport < ActiveRecord::Base
  belongs_to :modalitie
  belongs_to :rule

  def self.search(search, page)
		where(['upper(id) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("id")
	end
end
