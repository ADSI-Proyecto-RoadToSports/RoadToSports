class Tournament < ActiveRecord::Base
  belongs_to :type_tournament
  belongs_to :acceptance
end
