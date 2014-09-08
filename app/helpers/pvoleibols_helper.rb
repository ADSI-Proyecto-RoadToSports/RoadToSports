module PvoleibolsHelper
	def gano()
		"<span class='label label-success'>Ganaron</span>".html_safe
	end

	def empate()
		"<span class='label label-primary'>Empataron</span>".html_safe
	end

	def perdio()
		"<span class='label label-danger'>Perdieron</span>".html_safe
	end

	def estado(est)
		if est
			"Terminado"
		else
			"Pendiente"
		end
	end
end
