class TiposConfigController < ApplicationController
  def index
  	@document_types = DocumentType.all
  	@modalities_types = ModalitiesType.all
  	@type_tournaments = TypeTournament.all
  	@type_rules = TypeRule.all
  end
end
