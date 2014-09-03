module UsersHelper
	def rol_usuarioA(admin)
		if admin
			"<span class='label label-success'>Administrador</span>".html_safe
		else
				
		end
	end
	def rol_usuarioU(usuario)
		if usuario
			"<span class='label label-success'>Usuario</span>".html_safe
		else
						
		end
	end
	def rol_usuarioI(invitado)
		if invitado
			"<span class='label label-success'>Invitado</span>".html_safe
		else

		end
	end
end
