module GalleriesHelper

	def div(cont)
		if cont == 0
			"<div id='galeriao'>".html_safe
		else
			"<div id='galeria'>".html_safe
		end
	end

end
