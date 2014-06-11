class Configuration < ActiveRecord::Base
  belongs_to :typeconfiguration
  belongs_to :user
end
