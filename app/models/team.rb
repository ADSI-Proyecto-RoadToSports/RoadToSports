class Team < ActiveRecord::Base
	validates :nombre, :presence => true
  belongs_to :sport
  belongs_to :tournament

  has_many :integrantes, :dependent => :destroy
  
end

