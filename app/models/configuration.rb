class Configuration < ActiveRecord::Base
  belongs_to :type_configuration
  belongs_to :user
end
