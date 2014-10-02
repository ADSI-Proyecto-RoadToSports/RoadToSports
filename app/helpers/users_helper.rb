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
	def gen(genero)
		if genero == true
			"<span class='label label-success'>Masculino</span>".html_safe
		else
			"<span class='label label-info'>Femenino</span>".html_safe
		end
	end

end
