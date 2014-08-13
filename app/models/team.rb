class Team < ActiveRecord::Base
  belongs_to :sport

  has_many :integrantes, :dependent => :destroy
end
