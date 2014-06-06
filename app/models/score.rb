class Score < ActiveRecord::Base
  belongs_to :modalitie
  belongs_to :team
end
