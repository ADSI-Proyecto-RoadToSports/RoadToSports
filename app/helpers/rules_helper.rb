module RulesHelper

	def rule(sta)

		if sta 
			" <p class=\"text-success\">Habilitada</p>".html_safe
		else
			" <p class=\"text-danger\">Deshabilitada</p>".html_safe
		end
	end

end
