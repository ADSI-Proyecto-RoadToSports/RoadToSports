class Integrante < ActiveRecord::Base
  belongs_to :document_type
  belongs_to :team

  if :limite == true
  	Integrante.create()
  end

end
