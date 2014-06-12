class TiposConfigController < ApplicationController
  def index
  	@document_types = DocumentType.all
  	@modalities_types = ModalitiesType.all
  	@new_types = NewType.all
  	@type_tournaments = TypeTournament.all
  	@type_rules = TypeRule.all
  end
end
