class Preference < ActiveRecord::Base
  belongs_to :typepreference
  belongs_to :session
end
