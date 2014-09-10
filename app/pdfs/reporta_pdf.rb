class ReportaPdf < Prawn::Document
	def initialize(pajedrezs)
		super(top_margin: 70)
		@pajedrezs = pajedrezs
		titulo
		cosas
		
	end
  def titulo
  	text "Datos De Toda La Tabla De Encuentros Ajedrez", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "________________________________________________________________________________\n", style: :bold, :align => :center
  end
  def cosas
  	con =0
  	text " \n"
  	@pajedrezs.map do |pajedrez|
  			con = con + 1
  			text " \n"
			#text "Nombre Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			text "Encuentro: #{con}", size: 10, style: :normal
			text "|Participante1: #{pajedrez.participante1}  |Puntos Participante1:  #{pajedrez.puntos1}", size: 10, style: :normal
			text "|Participante2: #{pajedrez.participante2}  |Puntos Participante2:  #{pajedrez.puntos2}", size: 10, style: :normal
			text "|Torneo:  #{pajedrez.tournament.name}  |Fecha:  #{pajedrez.fecha}", size: 10, style: :normal
			text "|Estado:  #{estado(pajedrez.estado)}  |Responsable:  #{pajedrez.user.nombre}", size: 10, style: :normal
			#text "Goles Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.puntos1}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Primer Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.puntoso1}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.equipo2}", size: 15, style: :normal, :align => :center
			#text "Goles Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.puntos2}", size: 15, style: :normal, :align => :center
			#text "Puntos Del Torneo Del Segundo Equipo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.puntoso2}", size: 15, style: :normal, :align => :center
			#text "Nombre Del Torneo:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.tournament.name}", size: 15, style: :normal, :align => :center
			#text "Fecha Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.fecha}", size: 15, style: :normal, :align => :center
			#text "Estado Del Partido Actual:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{estado(pajedrez.estado)}", size: 15, style: :normal, :align => :center
			#text "Reponsable Del Partido:", :color => [22, 81, 79, 30], style: :bold, :align => :center
			#text "#{pajedrez.user.nombre}", size: 15, style: :normal, :align => :center
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