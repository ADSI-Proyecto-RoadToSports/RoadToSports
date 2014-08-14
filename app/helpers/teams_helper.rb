module TeamsHelper
	def mostrar_activo(active)
		if active
			"<span class='label label-success'>Participa </span>".html_safe
		else
			"<span class='label label-danger'>No Participa </span>".html_safe
		end
	end
end