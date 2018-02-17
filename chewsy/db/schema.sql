-----------------------------------------------------------
-- PROJECT_3, Title: Chewsy, Team: Flying Oranges
-- February, 2018
-- GA, New York
-- the database is named after the title of the project...
-- outside of db folder please run:
-- 
-- createdb chewsy_db
-- psql -d chewsy_db -f schema.sql
-- 
-- then:
-- psql -d chewsy_db -f seeds.sql
-- 
-- for testing:
-- 
-- createdb chewsy_db_test
-- psql -d chewsy_db_test -f schema.sql
-- 
-- then:
-- psql -d chewsy_db_test -f seeds.sql
-----------------------------------------------------------
-- \c chewsy_db_test
\c chewsy_db


-----------------------------------------------------------
-- USERS table is to keep user's requisites during sign-up
-- profiles_table field is currrently references only one 
-- table - PROFILES...
-----------------------------------------------------------
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id              BIGSERIAL PRIMARY KEY,
  email           VARCHAR NOT NULL UNIQUE,
  password_digest VARCHAR NOT NULL,
  counter         INTEGER,
  signedup_on     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  profiles_table  VARCHAR(32)
);

-----------------------------------------------------------
-- PROFILES table is connected to USERS table by user_id 
-- field making sure there is only one profile per user id;
-- a record is comprised of boolean fields to reflect
-- user's allergies and limitations;
-- upon signing up, user would be given an opportunity to
-- check-mark all relevant health-labels...
-----------------------------------------------------------

DROP TABLE IF EXISTS profiles CASCADE;

CREATE TABLE profiles (
  id              BIGSERIAL PRIMARY KEY,
  user_id         INTEGER REFERENCES users (id),
  health_table    VARCHAR(32),
  balanced        BOOLEAN DEFAULT FALSE, 
  high_fiber      BOOLEAN DEFAULT FALSE,
  high_protein    BOOLEAN DEFAULT FALSE,
  low_carb        BOOLEAN DEFAULT FALSE,
  low_fat         BOOLEAN DEFAULT FALSE,
  low_sodium      BOOLEAN DEFAULT FALSE,
  alcohol_free    BOOLEAN DEFAULT FALSE,
  celery_free     BOOLEAN DEFAULT FALSE,
  crustacean_free BOOLEAN DEFAULT FALSE,
  dairy_free      BOOLEAN DEFAULT FALSE,
  egg_free        BOOLEAN DEFAULT FALSE,
  fish_free       BOOLEAN DEFAULT FALSE,
  gluten_free     BOOLEAN DEFAULT FALSE,
  kidney_friendly BOOLEAN DEFAULT FALSE,
  kosher          BOOLEAN DEFAULT FALSE,
  low_potassium   BOOLEAN DEFAULT FALSE,
  lupine_free     BOOLEAN DEFAULT FALSE,
  mustard_free    BOOLEAN DEFAULT FALSE,
  no_oil_added    BOOLEAN DEFAULT FALSE,
  low_sugar       BOOLEAN DEFAULT FALSE,
  paleo           BOOLEAN DEFAULT FALSE,
  peanut_free     BOOLEAN DEFAULT FALSE,
  pescatarian     BOOLEAN DEFAULT FALSE,
  pork_free       BOOLEAN DEFAULT FALSE,
  red_meat_free   BOOLEAN DEFAULT FALSE,
  sesame_free     BOOLEAN DEFAULT FALSE,
  shellfish_free  BOOLEAN DEFAULT FALSE,
  soy_free        BOOLEAN DEFAULT FALSE,
  sugar_conscious BOOLEAN DEFAULT FALSE,
  tree_nut_free   BOOLEAN DEFAULT FALSE,
  vegan           BOOLEAN DEFAULT FALSE,
  vegetarian      BOOLEAN DEFAULT FALSE,
  wheat_free      BOOLEAN DEFAULT FALSE
  
);

-----------------------------------------------------------
-- HEALTH_LABEL_REF is a reference table to hold all 
-- available types (diet/health) labels (such as "egg-free") 
-- that would be used for filtering out potentially 
-- allergenic recipes and/or ingredients;
-- the table would be connected to LABEL_INGRED_REF table
-- via the field "health_id", and "api_label" being directly 
-- inserted into particular record...
-----------------------------------------------------------

DROP TABLE IF EXISTS health_label_ref CASCADE;

CREATE TABLE health_label_ref (
  id                BIGSERIAL PRIMARY KEY,
  type              VARCHAR(8),
  web_label         VARCHAR(32),
  api_label         VARCHAR(32), 
  description       VARCHAR(255),
  ingredients_table VARCHAR(32) DEFAULT ' '

);

-----------------------------------------------------------
-- LABEL_INGRED_REF table holds all the relevant names of 
-- ingredients, which are related to particular "api_label"
-- field in the HEALTH_LABEL_REF table; the reference
-- integrity is provided by "health_id" field...
-- there are currently eight lists of ingredients, plus
-- "others"...
-----------------------------------------------------------

DROP TABLE IF EXISTS label_ingred_ref CASCADE;

CREATE TABLE label_ingred_ref (
  id                BIGSERIAL PRIMARY KEY,
  health_id         INTEGER REFERENCES health_label_ref (id),
  api_label         VARCHAR(32),
  ingredient        VARCHAR(255)

);

-----------------------------------------------------------
-- RECIPES_USER table will allow to save recipes favored by
-- particular user;
-- the table is connected to USERS table via "user_id" field 
-- as a reference...
-----------------------------------------------------------

DROP TABLE IF EXISTS recipes_user CASCADE;

CREATE TABLE recipes_user (
  id              BIGSERIAL PRIMARY KEY,
  user_id         INTEGER REFERENCES users (id),
  recipe_label    VARCHAR(128),
  recipe_img      VARCHAR(255), 
  recipe_text     VARCHAR(255),
  recipe_link     VARCHAR(255)

);
