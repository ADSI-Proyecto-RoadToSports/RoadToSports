CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "inicios" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "index" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "document_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "type_tournaments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "type_rules" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "modalities_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "activities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "state" boolean, "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "rules" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "state" boolean, "created_at" datetime, "updated_at" datetime, "sport_id" integer, "type_rule_id" INTEGER);
CREATE TABLE "constituents" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "lastname" varchar(255), "identification" varchar(255), "birthday" date, "mail" varchar(255), "address" varchar(255), "phone" varchar(255), "gender" boolean, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "novelties" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "password" varchar(255), "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_sessions_on_user_id" ON "sessions" ("user_id");
CREATE TABLE "tipos_configs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "index" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "galleries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime, "album_id" integer);
CREATE TABLE "teams" ("id" INTEGER PRIMARY KEY  NOT NULL ,"nombre" varchar(255),"sport_id" integer,"created_at" datetime,"updated_at" datetime,"active" boolean DEFAULT (null) , "lider" VARCHAR);
CREATE TABLE "roadtosports" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "registros" varchar(255), "index" varchar(255), "acerca" varchar(255), "contacto" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "tournaments" ("id" INTEGER PRIMARY KEY  NOT NULL ,"name" varchar(255),"modalitiestype_id" integer,"state" boolean,"date" date,"typetournament_id" integer,"created_at" datetime,"updated_at" datetime,"sport_id" INTEGER);
CREATE TABLE "sports" ("id" INTEGER PRIMARY KEY  NOT NULL ,"name" varchar(255),"description" text,"modalitiestype_id" integer DEFAULT (null) ,"created_at" datetime,"updated_at" datetime);
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "start" datetime, "end" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "albums" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime);
CREATE TABLE "nombrepartidos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY  NOT NULL ,"email" varchar(255) NOT NULL ,"crypted_password" varchar(255) NOT NULL ,"salt" varchar(255) NOT NULL ,"created_at" datetime,"updated_at" datetime,"admin" boolean,"usuario" boolean, "nombre" VARCHAR, "document_type_id" INTEGER, "documento" VARCHAR, "genero" boolean);
CREATE TABLE "pfutbols" ("id" INTEGER PRIMARY KEY  NOT NULL ,"equipo1" varchar(255),"puntos2" integer,"equipo2" varchar(255),"fecha" datetime,"estado" boolean,"user_id" integer,"tournament_id" integer,"created_at" datetime,"updated_at" datetime, "puntos1" INTEGER, "puntoso1" INTEGER, "puntoso2" INTEGER);
CREATE TABLE "pbaloncestos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "equipo1" varchar(255), "puntos1" varchar(255), "puntoso1" varchar(255), "equipo2" varchar(255), "puntos2" varchar(255), "puntoso2" varchar(255), "tournament_id" integer, "fecha" datetime, "estado" boolean, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "nombrepartidobs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "participantes" ("id" INTEGER PRIMARY KEY  NOT NULL ,"nombre" varchar(255),"email" varchar(255),"document_type_id" integer,"documento" varchar(255),"estado" boolean,"sport_id" integer DEFAULT (null) ,"created_at" datetime,"updated_at" datetime, "ficha" VARCHAR);
CREATE TABLE "integrantes" ("id" INTEGER PRIMARY KEY  NOT NULL ,"nombre" varchar(255),"documenttype_id" integer DEFAULT (null) ,"documento" varchar(255),"ficha" varchar(255),"team_id" integer,"created_at" datetime,"updated_at" datetime,"limite" boolean DEFAULT (0) ,"lesion" boolean);
CREATE TABLE "pvoleibols" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "equipo1" varchar(255), "puntos1" varchar(255), "puntoso1" varchar(255), "equipo2" varchar(255), "puntos2" varchar(255), "puntoso2" varchar(255), "tournament_id" integer, "fecha" datetime, "estado" boolean, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "pmicrofutbols" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "equipo1" varchar(255), "puntos1" varchar(255), "puntoso1" varchar(255), "equipo2" varchar(255), "puntos2" varchar(255), "puntoso2" varchar(255), "tournament_id" integer, "fecha" datetime, "estado" boolean, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "pajedrezs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "participante1" varchar(255), "puntos1" varchar(255), "participante2" varchar(255), "puntos2" varchar(255), "tournament_id" integer, "fecha" datetime, "estado" boolean, "user_id" integer, "created_at" datetime, "updated_at" datetime, "gano1" boolean, "gano2" boolean);
CREATE TABLE "ptenismesas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "participante1" varchar(255), "puntos1" varchar(255), "participante2" varchar(255), "puntos2" varchar(255), "tournament_id" integer, "fecha" datetime, "estado" boolean, "user_id" integer, "created_at" datetime, "updated_at" datetime, "gano1" boolean, "gano2" boolean);
CREATE TABLE "nombrepartidocs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "nombrepartidods" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "nombrepartidoms" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "nombrepartidots" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO schema_migrations (version) VALUES ('20140605063610');

INSERT INTO schema_migrations (version) VALUES ('20140611143426');

INSERT INTO schema_migrations (version) VALUES ('20140611143624');

INSERT INTO schema_migrations (version) VALUES ('20140611143633');

INSERT INTO schema_migrations (version) VALUES ('20140611143645');

INSERT INTO schema_migrations (version) VALUES ('20140611143701');

INSERT INTO schema_migrations (version) VALUES ('20140611143710');

INSERT INTO schema_migrations (version) VALUES ('20140611143718');

INSERT INTO schema_migrations (version) VALUES ('20140611143726');

INSERT INTO schema_migrations (version) VALUES ('20140611143741');

INSERT INTO schema_migrations (version) VALUES ('20140611143749');

INSERT INTO schema_migrations (version) VALUES ('20140611143757');

INSERT INTO schema_migrations (version) VALUES ('20140611143824');

INSERT INTO schema_migrations (version) VALUES ('20140611143832');

INSERT INTO schema_migrations (version) VALUES ('20140611143842');

INSERT INTO schema_migrations (version) VALUES ('20140611143851');

INSERT INTO schema_migrations (version) VALUES ('20140611143907');

INSERT INTO schema_migrations (version) VALUES ('20140611143915');

INSERT INTO schema_migrations (version) VALUES ('20140611143922');

INSERT INTO schema_migrations (version) VALUES ('20140611143946');

INSERT INTO schema_migrations (version) VALUES ('20140611143954');

INSERT INTO schema_migrations (version) VALUES ('20140611144010');

INSERT INTO schema_migrations (version) VALUES ('20140611162711');

INSERT INTO schema_migrations (version) VALUES ('20140612141344');

INSERT INTO schema_migrations (version) VALUES ('20140612151412');

INSERT INTO schema_migrations (version) VALUES ('20140617211156');

INSERT INTO schema_migrations (version) VALUES ('20140813194501');

INSERT INTO schema_migrations (version) VALUES ('20140813194733');

INSERT INTO schema_migrations (version) VALUES ('20140814202914');

INSERT INTO schema_migrations (version) VALUES ('20140825101237');

INSERT INTO schema_migrations (version) VALUES ('20140827074735');

INSERT INTO schema_migrations (version) VALUES ('20140827081831');

INSERT INTO schema_migrations (version) VALUES ('20140828092036');

INSERT INTO schema_migrations (version) VALUES ('20140829182316');

INSERT INTO schema_migrations (version) VALUES ('20140903194236');

INSERT INTO schema_migrations (version) VALUES ('20140904214122');

INSERT INTO schema_migrations (version) VALUES ('20140904220806');

INSERT INTO schema_migrations (version) VALUES ('20140905191321');

INSERT INTO schema_migrations (version) VALUES ('20140908023611');

INSERT INTO schema_migrations (version) VALUES ('20140908023635');

INSERT INTO schema_migrations (version) VALUES ('20140908024113');

INSERT INTO schema_migrations (version) VALUES ('20140908024143');

INSERT INTO schema_migrations (version) VALUES ('20140908151935');

INSERT INTO schema_migrations (version) VALUES ('20140908180157');

INSERT INTO schema_migrations (version) VALUES ('20140908210623');

INSERT INTO schema_migrations (version) VALUES ('20140908212131');

INSERT INTO schema_migrations (version) VALUES ('20140917194437');

