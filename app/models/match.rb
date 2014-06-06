class Match < ActiveRecord::Base
  belongs_to :modalitie
  belongs_to :tournament
  belongs_to :score
  belongs_to :fch_lg_match
end
