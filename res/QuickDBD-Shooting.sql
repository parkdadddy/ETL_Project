-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hypysr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "gun" (
    "id" INT   NOT NULL,
    "date" DATE   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    CONSTRAINT "pk_gun" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "police" (
    "id" INT   NOT NULL,
    "date" DATE   NOT NULL,
    "armed" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "race" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "State" VARCHAR   NOT NULL,
    CONSTRAINT "pk_police" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "state_summary" (
    "2015" INT   NOT NULL,
    "2016" INT   NOT NULL,
    "2017" INT   NOT NULL,
    "index" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "High school graduate or higher" INT   NOT NULL,
    "Bachelor's degree or higher" INT   NOT NULL,
    "Avanced degree" INT   NOT NULL,
    CONSTRAINT "pk_state_summary" PRIMARY KEY (
        "index"
     )
);

ALTER TABLE "gun" ADD CONSTRAINT "fk_gun_State" FOREIGN KEY("State")
REFERENCES "police" ("State");

ALTER TABLE "state_summary" ADD CONSTRAINT "fk_state_summary_2015" FOREIGN KEY("2015")
REFERENCES "police" ("State");

