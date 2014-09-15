module RulesHelper

	def rul(state)

		if state 
			" <span class=\"label label-success\">Habilitada</span>".html_safe
		else
			" <span class=\"label label-danger\">Deshabilitada</span>".html_safe
		end
	end

end
