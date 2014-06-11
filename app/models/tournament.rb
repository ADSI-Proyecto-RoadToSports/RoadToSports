class Tournament < ActiveRecord::Base
  belongs_to :modalitiestype
  belongs_to :typetournament
  belongs_to :acceptance
end
