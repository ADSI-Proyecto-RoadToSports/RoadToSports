class User < ActiveRecord::Base
  has_many :pre_regitrations
  
  belongs_to :document_type
end
