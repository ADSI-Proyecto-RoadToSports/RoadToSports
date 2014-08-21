class Sport < ActiveRecord::Base
	
	validates :name, :presence => true
	validates :description, :presence => true
	validates :modality, :presence => true
	validates :rule, :presence =>true

  has_many :modalities
  has_many :tournaments
  has_many :teams, :dependent => :destroy

  belongs_to :modality
  belongs_to :rule

  def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 7).order("")
	end
end
