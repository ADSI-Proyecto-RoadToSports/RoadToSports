class ReportPdf < Prawn::Document
	def initialize(pfutbols)
		super(top_margin: 70)
		@pfutbols = pfutbols
		titulo
		cosas
		
	end
  def titulo
  	text "Datos De Toda La Tabla De Partidos Futbol", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "________________________________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	text " \n"
  	@pfutbols.map do |pfutbol|
  			con = con + 1
  			text " \n"
			#text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "Partido: #{con}", size: 10, style: :normal
			text "|Equipo1:#{pfutbol.equipo1}  |Goles Equipo1:  #{pfutbol.puntos1}  |Puntos Equipo1:  #{pfutbol.puntoso1} ", size: 10, style: :normal
			text "|Equipo2:  #{pfutbol.equipo2}  |Goles Equipo2:  #{pfutbol.puntos2}  |Puntos Equipo2:  #{pfutbol.puntoso2}", size: 10, style: :normal
			text "|Torneo:  #{pfutbol.tournament.name}  |Fecha:  #{pfutbol.fecha}", size: 10, style: :normal
			text "|Estado:  #{estado(pfutbol.estado)}  |Responsable:  #{pfutbol.user.nombre}", size: 10, style: :normal
			#text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.puntos1}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.puntoso1}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.equipo2}", size: 15, style: :normal, :align => :center
			#text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.puntos2}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.puntoso2}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.tournament.name}", size: 15, style: :normal, :align => :center
			#text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.fecha}", size: 15, style: :normal, :align => :center
			#text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{estado(pfutbol.estado)}", size: 15, style: :normal, :align => :center
			#text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pfutbol.user.nombre}", size: 15, style: :normal, :align => :center
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