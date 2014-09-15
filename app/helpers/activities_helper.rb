module ActivitiesHelper

	def esta(es)
		if es
			"<p class=\"text-success\">Realizada</p>".html_safe
		else
			"<p class=\"text-danger\">Por realizar</p>".html_safe
		end
	end
end
