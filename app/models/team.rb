class Team < ActiveRecord::Base
  belongs_to :sport
  belongs_to :tournament

  has_many :integrantes, :dependent => :destroy
  
end
