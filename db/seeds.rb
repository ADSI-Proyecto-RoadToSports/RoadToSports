# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Para acceder al aplicativo se le ha definido un usuario admin por defecto con el cual podra hacer todo lo que usted necesite realizar en este aplicativo
#El usuario es: sportsena.cfdcm@gmail.com
#La password es: SportSena
document_types = [{name: "C.C", description: "Cedula de ciudadania"},
				{name: "T.I", description: "Tarjeta de identidad"},
				{name: "R.C", description: "Registro Civil"},
				{name: "C.E", description: "Cedula extrangeria"}]
document_types.each do |document_type|
	DocumentType.create(document_type) unless DocumentType.exists?(document_type)
end



modalities_types = [{name: "Individual", description: "Solo puede  participar un sujeto"},
					{name: "Grupal", description: "Solo participan cierta cantidad un sujetos"}]
modalities_types.each do |modalities_type|
	ModalitiesType.create(modalities_type) unless ModalitiesType.exists? (modalities_type)
end



type_tournaments = [{name: "Mixto", description: "Participan Hombres Y Mujeres"},
					{name: "Masculino", description: "Participan Hombres"},
					{name: "Femenino", description: "Participan Mujeres"}]
type_tournaments.each do |type_tournament|
	TypeTournament.create(type_tournament) unless TypeTournament.exists? (type_tournament)
end



type_rules = [{name: "Leve", description: "Falta o Regla que no tiene mucha importancia"},
			  {name: "Grave", description: "Falta o Regla que tiene Algo de importancia"},
			  {name: "Gravisima", description: "Falta o Regla que tiene Demaciada importancia"}]
type_rules.each do |type_rule|
	TypeRule.create(type_rule) unless TypeRule.exists? (type_rule)
end

rules = [{name: "Regla del Terreno de juego:", description: "*El terreno de juego debe ser de césped natural o artificial, aunque esta opción puede depender del reglamento de la competición. El terreno deberá ser rectangular, siendo su largo entre 90 y 120 m (100 y 110m para partidos internacionales), y su ancho entre 45 y 90m (64 y 75m para partidos internacionales). ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla del Balón:", description: "*El balón o pelota es un objeto con forma de esfera utilizado para la práctica del fútbol. Deberá ser de cuero u otro material adecuado. Su circunferencia será de entre 68 y 70cm, su masa de entre 410 y 450g, y su presión de entre 0,6 y 1,1atm al nivel del mar. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla del Número de jugadores:", description: "*Cada uno de los dos equipos que disputan un partido podrá tener un máximo de 11 futbolistas dentro del terreno, y no menos de 7, aunque este último número puede variar según la competición. Uno de los futbolistas debe ser el guardameta.\nEn competiciones oficiales se podrán hacer hasta 3 cambios en un mismo partido por equipo, y se podrán tener en el banco de 3 a 7 suplentes, dependiendo del reglamento de la competición. Para partidos de selecciones internacionales, se podrán tener hasta 6 suplentes en el banco. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla del Equipamiento de los jugadores:", description: "*Por cuestiones de seguridad, los jugadores no podrán llevar elementos que puedan resultar peligrosos para ellos mismos o para los demás. Todo tipo de joyería esta prohibido durante un partido, incluso si las mismas están cubiertas por algún tipo de cinta adhesiva.\nCada jugador deberá tener las siguientes prendas y objetos en su indumentaria: \n* Camiseta o jersey con mangas (Cortas o largas) \n* Pantalones cortos \n* Medias \n* Canilleras o espinilleras \n* Calzado adecuado ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla del Árbitro:", description: "*El árbitro es quien tendrá la autoridad total para hacer cumplir las reglas de juego en el partido para el que ha sido nombrado. Todas las decisiones del árbitro son definitivas. Solo él puede modificar una decisión, siempre que no haya reanudado el juego o el partido haya finalizado. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla del Árbitros asistentes: ", description: "*Además del árbitro principal hay dos árbitros asistentes, que son los encargados de ayudar al árbitro en toma de decisiones particulares por su ubicación en el campo. Los asistentes tiene la misión de indicar las siguientes situaciones, decisión que podrá ser aceptada o no por el árbitro principal: \n* El balón ha traspasado los límites del terreno. \n* A qué equipo corresponde realizar un saque de esquina, de meta o de banda. \n* Posición de fuera de juego. \n* Sustitución de jugadores. \n* Infracciones o incidentes fuera del campo visual del árbitro principal. \n* Infracciones o incidentes cercanos al asistente. \n* Si el guardameta se adelanta en un penal, o la pelota no ingresó a la meta por completo. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de la Duración del partido:", description: "*Cada partido se juega en dos periodos de 45 minutos cada uno, salvo que por mutuo acuerdo entre el árbitro y los dos equipos participantes se convenga otra cosa. Los cambios de duración de cada periodo deberán tomarse antes del inicio del partido y conforme al reglamento de la competición. Entre ambos periodos se realizará un descanso de 15 minutos como máximo. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de Inicio y reanudación del juego:", description: "*Previo al comienzo del partido, los capitanes de ambos equipos se reúnen con el árbitro principal en el centro del campo. Uno de ellos elige un lado de una moneda que será lanzada por el árbitro. El jugador que acierte de que lado cayó la moneda deberá elegir hacia que meta atacará su equipo, mientras que el otro iniciará el partido moviendo del centro del campo. Para el segundo tiempo, los equipos cambiaran de meta y moverá el equipo que ganó el sorteo. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de Balón en juego o fuera de juego:", description: "*El balón se considera fuera de juego (no confundir con la regla del offside) cuando ha traspasado por completo los limites del terreno o el árbitro ha interrumpido el juego. Cabe destacar que las líneas del terreno forman parte del campo de juego, y no se consideran como exteriores. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de Gol marcado:", description: "*Se marca un gol cuando el balón cruza completamente la línea de meta entre los postes verticales y por debajo del travesaño de la meta, siempre y cuando el equipo que anota no haya infringido las reglas del juego previamente.", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de Fuera de lugar: ", description: "*Un jugador está en posición de fuera de lugar si, al recibir un pase de uno de sus compañeros se encuentra más cerca de la línea de meta contraria que el balón y el penúltimo adversario y está en la mitad del campo del equipo contrario, salvo que ese pase recibido sea directamente de un saque de meta, de banda o de esquina. ", sport_id: 1, type_rule_id: 2, state: true },
		{name: "Regla de Faltas e incorrecciones: ", description: "*El árbitro concederá un tiro libre directo al equipo rival del jugador que cometa una de las siguientes infracciones:  \n\n*El árbitro es quien tendrá la autoridad total para hacer cumplir las reglas de juego en el partido para el que ha sido nombrado. Todas las decisiones del árbitro son definitivas. Solo él puede modificar una decisión, siempre que no haya reanudado el juego o el partido haya finalizado. \n*Aparte de controlar que se respeten las otras reglas, el árbitro debe cronometrar y tomar nota de los incidentes del partido, interrumpir, suspender o finalizar el partido de ser necesario, expulsar a cualquier funcionario o persona externa del campo de juego, e incluso fuera del escenario. \n*Interrumpirá el juego si considera que un jugador sufrió una lesión grave, y podrá continuar el juego si a su parecer la lesión es leve. En este último caso, cuando el juego se interrumpa por otro motivo permitirá el ingreso de asistentes para tratar al jugador lesionado. \n*Se asegurará que todo jugador que sufra una hemorragia abandone el campo de juego. El mismo podrá reingresar en una interrupción, luego de una verificación del árbitro. \nLe mostrará tarjeta amarilla o roja a todo jugador que cometa una infracción merecedora de la misma. En caso de que un jugador cometa más de una infracción al mismo tiempo, el árbitro castigará la más grave. \n*Permitirá que el juego continúe si el equipo contra el cual se ha cometido una infracción se beneficia de una ventaja, y sancionará la infracción cometida inicialmente si la ventaja prevista no se cumple en ese momento. A esta acción se la conoce popularmente como Ley de Ventaja, a pesar de que no es una ley en sí. \n*En caso de que una infracción suceda fuera de su campo visual, actuará conforma a las indicaciones de sus árbitros asistentes. \n*Terminado el partido emitirá un informe con los detalles del partido a las autoridades competentes. ", sport_id: 1, type_rule_id: 2, state: true },]
rules.each do |rule|
	Rule.create(rule) unless Rule.exists? (rule)
end
