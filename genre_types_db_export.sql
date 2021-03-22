/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 120005
 Source Host           : localhost:5432
 Source Catalog        : friends_repo
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120005
 File Encoding         : 65001

 Date: 22/03/2021 08:24:17
*/


-- ----------------------------
-- Sequence structure for actors_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."actors_id_seq";
CREATE SEQUENCE "public"."actors_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."actors_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for characters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."characters_id_seq";
CREATE SEQUENCE "public"."characters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."characters_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for distributors_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."distributors_id_seq";
CREATE SEQUENCE "public"."distributors_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."distributors_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for genre_types_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."genre_types_id_seq";
CREATE SEQUENCE "public"."genre_types_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."genre_types_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for movies_actors_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."movies_actors_id_seq";
CREATE SEQUENCE "public"."movies_actors_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."movies_actors_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for movies_genre_types_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."movies_genre_types_id_seq";
CREATE SEQUENCE "public"."movies_genre_types_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."movies_genre_types_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for movies_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."movies_id_seq";
CREATE SEQUENCE "public"."movies_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."movies_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for people_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."people_id_seq";
CREATE SEQUENCE "public"."people_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."people_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."actors";
CREATE TABLE "public"."actors" (
  "id" int8 NOT NULL DEFAULT nextval('actors_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."actors" OWNER TO "postgres";

-- ----------------------------
-- Records of actors
-- ----------------------------
BEGIN;
INSERT INTO "public"."actors" VALUES (1, 'Tyler Sheridan');
INSERT INTO "public"."actors" VALUES (2, 'Gary');
COMMIT;

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS "public"."characters";
CREATE TABLE "public"."characters" (
  "id" int8 NOT NULL DEFAULT nextval('characters_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "movie_id" int8
)
;
ALTER TABLE "public"."characters" OWNER TO "postgres";

-- ----------------------------
-- Records of characters
-- ----------------------------
BEGIN;
INSERT INTO "public"."characters" VALUES (1, 'Wade Watts', 1);
COMMIT;

-- ----------------------------
-- Table structure for distributors
-- ----------------------------
DROP TABLE IF EXISTS "public"."distributors";
CREATE TABLE "public"."distributors" (
  "id" int8 NOT NULL DEFAULT nextval('distributors_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "movie_id" int8
)
;
ALTER TABLE "public"."distributors" OWNER TO "postgres";

-- ----------------------------
-- Records of distributors
-- ----------------------------
BEGIN;
INSERT INTO "public"."distributors" VALUES (1, 'Netflix', 1);
COMMIT;

-- ----------------------------
-- Table structure for genre_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."genre_types";
CREATE TABLE "public"."genre_types" (
  "id" int8 NOT NULL DEFAULT nextval('genre_types_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."genre_types" OWNER TO "postgres";

-- ----------------------------
-- Records of genre_types
-- ----------------------------
BEGIN;
INSERT INTO "public"."genre_types" VALUES (1, 'Horror');
INSERT INTO "public"."genre_types" VALUES (2, 'Action');
INSERT INTO "public"."genre_types" VALUES (3, 'Romantic Comedy');
COMMIT;

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS "public"."movies";
CREATE TABLE "public"."movies" (
  "id" int8 NOT NULL DEFAULT nextval('movies_id_seq'::regclass),
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "tagline" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."movies" OWNER TO "postgres";

-- ----------------------------
-- Records of movies
-- ----------------------------
BEGIN;
INSERT INTO "public"."movies" VALUES (1, 'Ready Player One', 'Something about video games');
COMMIT;

-- ----------------------------
-- Table structure for movies_actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."movies_actors";
CREATE TABLE "public"."movies_actors" (
  "id" int8 NOT NULL DEFAULT nextval('movies_actors_id_seq'::regclass),
  "movie_id" int8,
  "actor_id" int8
)
;
ALTER TABLE "public"."movies_actors" OWNER TO "postgres";

-- ----------------------------
-- Records of movies_actors
-- ----------------------------
BEGIN;
INSERT INTO "public"."movies_actors" VALUES (1, 1, 1);
INSERT INTO "public"."movies_actors" VALUES (2, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for movies_genre_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."movies_genre_types";
CREATE TABLE "public"."movies_genre_types" (
  "id" int8 NOT NULL DEFAULT nextval('movies_genre_types_id_seq'::regclass),
  "movie_id" int8,
  "genre_type_id" int8
)
;
ALTER TABLE "public"."movies_genre_types" OWNER TO "postgres";

-- ----------------------------
-- Records of movies_genre_types
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS "public"."people";
CREATE TABLE "public"."people" (
  "id" int8 NOT NULL DEFAULT nextval('people_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "age" int4 DEFAULT 0
)
;
ALTER TABLE "public"."people" OWNER TO "postgres";

-- ----------------------------
-- Records of people
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."schema_migrations";
CREATE TABLE "public"."schema_migrations" (
  "version" int8 NOT NULL,
  "inserted_at" timestamp(0)
)
;
ALTER TABLE "public"."schema_migrations" OWNER TO "postgres";

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO "public"."schema_migrations" VALUES (20210321213206, '2021-03-21 21:33:31');
INSERT INTO "public"."schema_migrations" VALUES (20210321213645, '2021-03-21 21:39:52');
INSERT INTO "public"."schema_migrations" VALUES (20210321213807, '2021-03-21 21:39:52');
INSERT INTO "public"."schema_migrations" VALUES (20210321214019, '2021-03-21 21:41:45');
INSERT INTO "public"."schema_migrations" VALUES (20210321214156, '2021-03-21 21:43:55');
INSERT INTO "public"."schema_migrations" VALUES (20210321214229, '2021-03-21 21:43:55');
INSERT INTO "public"."schema_migrations" VALUES (20210322142141, '2021-03-22 14:23:01');
INSERT INTO "public"."schema_migrations" VALUES (20210322142957, '2021-03-22 14:32:16');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."actors_id_seq"
OWNED BY "public"."actors"."id";
SELECT setval('"public"."actors_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."characters_id_seq"
OWNED BY "public"."characters"."id";
SELECT setval('"public"."characters_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."distributors_id_seq"
OWNED BY "public"."distributors"."id";
SELECT setval('"public"."distributors_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."genre_types_id_seq"
OWNED BY "public"."genre_types"."id";
SELECT setval('"public"."genre_types_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."movies_actors_id_seq"
OWNED BY "public"."movies_actors"."id";
SELECT setval('"public"."movies_actors_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."movies_genre_types_id_seq"
OWNED BY "public"."movies_genre_types"."id";
SELECT setval('"public"."movies_genre_types_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."movies_id_seq"
OWNED BY "public"."movies"."id";
SELECT setval('"public"."movies_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."people_id_seq"
OWNED BY "public"."people"."id";
SELECT setval('"public"."people_id_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table actors
-- ----------------------------
ALTER TABLE "public"."actors" ADD CONSTRAINT "actors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table characters
-- ----------------------------
ALTER TABLE "public"."characters" ADD CONSTRAINT "characters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table distributors
-- ----------------------------
CREATE UNIQUE INDEX "distributors_movie_id_index" ON "public"."distributors" USING btree (
  "movie_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table distributors
-- ----------------------------
ALTER TABLE "public"."distributors" ADD CONSTRAINT "distributors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table genre_types
-- ----------------------------
ALTER TABLE "public"."genre_types" ADD CONSTRAINT "genre_types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table movies
-- ----------------------------
ALTER TABLE "public"."movies" ADD CONSTRAINT "movies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table movies_actors
-- ----------------------------
CREATE UNIQUE INDEX "movies_actors_movie_id_actor_id_index" ON "public"."movies_actors" USING btree (
  "movie_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "actor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movies_actors
-- ----------------------------
ALTER TABLE "public"."movies_actors" ADD CONSTRAINT "movies_actors_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table movies_genre_types
-- ----------------------------
CREATE UNIQUE INDEX "movies_genre_types_movie_id_genre_type_id_index" ON "public"."movies_genre_types" USING btree (
  "movie_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "genre_type_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table movies_genre_types
-- ----------------------------
ALTER TABLE "public"."movies_genre_types" ADD CONSTRAINT "movies_genre_types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table people
-- ----------------------------
ALTER TABLE "public"."people" ADD CONSTRAINT "people_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table schema_migrations
-- ----------------------------
ALTER TABLE "public"."schema_migrations" ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");

-- ----------------------------
-- Foreign Keys structure for table characters
-- ----------------------------
ALTER TABLE "public"."characters" ADD CONSTRAINT "characters_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "public"."movies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table distributors
-- ----------------------------
ALTER TABLE "public"."distributors" ADD CONSTRAINT "distributors_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "public"."movies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table movies_actors
-- ----------------------------
ALTER TABLE "public"."movies_actors" ADD CONSTRAINT "movies_actors_actor_id_fkey" FOREIGN KEY ("actor_id") REFERENCES "public"."actors" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."movies_actors" ADD CONSTRAINT "movies_actors_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "public"."movies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table movies_genre_types
-- ----------------------------
ALTER TABLE "public"."movies_genre_types" ADD CONSTRAINT "movies_genre_types_genre_type_id_fkey" FOREIGN KEY ("genre_type_id") REFERENCES "public"."genre_types" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."movies_genre_types" ADD CONSTRAINT "movies_genre_types_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "public"."movies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
