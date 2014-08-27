module TournamentsHelper
	def mostrar_estado(state)
		if state 
			"<span class='label label-success'>Activo </span>".html_safe
		else
			"<span class='label label-danger'>Inactivo </span>".html_safe
		end
	end
end
