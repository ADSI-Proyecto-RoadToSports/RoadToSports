class ReportvPdf < Prawn::Document
	def initialize(pvoleibols)
		super(top_margin: 10)
		logo
		@pvoleibols = pvoleibols
		pvoleibol_details
		ayuda
		#logo_final
	end

  def logo
    logopath =  "#{Rails.root}/app/assets/images/logo.png"
    image logopath, :width => 60, :height => 60, :position => :center
    draw_text "Listado de Partidos de Voleibol", :at => [123, 670], size: 22
  end

  #def logo_final
  #	move_down 260
  #	logopath =  "#{Rails.root}/app/assets/images/logo.png"
  #  image logopath, :width => 60, :height => 60, :position => :center
  #end

  def ayuda
  	move_down 10
  	text "En la tabla de partidos de voleibol vemos un campo abreviado el cual significa lo siguiente:", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "-Com: significa estado del partido completo", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-Ped: significa estado del partido pendiente", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-una fila tiene como titulo Resp, esto significa responsable", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-dos filas tienen como titulo Antc, esto significa anotaciones", size: 15, :align => :center, :color => [10, 20, 10, 80]
  end
  
  def pvoleibol_rows
    [["Equipo1", "Antc", "Puntos Torneo", "Equipo2", "Antc", "Puntos Torneo", "Fecha", "Estado", "Resp", "Torneo"]] +
    @pvoleibols.map do |pvoleibol|
      [ "#{pvoleibol.equipo1} ",
        "#{pvoleibol.puntos1} ",
        "#{pvoleibol.puntoso1} ",
        "#{pvoleibol.equipo2} ",
        "#{pvoleibol.puntos2} ",
        "#{pvoleibol.puntoso2} ",
        "#{pvoleibol.fecha} ",
        "#{estado(pvoleibol.estado)} ",
        "#{pvoleibol.user.nombre} ",
        "#{pvoleibol.tournament_id} "
      ]
    end
  end

  def pvoleibol_details
    move_down 40
    table pvoleibol_rows, :width => 558 do
      row(0).font_style = :bold
      row(0).border_top_width = 3
      row(-1).border_bottom_width = 3
      column(0).border_left_width = 3
      column(-1).border_right_width = 3
      columns(1..3).align = :left
      self.header = true
      self.column_widths = {0 => 60, 1 => 49, 2 => 50, 3 => 60, 4 => 49, 5 => 50, 6 => 72, 7 => 50, 8 => 68, 9 => 50}
    end
  end

  def estado(est)
  	if est
  		"Com"
  	else
  		"Ped"
  	end
  	
  end

end