module PajedrezsHelper

	def gano2()
		"<span class='label label-success'>Ganó</span>".html_safe
	end

	def empate2()
		"<span class='label label-primary'>Empataron</span>".html_safe
	end

	def perdio2()
		"<span class='label label-danger'>Perdió</span>".html_safe
	end

	def estado(est)
		if est
			"Terminado"
		else
			"Pendiente"
		end
	end
end
