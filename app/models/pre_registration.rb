class PreRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :tournament
  belongs_to :acceptance
end
