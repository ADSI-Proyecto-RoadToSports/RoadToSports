class ReportaPdf < Prawn::Document
	def initialize(pajedrezs)
		super(top_margin: 10)
		logo
		@pajedrezs = pajedrezs
		pajedrez_details
		ayuda
		#logo_final
	end
  def logo
    logopath =  "#{Rails.root}/app/assets/images/logo.png"
    image logopath, :width => 60, :height => 60, :position => :center
    draw_text "Listado de Encuentros de Ajedrez", :at => [123, 670], size: 22
  end

  #def logo_final
  #	move_down 260
  #	logopath =  "#{Rails.root}/app/assets/images/logo.png"
  #  image logopath, :width => 60, :height => 60, :position => :center
  #end

  def ayuda
  	move_down 10
  	text "En la tabla de encuentros de ajedrez vemos un campo abreviado el cual significa lo siguiente:", size: 15, style: :bold, :align => :center, :color => [10, 81, 10, 80]
  	text "-Com: significa estado del partido completo", size: 15, :align => :center, :color => [10, 20, 10, 80]
  	text "-Ped: significa estado del partido pendiente", size: 15, :align => :center, :color => [10, 20, 10, 80]
  end

  def pajedrez_rows
    [["Participante1", "Puntos", "Participante2", "Puntos", "Fecha", "Estado", "Responsable", "Torneo"]] +
    @pajedrezs.map do |pajedrez|
      [ "#{pajedrez.participante1} ",
        "#{pajedrez.puntos1} ",
        "#{pajedrez.participante1} ",
        "#{pajedrez.puntos2} ",
        "#{pajedrez.fecha} ",
        "#{estado(pajedrez.estado)} ",
        "#{pajedrez.user.nombre} ",
        "#{pajedrez.tournament_id} "
      ]
    end
  end

  def pajedrez_details
    move_down 40
    table pajedrez_rows, :width => 527 do
      row(0).font_style = :bold
      row(0).border_top_width = 3
      row(-1).border_bottom_width = 3
      column(0).border_left_width = 3
      column(-1).border_right_width = 3
      columns(1..3).align = :left
      self.header = true
      self.column_widths = {0 => 85, 1 => 50, 2 => 85, 3 => 50, 4 => 72, 5 => 50, 6 => 85, 7 => 50}
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