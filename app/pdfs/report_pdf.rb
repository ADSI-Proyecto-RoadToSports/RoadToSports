class ReportPdf < Prawn::Document
	def initialize(pfutbols)
		super(top_margin: 70)
		@pfutbols = pfutbols
		titulo
		cosas
		
	end
  def titulo
  	text "Dato De Toda La Tabla De Partidos", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "_________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	@pfutbols.map do |pfutbol|
  			con = con + 1
  			text "Partido: #{con}"
			text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.equipo1}", size: 15, style: :normal, :align => :center
			text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.puntos1}", size: 15, style: :normal, :align => :center
			text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.puntoso1}", size: 15, style: :normal, :align => :center
			text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.equipo2}", size: 15, style: :normal, :align => :center
			text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.puntos2}", size: 15, style: :normal, :align => :center
			text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.puntoso2}", size: 15, style: :normal, :align => :center
			text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.tournament.name}", size: 15, style: :normal, :align => :center
			text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.fecha}", size: 15, style: :normal, :align => :center
			text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{estado(pfutbol.estado)}", size: 15, style: :normal, :align => :center
			text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "#{pfutbol.user.nombre}", size: 15, style: :normal, :align => :center
			text "_________________________________________________________", style: :bold, :align => :center
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