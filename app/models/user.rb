class User < ActiveRecord::Base
  belongs_to :document_type
end
