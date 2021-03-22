-- ----------------------------
-- Records of actors
-- ----------------------------
BEGIN;
INSERT INTO "public"."actors" VALUES (1, 'Tyler Sheridan');
INSERT INTO "public"."actors" VALUES (2, 'Gary');
COMMIT;

-- ----------------------------
-- Records of movies
-- ----------------------------
BEGIN;
INSERT INTO "public"."movies" VALUES (1, 'Ready Player One', 'Something about video games');
COMMIT;


-- ----------------------------
-- Records of distributors
-- ----------------------------
BEGIN;
INSERT INTO "public"."distributors" VALUES (1, 'Netflix', 1);
COMMIT;



-- ----------------------------
-- Records of characters
-- ----------------------------
BEGIN;
INSERT INTO "public"."characters" VALUES (1, 'Wade Watts', 1);
COMMIT;

-- ----------------------------
-- Records of movies_actors
-- ----------------------------
BEGIN;
INSERT INTO "public"."movies_actors" VALUES (1, 1, 1);
INSERT INTO "public"."movies_actors" VALUES (2, 1, 2);
COMMIT;

-- ----------------------------
-- Records of genres
-- ----------------------------
BEGIN;
INSERT INTO "public"."genres" VALUES (1, 'Horror');
INSERT INTO "public"."genres" VALUES (2, 'Comedy');
COMMIT;