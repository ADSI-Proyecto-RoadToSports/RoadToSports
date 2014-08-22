module IntegrantesHelper

	def fut(cant,depo)
		
		if depo == 1 # FUTBOL

			if  cant >= 22
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 2 # AJEDREZ 

			if  cant >= 1
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 3 # BALONCESTO

			if  cant >= 10
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 4 # TENIS DE MESA

			if  cant >= 1
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 5 # VOLEIBOL

			if  cant >= 10
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 6 # ATLETISMO

			if  cant >= 1
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		elsif depo == 7 # MICRO

			if  cant >= 10
				"<div class=\"alert alert-dismissable alert-danger\">
				  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>
				  <strong>No se permiten agregar mas integrantes en este equipo.</strong>
				</div>".html_safe
			else
				link_to 'New Integrante', new_team_integrante_path(@team)
			end
		end


		
	end
end
