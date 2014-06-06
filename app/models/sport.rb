class Sport < ActiveRecord::Base
  belongs_to :modalitie
  belongs_to :rule
end
