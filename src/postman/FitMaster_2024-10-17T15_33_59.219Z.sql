CREATE TYPE "target_muscle" AS ENUM (
	'Abductors',
	'Abs',
	'Adductors',
	'Biceps',
	'Calves',
	'Chest',
	'Forearms',
	'Glutes',
	'Hamstrings',
	'HipFlexors',
	'ITBand',
	'Lats',
	'LowerBack',
	'UpperBack',
	'Neck',
	'Obliques',
	'PalmarFascia',
	'PlantarFascia',
	'Quads',
	'Shouders',
	'Traps',
	'Triceps'
);

CREATE TYPE "exercise_type" AS ENUM (
	'Aerobic',
	'Strength',
	'Stretching',
	'Balance'
);

CREATE TYPE "experience_level" AS ENUM (
	'Beginner',
	'Intermediate',
	'Advanced'
);

CREATE TYPE "force_type" AS ENUM (
	'Pull',
	'Static',
	'Isometric',
	'Push'
);

CREATE TYPE "equipment_required" AS ENUM (
	'Dumbbell',
	'Barbell',
	'Bodyweight',
	'Cable',
	'Machine',
	'Exercise',
	'EZ Bar',
	'Kettle Bells',
	'Lacrosse Ball'
);

CREATE TYPE "mechanic" AS ENUM (
	'Compound',
	'Isolation'
);

CREATE TYPE "food_category" AS ENUM (
	'Protein Shake',
	'Protein Bar',
	'High Protein',
	'Low Carb',
	'Snack',
	'Vegetarian',
	'Breakfast',
	'Lunch',
	'Dinner',
	'BBQ/Grill'
);

CREATE TYPE "gender" AS ENUM (
	'Male',
	'Female',
	'Both'
);

CREATE TYPE "fitness_goal" AS ENUM (
	'FatLoss',
	'MuscleBuilding',
	'IncreaseStrength',
	'SportsPerformance',
	'BodyWeight'
);

CREATE TYPE "day_of_week" AS ENUM (
	'Monday',
	'Wednesday',
	'Friday',
	'Sunday',
	'Tuesday',
	'Thursday',
	'Saturday'
);

CREATE TYPE "diet_plant_type" AS ENUM (
	'breakfast',
	'lunch',
	'dinner'
);

CREATE TYPE "workout_category" AS ENUM (
	'For Men',
	'For Women',
	'Muscle Building',
	'Fat Loss',
	'Increase Strength',
	'Ab Workouts',
	'Full Body',
	'Sports Performance',
	'Bodyweight',
	'Beginner',
	'At Home',
	'Celebrity',
	'Cardio',
	'Chest Workouts',
	'Back Workouts',
	'Bicep Workouts',
	'Shoulder Workouts',
	'Leg Workouts',
	'Tricep Workouts',
	'Glute Workouts'
);

CREATE TYPE "workout_type" AS ENUM (
	'Split',
	' Full Body'
);
CREATE TABLE "exercise" (
	"exercise_id" SERIAL NOT NULL UNIQUE,
	"title" VARCHAR(50) NOT NULL,
	"exer_profile_id" INTEGER NOT NULL,
	"instruction" TEXT ARRAY,
	"tip" TEXT ARRAY,
	"cover_image" TEXT,
	"is_delete" BOOLEAN NOT NULL DEFAULT FALSE,
	PRIMARY KEY("exercise_id")
);


CREATE TABLE "exercise_profile" (
	"exer_profile_id" SERIAL NOT NULL UNIQUE,
	"target_muscle" TARGET_MUSCLE NOT NULL,
	"exercise_type" EXERCISE_TYPE NOT NULL,
	"experience_level" EXPERIENCE_LEVEL NOT NULL,
	"force_type" FORCE_TYPE,
	"equipment_required" EQUIPMENT_REQUIRED,
	"mechanic" MECHANIC,
	PRIMARY KEY("exer_profile_id")
);


CREATE TABLE "food" (
	"food_id" SERIAL NOT NULL UNIQUE,
	"food_name" VARCHAR(50) NOT NULL,
	"category_food_id" FOOD_CATEGORY NOT NULL,
	"calories" SMALLINT,
	"protein" DECIMAL,
	"carb" DECIMAL,
	"fat" DECIMAL,
	"cooking_time" DECIMAL,
	"ingredient" TEXT,
	"cooking_instruction" TEXT,
	"cover_image" TEXT,
	PRIMARY KEY("food_id")
);


CREATE TABLE "diet_plan" (
	"diet_plan_id" SERIAL NOT NULL UNIQUE,
	"diet_name" VARCHAR(80) NOT NULL,
	"user_id" INTEGER NOT NULL UNIQUE,
	PRIMARY KEY("diet_plan_id")
);


CREATE TABLE "user" (
	"user_id" SERIAL NOT NULL UNIQUE,
	"fullname" VARCHAR(40) NOT NULL,
	"username" VARCHAR(32) NOT NULL,
	"password" VARCHAR(32) NOT NULL,
	"gender" GENDER NOT NULL,
	"email" VARCHAR(255) NOT NULL,
	"phone_number" VARCHAR(10) NOT NULL,
	"fitness_goal" FITNESS_GOAL NOT NULL,
	"age" SMALLINT NOT NULL,
	"weight" DECIMAL NOT NULL,
	"height" DECIMAL NOT NULL,
	"streak" SMALLINT NOT NULL DEFAULT 0,
	"advance_data" VARCHAR(255),
	PRIMARY KEY("user_id")
);


CREATE TABLE "diet_plan_detail" (
	"diet_plan_detail_id" SERIAL NOT NULL UNIQUE,
	"food_id" INTEGER NOT NULL,
	"diet_plant_id" INTEGER NOT NULL UNIQUE,
	"day_of_week" DAY_OF_WEEK NOT NULL,
	"type" DIET_PLANT_TYPE,
	PRIMARY KEY("diet_plan_detail_id")
);


CREATE TABLE "user_workout_plan" (
	"user_id" INTEGER NOT NULL UNIQUE GENERATED BY DEFAULT AS IDENTITY,
	"workout_plan_id" INTEGER NOT NULL UNIQUE,
	"start_date" DATE NOT NULL,
	"completed_session" SMALLINT NOT NULL DEFAULT 0,
	PRIMARY KEY("user_id", "workout_plan_id")
);


CREATE TABLE "workout_plan" (
	"plan_id" SERIAL NOT NULL UNIQUE,
	"plan_name" VARCHAR(255) NOT NULL,
	"plan_details" TEXT,
	"workout_categories" WORKOUT_CATEGORY ARRAY NOT NULL,
	"cover_image" VARCHAR(255),
	"create_at" TIMESTAMP,
	"is_delete" BOOLEAN DEFAULT FALSE,
	PRIMARY KEY("plan_id")
);


CREATE TABLE "workout_sumary" (
	"workout_sumary_id" SERIAL NOT NULL UNIQUE,
	"main_goal" FITNESS_GOAL NOT NULL,
	"program_duration" SMALLINT NOT NULL,
	"workout_type" WORKOUT_TYPE NOT NULL,
	"training_level" EXPERIENCE_LEVEL NOT NULL,
	"day_per_week" SMALLINT NOT NULL,
	"time_per_workout" SMALLINT NOT NULL,
	"target_gender" GENDER NOT NULL,
	"workout_plan_id" INTEGER NOT NULL,
	PRIMARY KEY("workout_sumary_id")
);


CREATE TABLE "workout_day" (
	"workout_day_id" SERIAL NOT NULL UNIQUE,
	"workout_day_name" VARCHAR(255) NOT NULL,
	"day_of_week" DAY_OF_WEEK NOT NULL,
	"exercise_id" INTEGER NOT NULL,
	"sets" SMALLINT NOT NULL,
	"reps" SMALLINT ARRAY NOT NULL,
	"workout_plan_id" INTEGER NOT NULL,
	PRIMARY KEY("workout_day_id")
);


ALTER TABLE "diet_plan"
ADD FOREIGN KEY("user_id") REFERENCES "user"("user_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "diet_plan"
ADD FOREIGN KEY("diet_plan_id") REFERENCES "diet_plan_detail"("diet_plant_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "diet_plan_detail"
ADD FOREIGN KEY("food_id") REFERENCES "food"("food_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "user"
ADD FOREIGN KEY("user_id") REFERENCES "user_workout_plan"("user_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "exercise"
ADD FOREIGN KEY("exercise_id") REFERENCES "workout_day"("exercise_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "exercise_profile"
ADD FOREIGN KEY("exer_profile_id") REFERENCES "exercise"("exer_profile_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "workout_plan"
ADD FOREIGN KEY("plan_id") REFERENCES "workout_day"("workout_day_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "workout_sumary"
ADD FOREIGN KEY("workout_plan_id") REFERENCES "workout_plan"("plan_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "workout_plan"
ADD FOREIGN KEY("plan_id") REFERENCES "user_workout_plan"("workout_plan_id")
ON UPDATE NO ACTION ON DELETE NO ACTION;