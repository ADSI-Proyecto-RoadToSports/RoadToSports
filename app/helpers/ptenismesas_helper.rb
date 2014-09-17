module PtenismesasHelper
	def gan(g)
		if g
			"<span class='label label-success'>Ganó</span>".html_safe
		else
			"<span class='label label-danger'>Perdió</span>".html_safe
		end
	end

	def em()
		"<span class='label label-primary'>Empataron</span>".html_safe
	end
end
