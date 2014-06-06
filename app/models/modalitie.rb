class Modalitie < ActiveRecord::Base
  belongs_to :activity
  belongs_to :tournament
  belongs_to :modalities_type
end
