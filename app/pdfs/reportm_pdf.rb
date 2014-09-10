class ReportmPdf < Prawn::Document
	def initialize(pmicrofutbols)
		super(top_margin: 70)
		@pmicrofutbols = pmicrofutbols
		titulo
		cosas
		
	end
  def titulo
  	text "Datos De Toda La Tabla De Partidos Microfutbol", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "________________________________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	text " \n"
  	@pmicrofutbols.map do |pmicrofutbol|
  			con = con + 1
  			text " \n"
			#text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "Partido: #{con}", size: 10, style: :normal
			text "|Equipo1:#{pmicrofutbol.equipo1}  |Goles Equipo1:  #{pmicrofutbol.puntos1}  |Puntos Equipo1:  #{pmicrofutbol.puntoso1} ", size: 10, style: :normal
			text "|Equipo2:  #{pmicrofutbol.equipo2}  |Goles Equipo2:  #{pmicrofutbol.puntos2}  |Puntos Equipo2:  #{pmicrofutbol.puntoso2}", size: 10, style: :normal
			text "|Torneo:  #{pmicrofutbol.tournament.name}  |Fecha:  #{pmicrofutbol.fecha}", size: 10, style: :normal
			text "|Estado:  #{estado(pmicrofutbol.estado)}  |Responsable:  #{pmicrofutbol.user.nombre}", size: 10, style: :normal
			#text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.puntos1}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.puntoso1}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.equipo2}", size: 15, style: :normal, :align => :center
			#text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.puntos2}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.puntoso2}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.tournament.name}", size: 15, style: :normal, :align => :center
			#text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.fecha}", size: 15, style: :normal, :align => :center
			#text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{estado(pmicrofutbol.estado)}", size: 15, style: :normal, :align => :center
			#text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pmicrofutbol.user.nombre}", size: 15, style: :normal, :align => :center
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