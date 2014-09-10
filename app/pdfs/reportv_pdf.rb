class ReportvPdf < Prawn::Document
	def initialize(pvoleibols)
		super(top_margin: 70)
		@pvoleibols = pvoleibols
		titulo
		cosas
		
	end
  def titulo
  	text "Datos De Toda La Tabla De Partidos Volibol", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "________________________________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	text " \n"
  	@pvoleibols.map do |pvoleibol|
  			con = con + 1
  			text " \n"
			#text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "Partido: #{con}", size: 10, style: :normal
			text "|Equipo1:#{pvoleibol.equipo1}  |Puntos Equipo1:  #{pvoleibol.puntos1}  |Puntos Torneo Equipo1:  #{pvoleibol.puntoso1} ", size: 10, style: :normal
			text "|Equipo2:  #{pvoleibol.equipo2}  |Puntos Equipo2:  #{pvoleibol.puntos2}  |Puntos Torneo Equipo2:  #{pvoleibol.puntoso2}", size: 10, style: :normal
			text "|Torneo:  #{pvoleibol.tournament.name}  |Fecha:  #{pvoleibol.fecha}", size: 10, style: :normal
			text "|Estado:  #{estado(pvoleibol.estado)}  |Responsable:  #{pvoleibol.user.nombre}", size: 10, style: :normal
			#text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.puntos1}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.puntoso1}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.equipo2}", size: 15, style: :normal, :align => :center
			#text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.puntos2}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.puntoso2}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.tournament.name}", size: 15, style: :normal, :align => :center
			#text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.fecha}", size: 15, style: :normal, :align => :center
			#text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{estado(pvoleibol.estado)}", size: 15, style: :normal, :align => :center
			#text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pvoleibol.user.nombre}", size: 15, style: :normal, :align => :center
			text " \n"
  	end
  end
  def estado(est)
  	if est
  		"Terminado"
  	else
  		"Pendiente"
  	end
  	
  end

end