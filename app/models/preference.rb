class Preference < ActiveRecord::Base
  belongs_to :type_preference
  belongs_to :session
end
