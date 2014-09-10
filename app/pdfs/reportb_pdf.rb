class ReportbPdf < Prawn::Document
	def initialize(pbaloncestos)
		super(top_margin: 70)
		@pbaloncestos = pbaloncestos
		titulo
		cosas
		
	end
  def titulo
  	text "Datos De Toda La Tabla De Partidos Baloncesto", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "________________________________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	text " \n"
  	@pbaloncestos.map do |pbaloncesto|
  			con = con + 1
  			text " \n"
			#text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "Partido: #{con}", size: 10, style: :normal
			text "|Equipo1:#{pbaloncesto.equipo1}  |Encestas Equipo1:  #{pbaloncesto.puntos1}  |Puntos Equipo1:  #{pbaloncesto.puntoso1} ", size: 10, style: :normal
			text "|Equipo2:  #{pbaloncesto.equipo2}  |Encestas Equipo2:  #{pbaloncesto.puntos2}  |Puntos Equipo2:  #{pbaloncesto.puntoso2}", size: 10, style: :normal
			text "|Torneo:  #{pbaloncesto.tournament.name}  |Fecha:  #{pbaloncesto.fecha}", size: 10, style: :normal
			text "|Estado:  #{estado(pbaloncesto.estado)}  |Responsable:  #{pbaloncesto.user.nombre}", size: 10, style: :normal
			#text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.puntos1}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.puntoso1}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.equipo2}", size: 15, style: :normal, :align => :center
			#text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.puntos2}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.puntoso2}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.tournament.name}", size: 15, style: :normal, :align => :center
			#text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.fecha}", size: 15, style: :normal, :align => :center
			#text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{estado(pbaloncesto.estado)}", size: 15, style: :normal, :align => :center
			#text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pbaloncesto.user.nombre}", size: 15, style: :normal, :align => :center
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