class ReportmPdf < Prawn::Document
	def initialize(pmicrofutbols)
		super(top_margin: 10)
		logo
		@pmicrofutbols = pmicrofutbols
		pmicrofutbol_details
		ayuda
		#logo_final
	end

  def logo
    logopath =  "#{Rails.root}/app/assets/images/logo.png"
    image logopath, :width => 60, :height => 60, :position => :center
    draw_text "Listado de Partidos de Microfutbol", :at => [104, 670], size: 22
  end

  #def logo_final
  #	move_down 260
  #	logopath =  "#{Rails.root}/app/assets/images/logo.png"
  #  image logopath, :width => 60, :height => 60, :position => :center
  #end

  def ayuda
  	move_down 10
  	text "En la tabla de partidos de microfutbol vemos un campo abreviado el cual significa lo siguiente:", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "-Com: significa estado del partido completo", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-Ped: significa estado del partido pendiente", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-una fila tiene como titulo Resp, esto significa responsable", size: 15, :align => :center, :color => [10, 20, 10, 80]
  end

  def pmicrofutbol_rows
    [["Equipo1", "Goles", "Puntos Torneo", "Equipo2", "Goles", "Puntos Torneo", "Fecha", "Estado", "Resp", "Torneo"]] +
    @pmicrofutbols.map do |pmicrofutbol|
      [ "#{pmicrofutbol.equipo1} ",
        "#{pmicrofutbol.puntos1} ",
        "#{pmicrofutbol.puntoso1} ",
        "#{pmicrofutbol.equipo2} ",
        "#{pmicrofutbol.puntos2} ",
        "#{pmicrofutbol.puntoso2} ",
        "#{pmicrofutbol.fecha} ",
        "#{estado(pmicrofutbol.estado)} ",
        "#{pmicrofutbol.user.nombre} ",
        "#{pmicrofutbol.tournament_id} "
      ]
    end
  end

  def pmicrofutbol_details
    move_down 40
    table pmicrofutbol_rows, :width => 550 do
      row(0).font_style = :bold
      row(0).border_top_width = 3
      row(-1).border_bottom_width = 3
      column(0).border_left_width = 3
      column(-1).border_right_width = 3
      columns(1..3).align = :left
      self.header = true
     self.column_widths = {0 => 60, 1 => 45, 2 => 50, 3 => 60, 4 => 45, 5 => 50, 6 => 72, 7 => 50, 8 => 68, 9 => 50}
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