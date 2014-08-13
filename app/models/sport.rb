class Sport < ActiveRecord::Base
  has_many :modalities
  has_many :teams, :dependent => :destroy

  belongs_to :modality
  belongs_to :rule

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("")
	end
end
