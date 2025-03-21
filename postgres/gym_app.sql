--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: diet_plan_detail_day_of_week_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.diet_plan_detail_day_of_week_enum AS ENUM (
    'Monday',
    'Wednesday',
    'Friday',
    'Sunday',
    'Tuesday',
    'Thursday',
    'Saturday'
);


ALTER TYPE public.diet_plan_detail_day_of_week_enum OWNER TO admin;

--
-- Name: exercise_profile_equipment_required_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_equipment_required_enum AS ENUM (
    'Dumbbell',
    'Barbell',
    'Bands',
    'Bodyweight',
    'Bench',
    'Cable',
    'Machine',
    'Other',
    'Jump Rope',
    'Exercise Ball',
    'EZ Bar',
    'Kettle Bells',
    'Lacrosse Ball',
    'Foam Roll',
    'Trap Bar',
    'Valslide',
    'Rings',
    'Medicine Ball',
    'Tiger Tail',
    'Landmine'
);


ALTER TYPE public.exercise_profile_equipment_required_enum OWNER TO admin;

--
-- Name: exercise_profile_exercise_type_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_exercise_type_enum AS ENUM (
    'Aerobic',
    'Strength',
    'Stretching',
    'Balance',
    'Warmup',
    'SMR',
    'FoamRoll',
    'Activation',
    'Plyometrics'
);


ALTER TYPE public.exercise_profile_exercise_type_enum OWNER TO admin;

--
-- Name: exercise_profile_experience_level_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_experience_level_enum AS ENUM (
    'Beginner',
    'Intermediate',
    'Advanced'
);


ALTER TYPE public.exercise_profile_experience_level_enum OWNER TO admin;

--
-- Name: exercise_profile_force_type_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_force_type_enum AS ENUM (
    'Pull',
    'Static',
    'Isometric',
    'Push',
    'Dynamic Stretching',
    'Compression',
    'N/A',
    'Hinge'
);


ALTER TYPE public.exercise_profile_force_type_enum OWNER TO admin;

--
-- Name: exercise_profile_mechanic_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_mechanic_enum AS ENUM (
    'Compound',
    'Isolation'
);


ALTER TYPE public.exercise_profile_mechanic_enum OWNER TO admin;

--
-- Name: exercise_profile_target_muscle_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.exercise_profile_target_muscle_enum AS ENUM (
    'Abductors',
    'Abs',
    'Adductors',
    'Biceps',
    'Calves',
    'Chest',
    'Forearms',
    'Glutes',
    'Hamstrings',
    'Hip Flexors',
    'IT Band',
    'Lats',
    'Lower Back',
    'Upper Back',
    'Neck',
    'Obliques',
    'Palmar Fascia',
    'Plantar Fascia',
    'Quads',
    'Shoulders',
    'Traps',
    'Triceps'
);


ALTER TYPE public.exercise_profile_target_muscle_enum OWNER TO admin;

--
-- Name: food_category_food_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.food_category_food_enum AS ENUM (
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


ALTER TYPE public.food_category_food_enum OWNER TO admin;

--
-- Name: user_fitness_goal_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.user_fitness_goal_enum AS ENUM (
    'FatLoss',
    'MuscleBuilding',
    'IncreaseStrength',
    'SportsPerformance',
    'BodyWeight',
    'Cardio'
);


ALTER TYPE public.user_fitness_goal_enum OWNER TO admin;

--
-- Name: user_gender_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.user_gender_enum AS ENUM (
    'Male',
    'Female',
    'Both'
);


ALTER TYPE public.user_gender_enum OWNER TO admin;

--
-- Name: workout_day_day_of_week_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_day_day_of_week_enum AS ENUM (
    'Monday',
    'Wednesday',
    'Friday',
    'Sunday',
    'Tuesday',
    'Thursday',
    'Saturday'
);


ALTER TYPE public.workout_day_day_of_week_enum OWNER TO admin;

--
-- Name: workout_day_day_of_week_smallint_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_day_day_of_week_smallint_enum AS ENUM (
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7'
);


ALTER TYPE public.workout_day_day_of_week_smallint_enum OWNER TO admin;

--
-- Name: workout_summary_main_goal_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_summary_main_goal_enum AS ENUM (
    'FatLoss',
    'MuscleBuilding',
    'IncreaseStrength',
    'SportsPerformance',
    'BodyWeight',
    'Cardio'
);


ALTER TYPE public.workout_summary_main_goal_enum OWNER TO admin;

--
-- Name: workout_summary_target_gender_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_summary_target_gender_enum AS ENUM (
    'Male',
    'Female',
    'Both'
);


ALTER TYPE public.workout_summary_target_gender_enum OWNER TO admin;

--
-- Name: workout_summary_training_level_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_summary_training_level_enum AS ENUM (
    'Beginner',
    'Intermediate',
    'Advanced'
);


ALTER TYPE public.workout_summary_training_level_enum OWNER TO admin;

--
-- Name: workout_summary_workout_type_enum; Type: TYPE; Schema: public; Owner: admin
--

CREATE TYPE public.workout_summary_workout_type_enum AS ENUM (
    'Split',
    'Full Body'
);


ALTER TYPE public.workout_summary_workout_type_enum OWNER TO admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: diet_plan; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.diet_plan (
    diet_plan_id integer NOT NULL,
    diet_name character varying(80) NOT NULL,
    user_id integer
);


ALTER TABLE public.diet_plan OWNER TO admin;

--
-- Name: diet_plan_detail; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.diet_plan_detail (
    diet_plan_detail_id integer NOT NULL,
    food_id integer,
    diet_plan_id integer,
    day_of_week smallint NOT NULL
);


ALTER TABLE public.diet_plan_detail OWNER TO admin;

--
-- Name: diet_plan_detail_diet_plan_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.diet_plan_detail_diet_plan_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.diet_plan_detail_diet_plan_detail_id_seq OWNER TO admin;

--
-- Name: diet_plan_detail_diet_plan_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.diet_plan_detail_diet_plan_detail_id_seq OWNED BY public.diet_plan_detail.diet_plan_detail_id;


--
-- Name: diet_plan_diet_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.diet_plan_diet_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.diet_plan_diet_plan_id_seq OWNER TO admin;

--
-- Name: diet_plan_diet_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.diet_plan_diet_plan_id_seq OWNED BY public.diet_plan.diet_plan_id;


--
-- Name: exercise; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.exercise (
    exercise_id integer NOT NULL,
    title character varying(50) NOT NULL,
    exer_profile_id integer,
    instruction text[] NOT NULL,
    tip text[] NOT NULL,
    cover_image character varying,
    is_delete boolean DEFAULT false NOT NULL
);


ALTER TABLE public.exercise OWNER TO admin;

--
-- Name: exercise_day; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.exercise_day (
    exercise_day_id integer NOT NULL,
    set smallint NOT NULL,
    reps smallint[] NOT NULL,
    exercise_id integer,
    workout_day_id integer
);


ALTER TABLE public.exercise_day OWNER TO admin;

--
-- Name: exercise_day_exercise_day_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.exercise_day_exercise_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_day_exercise_day_id_seq OWNER TO admin;

--
-- Name: exercise_day_exercise_day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.exercise_day_exercise_day_id_seq OWNED BY public.exercise_day.exercise_day_id;


--
-- Name: exercise_day_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.exercise_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_day_id_seq OWNER TO admin;

--
-- Name: exercise_day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.exercise_day_id_seq OWNED BY public.exercise_day.exercise_day_id;


--
-- Name: exercise_exercise_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.exercise_exercise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_exercise_id_seq OWNER TO admin;

--
-- Name: exercise_exercise_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.exercise_exercise_id_seq OWNED BY public.exercise.exercise_id;


--
-- Name: exercise_profile; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.exercise_profile (
    exer_profile_id integer NOT NULL,
    target_muscle smallint NOT NULL,
    exercise_type smallint NOT NULL,
    experience_level smallint NOT NULL,
    force_type smallint,
    equipment_required smallint,
    mechanic smallint
);


ALTER TABLE public.exercise_profile OWNER TO admin;

--
-- Name: exercise_profile_exer_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.exercise_profile_exer_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercise_profile_exer_profile_id_seq OWNER TO admin;

--
-- Name: exercise_profile_exer_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.exercise_profile_exer_profile_id_seq OWNED BY public.exercise_profile.exer_profile_id;


--
-- Name: food; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.food (
    food_id integer NOT NULL,
    food_name character varying(60) NOT NULL,
    category_food smallint NOT NULL,
    calories integer,
    protein double precision,
    carb double precision,
    fat double precision,
    cooking_time double precision,
    ingredient text,
    cooking_instruction text,
    cover_image bytea
);


ALTER TABLE public.food OWNER TO admin;

--
-- Name: food_food_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.food_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.food_food_id_seq OWNER TO admin;

--
-- Name: food_food_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.food_food_id_seq OWNED BY public.food.food_id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."user" (
    user_id integer NOT NULL,
    fullname character varying(40) NOT NULL,
    username character varying(16) NOT NULL,
    gender smallint,
    email character varying(255) NOT NULL,
    phone_number character varying(10),
    fitness_goal smallint,
    age smallint,
    weight double precision,
    height double precision,
    streak smallint DEFAULT '0'::smallint NOT NULL,
    advance_data text,
    password character varying(150) NOT NULL
);


ALTER TABLE public."user" OWNER TO admin;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_user_id_seq OWNER TO admin;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;


--
-- Name: user_workout_plan; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.user_workout_plan (
    user_id integer NOT NULL,
    workout_plan_id integer NOT NULL,
    start_date timestamp without time zone NOT NULL,
    completed_session smallint NOT NULL
);


ALTER TABLE public.user_workout_plan OWNER TO admin;

--
-- Name: workout_day; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.workout_day (
    workout_day_id integer NOT NULL,
    workout_plan_id integer,
    workout_day_name character varying(40) NOT NULL,
    day_of_week smallint NOT NULL
);


ALTER TABLE public.workout_day OWNER TO admin;

--
-- Name: workout_day_workout_day_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.workout_day_workout_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workout_day_workout_day_id_seq OWNER TO admin;

--
-- Name: workout_day_workout_day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.workout_day_workout_day_id_seq OWNED BY public.workout_day.workout_day_id;


--
-- Name: workout_plan; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.workout_plan (
    plan_id integer NOT NULL,
    plan_name character varying(255) NOT NULL,
    plan_details text,
    workout_categories smallint[] NOT NULL,
    cover_image character varying,
    create_at timestamp without time zone DEFAULT now() NOT NULL,
    is_delete boolean DEFAULT false NOT NULL,
    workout_summary_id integer
);


ALTER TABLE public.workout_plan OWNER TO admin;

--
-- Name: workout_plan_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.workout_plan_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workout_plan_plan_id_seq OWNER TO admin;

--
-- Name: workout_plan_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.workout_plan_plan_id_seq OWNED BY public.workout_plan.plan_id;


--
-- Name: workout_summary; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.workout_summary (
    workout_summary_id integer NOT NULL,
    main_goal smallint NOT NULL,
    program_duration smallint NOT NULL,
    workout_type smallint NOT NULL,
    training_level smallint NOT NULL,
    day_per_week integer NOT NULL,
    time_per_workout integer NOT NULL,
    target_gender smallint NOT NULL
);


ALTER TABLE public.workout_summary OWNER TO admin;

--
-- Name: workout_summary_workout_summary_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.workout_summary_workout_summary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workout_summary_workout_summary_id_seq OWNER TO admin;

--
-- Name: workout_summary_workout_summary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.workout_summary_workout_summary_id_seq OWNED BY public.workout_summary.workout_summary_id;


--
-- Name: diet_plan diet_plan_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan ALTER COLUMN diet_plan_id SET DEFAULT nextval('public.diet_plan_diet_plan_id_seq'::regclass);


--
-- Name: diet_plan_detail diet_plan_detail_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan_detail ALTER COLUMN diet_plan_detail_id SET DEFAULT nextval('public.diet_plan_detail_diet_plan_detail_id_seq'::regclass);


--
-- Name: exercise exercise_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise ALTER COLUMN exercise_id SET DEFAULT nextval('public.exercise_exercise_id_seq'::regclass);


--
-- Name: exercise_day exercise_day_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_day ALTER COLUMN exercise_day_id SET DEFAULT nextval('public.exercise_day_exercise_day_id_seq'::regclass);


--
-- Name: exercise_profile exer_profile_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_profile ALTER COLUMN exer_profile_id SET DEFAULT nextval('public.exercise_profile_exer_profile_id_seq'::regclass);


--
-- Name: food food_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.food ALTER COLUMN food_id SET DEFAULT nextval('public.food_food_id_seq'::regclass);


--
-- Name: user user_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: workout_day workout_day_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_day ALTER COLUMN workout_day_id SET DEFAULT nextval('public.workout_day_workout_day_id_seq'::regclass);


--
-- Name: workout_plan plan_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_plan ALTER COLUMN plan_id SET DEFAULT nextval('public.workout_plan_plan_id_seq'::regclass);


--
-- Name: workout_summary workout_summary_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_summary ALTER COLUMN workout_summary_id SET DEFAULT nextval('public.workout_summary_workout_summary_id_seq'::regclass);


--
-- Data for Name: diet_plan; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.diet_plan (diet_plan_id, diet_name, user_id) FROM stdin;
\.


--
-- Data for Name: diet_plan_detail; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.diet_plan_detail (diet_plan_detail_id, food_id, diet_plan_id, day_of_week) FROM stdin;
\.


--
-- Data for Name: exercise; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.exercise (exercise_id, title, exer_profile_id, instruction, tip, cover_image, is_delete) FROM stdin;
8	Ab Crunch	8	{"Lay supine in a relaxed position with your knees up and hands across your chest.","Exhale and squeeze your abs as you curl your upper body off the floor.","Once your abs are fully contracted and your upper back is off the floor, slowly lower yourself back to the starting position.","Complete for the assigned number of repetitions."}	{"Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second in order to improve mind muscle connection.","If your lower back bothers you during this exercise, choose more anti extension and anti rotation based movements.","Avoid putting the hands behind the head as this can lead to excess strain upon the neck."}	https://cdn.muscleandstrength.com/sites/default/files/ab-crunch.jpg	f
9	Floor Crunch (legs on bench)	9	{"Set up for the floor crunch by laying a mat down on the floor and positioning a flat bench at the end of the mat to form a T shape.","Lay down on the mat and put your legs up on the bench. Your calves should be resting on the top of the bench and your legs should be bent at right angles.","Touch the side of your head with your fingertips (do not put your arms behind your neck!).","Lift your shoulder blades slightly off the mat to start the exercise, then crunch your abs bringing your elbows in towards your waist.","Pause for 1 second at the top, and slowly lower back down to the start position.","Keep your shoulder blades just off the mat for the entire set.","Pause for longer at the top of the movement to add extra intensity."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/floorcrunchfeetonbench1.jpg?itok=P1emW6WQ	f
10	Twisting Hanging Knee Raise	10	{"The twisting hanging knee raise hits the lower abs and obliques. You can hang off literally anything that will hold your weight for this exercise. Most people will hang from a pull up bar. Hang off the with a slightly wider than shoulder width grip.","Once you're hanging with your feet slightly off the floor, pull your knees up and across to the left side of your body.","Pause, then slowly lower them back down.","Now raise your knees up and across to the right hand side of your body.","Lower back to start position. This is one rep.","Repeat for desired reps.","Hold at the top of the movement (with your knees up) to increase the intensity of the twisting knee raise.","Advanced athletes can add weight by holding a dumbbell between the feet."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/twistinghangingkneeraise1.jpg?itok=UX7nxYTD	f
11	Standing Stomach Vacuum	11	{"In a standing position, place your hands overhead or on your sides and exhale all of the air from your lungs.","Once you’ve completely exhaled, think about trying to draw your belly button to your spine.","Hold for the desired amount of time and then repeat for assigned number of repetitions."}	{"Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second in order to improve mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/standing-stomach-vacuum.jpg	f
12	Lying Leg Raise With Hip Thrust	12	{"The lying bench leg raise with hip thrust is a great exercise for hitting your abdominal muscles. Set up for the exercise by getting a flat bench and positioning it to give enough room for your legs to extend out one end.","Sit on the bench with your buttocks close to one end, then lay back.","Grasp the bench at head height for stability.","Extend your legs straight out level with your body, keeping your knees and feet together. This is the starting position for the movement.","Bending at the hips only, slowly raise your legs up until they are pointing straight up.","At this point lift your pelvis off the bench as high as possible.","Lower your pelvis back down, and slowly lower your feet back to the starting position.","Complete the entire exercise slowly.","Add intensity by pausing at the top of the hip thrust, or hold a dumbbell with your feet."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/legraisewithhipthrust1.jpg?itok=v1RbGPsM	f
13	Chair Leg Raise	13	{"The Roman Chair leg raise hits your lower abs. Set up for the exercise by positioning yourself in the Roman chair.","Your forearms should be along the horizontal pads, hands gripping the handles, and back against the back pad.","Take your feet off the supports so they're hanging. This is the start position of the exercise.","Keeping your legs straight, feet and knees together, raise your legs up as far as possible.","Pause for a count of 1 or more, then lower back to the starting position.","Repeat for desired reps.","The longer you hold your legs up on each rep the harder the abs work. Increase the hold to make the exercise harder."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/chairlegraise1.jpg?itok=6rWNzdfB	f
14	Decline Bench Leg Raise	14	{"The decline bench leg raise is a good exercise to hit your lower abs. Grab a decline bench and set the angle to around 30 to 45 degrees.","Lay on the bench backwards, with your head the highest end.","Hold onto the pads above your head for stability.","With your feet and knees together, point your legs out straight so your body forms a straight plank. Your legs should not be resting on the bench. This is the starting position for the exercise.","Keeping your legs straight, knees and feet together and rotating at the hips only, bring your feet up as far as possible.","Don't pause at the top of the exercise, as this counts as a rest!","Lower your legs back to the starting position and then repeat for desired reps.","Your legs should not be touching the bench at all throughout the set.","Add intensity by holding a dumbbell between your feet."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/declinebenchlegraise1.jpg?itok=VMgiGZU9	f
27	Standing Barbell Curl	27	{"The standing barbell curl is the cornerstone of many bicep building routines. Grasp a barbell or Olympic bar at around shoulder width apart using an underhand grip (palms facing up).","Stand straight up, feet together (you may be more comfortable putting one foot back for stability), back straight, and with your arms fully extended.","The bar should not be touching your body.","Keeping your eyes facing forwards, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.","Squeeze your biceps hard at the top of the movement, and then slowly lower it back to the starting position.","Repeat for desired reps.","The single biggest mistake lifters make on this exercise is swinging the body back to assist in moving the weight up. This is cheating! Your body should remain fixed and only your biceps should be used to move the weight.","Another mistake is not keeping the elbows fixed and in at the sides. You should not let your elbows come forward when moving the weight up.","And finally, you need to control the weight throughout the set. This means not letting it drop quickly!"}	{}	https://cdn.muscleandstrength.com/sites/default/files/barbell-curl.jpg	f
1	Hip Abduction Machine	1	{"Setup in an upright position with your back against the pad and your spine neutral.","Exhale and push the legs apart as you open the pads.","Once your hips are fully externally rotated, slowly return to the starting position.","Repeat for the desired number of repetitions."}	{"Experiment with foot and pelvis position. Depending upon the shape of your hip, you may need a slightly more internal or external starting position to fully maximize the contraction.\n\nSimilarly, be mindful of your pelvic position - don’t allow the back to arch as this will tip the hips forward and place the adductors under excessive stretch before the contraction which can affect force output.\nIf you can’t seem to figure out how to change the position of your pelvis while seated, experiment with changing the position of the torso (i.e. lean forward or push your back into the pad).","Similarly, be mindful of your pelvic position - don’t allow the back to arch as this will tip the hips forward and place the adductors under excessive stretch before the contraction which can affect force output.","If you can’t seem to figure out how to change the position of your pelvis while seated, experiment with changing the position of the torso (i.e. lean forward or push your back into the pad)."}	https://cdn.muscleandstrength.com/sites/default/files/hip-abduction-machine.jpg	f
2	Cable Hip Abduction	2	{"Set up for the cable hip abduction by attaching an ankle strap (if one is not available, a single handle may suffice) to the low pulley of a cable pulley machine and set your desired weight on the stack.","Attach the ankle strap to your left ankle and stand up straight with your feet close together with your right foot closest to the machine.","You can use your right arm to hold onto the machine for stability. You are now in the staring position.","Begin the movement by lifting your left leg straight out to your side as high as comfortably possible. This will lift the weight from the stack.","Pause for a moment and then slowly lower your leg back to the starting position.","Repeat for the desired amount of reps.","Turn around, attach the the strap to your right ankle and then repeat with your right leg.","Stand up straight and focus on moving only at the hip. Keep your torso as still as possible.","You can eventually begin to increase the range of motion by standing further and further away from the machine. This will require a good deal of balance as you won't be able to hold onto the machine."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/cableabduction1.jpg?itok=fxaZxcVX	f
3	Weighted Crunch	3	{"Lay supine in a relaxed position with your knees bent.","Hold a weight plate directly over your chest and press it to extension.","Raise your knees to 90 degrees, at which point they will be perpendicular to the floor.","Exhale as you reach towards your toes with the weight plate.","Once your abs are fully contracted and your upper back is off the floor, slowly lower yourself back to the starting position.","Complete for the assigned number of repetitions."}	{"Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second to improve mind muscle connection.","If your lower back bothers you during this exercise, choose more anti extension and anti rotation based movements.","Avoid putting the hands behind the head as this can lead to excess strain upon the neck."}	https://cdn.muscleandstrength.com/sites/default/files/weighted-crunch.jpg	f
4	Dumbbell Side Bends	4	{"This exercise works the obliques. Grasp a set of dumbbells. Stand straight up with one dumbbell in each hand, palms facing in.","Keep your feet firmly on the floor with a shoulder width stance.","Keeping your back straight and your eyes facing forwards, bend down to the right as far as you can, then back up again.","Without pausing at the top, bend down to the left.","Repeat for desired reps.","Always keep your back straight, eyes facing forwards, and bend at the torso only.","Concentrate on the stretch and contraction of the oblique muscles (down the side of your body).","Keep the dumbbells close to your body.","This exercise can also be performed while seated on the end of a bench."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/dumbbellsidebend1.jpg?itok=OLB71TfE	f
5	Plank	5	{"The Plank is a stationary exercise that helps strengthen the entire core of the body. Set up for the plank by getting a mat and laying down on your stomach.","To start the exercise prop your torso up on your elbows and your feet up on your toes.","Keeping yourself completely straight, hold this position for as long as possible.","Typically, the plank is done for 3 x 1 minute sets. However, as you get stronger your should be able to do 1 - 3 minutes."}	{"Do not let your mid section sag in the middle. You need to keep yourself straight at all times.","Do this exercise in front of a mirror to make sure you are not letting your technique slip.","Raise an arm or a leg to increase intensity."}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/plank1.jpg?itok=Et69GtRT	f
6	Hanging Leg Raise	6	{"The hanging leg raise is an awesome exercise for building the lower abs. All you need for this exercise is somewhere to hang from. It could be a chinup bar or it could be a tree.","Once you're hanging, tense up the mid section. While keeping your legs straight, raise your them up slowly. You should raise your legs are high as possible.","Pause for a second, and slowly lower your legs back to the starting position.","Repeat for desired reps.","Speed is so important with the hanging leg raise. If you swing your legs, you're using momentum and your abs will not benefit much from the exercise.","Do not allow your body to swing. Keep your torso as still and controlled as possible.","Advanced lifters can add weight by holding a dumbbell between the feet."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/hanginglegraise1.jpg?itok=WHenP2wX	f
7	Abdominal Barbell  Rollouts	7	{"Kneel on the floor/mat and grasp the barbell with a wider than shoulder width grip. You should have 5-10 lb plates loaded on each side of the barbell.","Keeping your back and arms straight, slowly roll the barbell out in front of you until your arms are fully extended.","Tense the abs and slowly roll the barbell back towards your knees.","Keep your arms and back straight at all times.","Do the exercise slowly, and concentrate on using your abdominal muscles to pull the barbell back towards you.","For extra intensity barbell rollouts can be done standing."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/barbellrollouts1.jpg?itok=aFnmF293	f
15	Turkish Get Up to Knee	15	{"Setup in a side lying position with the kettlebell in a front racked position and your hands overlapped on the handle.","Roll onto your back and press the kettle to extension with one hand.","Extend your free hand to the side and raise the knee on the same side at the kettlebell. (i.e. if you’re holding the weight in your R hand, your R knee should be flexed)","Sit up to the elbow as you punch the kettlebell overhead.","Extend the elbow you’re braced on and push yourself up to your hand.","Bridge the hips up while keeping one leg straight.","Once the hips are extended, sweep the straight leg through and assume a half kneeling position with one hand still on the floor and the other overhead.","Bring the torso upright and reposition the down leg so that it’s inline with the forward leg.","Repeat steps #1-7 in reverse order to get back to the supine starting position.","Repeat for the desired number of repetitions."}	{"You should be looking at the kettlebell for the ENTIRE duration of the exercise. As you become more experienced, you may be able to look straight ahead once you get to the half kneeling stance but initially it’s wise to just focus solely on the weight overhead.","Don’t start with heavy weight (or any weight at all if just learning the get up), use a shoe, a ball, or something else with a relatively light weight.","For the initial sit-up portion of the lift, use the cue from Dan John, “Punch and crunch!”","The turkish get up is mainly used a corrective exercise or warm up drill. It can be used in more general population settings.","Focus on squeezing the handle of the kettlebell tightly to improve stability at the shoulder."}	https://cdn.muscleandstrength.com/sites/default/files/turkish-get-up-to-knee.jpg	f
16	Twisting Floor Crunch	16	{"The twisting floor crunch works the abs and obliques. Position a mat on the floor and lie down on the mat flat on your back.","Pull your left leg up until your knee joint is at around 90 degrees.","Now take your right leg and rest your ankle on your left knee.","Start the exercise by touching the side of your head with your fingertips and raising your shoulder blades slightly off the mat.","Crunch up, bringing your left elbow up to your right knee.","Slowly lower back to starting position without letting your shoulder blades touch the floor.","Repeat set for the opposite side of the body.","Never let your shoulder blades touch the floor throughout the set.","Try to bring your elbow up as high as possible using your abs only (no swinging!)."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/exercise-images/exercises/twisting%2001.jpg?itok=i_RIbCIY	f
17	Hip Adduction Machine	17	{"Setup in an upright position with your back against the pad and your spine neutral.","Exhale and pull the legs together as you squeeze the pads inward.","Once the pads touch, slowly return to the starting position.","Repeat for the desired number of repetitions."}	{"Experiment with foot and pelvis position. Depending upon the shape of your hip, you may need a slightly more internal or external starting position to fully maximize the contraction.\n\n\n\t\t\t\tSimilarly, be mindful of your pelvic position - don’t allow the back to arch as this will tip the hips forward and place the adductors under excessive stretch before the contraction which can affect force output.\n\n\t\t\t\tIf you can’t seem to figure out how to change the position of your pelvis while seated, experiment with changing the position of the torso (i.e. lean forward or push your back into the pad).","Similarly, be mindful of your pelvic position - don’t allow the back to arch as this will tip the hips forward and place the adductors under excessive stretch before the contraction which can affect force output.","If you can’t seem to figure out how to change the position of your pelvis while seated, experiment with changing the position of the torso (i.e. lean forward or push your back into the pad)."}	https://cdn.muscleandstrength.com/sites/default/files/hip-adduction-machine.jpg	f
18	Deep Squat Prying	18	{"In a standing position with a shoulder width stance, hold a kettlebell at chest height using both hands.","Squat down by breaking at the hips and knees simultaneously. Sit as deep as comfortably possible.","Rock from side to side while flexing the ankles and pushing the knees out with the elbows to open up the hips.","Repeat for the desired number of repetitions or time."}	{"Focus on keeping your spine tall in the bottom position and don’t allow the weight to pull your forward.","Ideally you should be able to sit comfortably in the bottom position and open up the hips and ankles as you rock side to side.","To get into a deep squat, you should try to focus on sitting down rather than back to keep your torso upright."}	https://cdn.muscleandstrength.com/sites/default/files/deep-squat-prying.jpg	f
19	Rocking Frog Stretch	19	{"In a quadruped position, ensure the hands are underneath the shoulders, the knees are underneath the hips, and the toes are tucked.","Spread the knees wide until you feel a stretch within your groin. From here, push your hands into the ground to drive your hips back and keep your chest upright.","Push back until your hips run out of range of motion and then return to the starting position.","Repeat for the desired number of repetitions."}	{"Focus on keeping all of the movement relegated to the hip, don’t allow the spine to move to compensate a lack of hip mobility.","Push into the floor with your hands and focus on keeping the head neutral.","If you feel a pinch in the front portion of your hips while you rock back, experiment with different knee widths. Depending upon your individual anatomy, you may need a slightly wider or narrower stance."}	https://cdn.muscleandstrength.com/sites/default/files/rocking-frog-stretch.jpg	f
20	Alternating Lateral Lunge with Overhead Reach	20	{"Stand in an upright position with your feet together and arms at your sides.","Step laterally and sit back into your hip while you extend your opposite leg.","Once at the bottom of the lateral lunge, keep your arms straight and raise them into shoulder flexion.","After you reach overhead, lower the arms and push back to your starting position.","Repeat for the desired number of repetitions on both sides."}	{"As your raise the arms overhead, make sure the movements comes entirely from the shoulders and not the spine.","Exhale as you reach and focus on activating the musculature of your upper back and posterior shoulder.","During the lateral lunge, if you’re able to descend deep into the movement, experiment with allowing the sole of the shoe to come off the floor and point your toes towards the ceiling. Depending upon each individual’s bony hip anatomy, this may feel better."}	https://cdn.muscleandstrength.com/sites/default/files/alternating-lateral-lunge-with-overhead-reach.jpg	f
21	Cable Hip Adduction	21	{"Set up for the cable hip adduction by attaching an ankle strap (if one is not available, a single handle may suffice) to the low pulley of a cable pulley machine and set your desired weight on the stack.","Attach the ankle strap to your left ankle and stand up straight with your feet close together with your left foot closest to the machine.","You can use your left arm to hold onto the machine for stability. You are now in the staring position.","Begin the movement by lifting your left foot off the floor to take the weight off the rack.","Keep your leg as straight as possible and begin slowly moving it across your body until your ankle passes your standing leg.","Pause for a moment and then slowly reverse the movement and bring your leg back to the starting position.","Repeat for the desired amount of reps.","Turn around, attach the the strap to your right ankle and then repeat with your right leg.","Stand up straight and focus on moving only at the hip. Keep your torso as still as possible.","You can eventually begin to increase the range of motion by standing further and further away from the machine. This will require a good deal of balance as you won't be able to hold onto the machine."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/cableadduction1.jpg?itok=Hz3k6twv	f
22	Adductor Foam Rolling	22	{"In a prone position, place one leg straight and another at 90 degrees out to the side. Position the foam roller directly underneath the 90 degree leg on the inner thigh.","Support your upper body using your forearms and adjust pressure into the roller by applying more or less force through the forearms and foot.","Slowly roll up and down the length of the adductor (groin) for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Do not allow yourself to fall into hyperextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Foam rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","If you find a sensitive spot, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”."}	https://cdn.muscleandstrength.com/sites/default/files/adductor-foam-rolling.jpg	f
23	Lateral Kneeling Adductor Mobilization	23	{"In an quadruped position, ensure the toes are tucked and the hands are directly underneath the shoulders.","Straighten one leg to the side and keep the foot flat on the floor.","Exhale and push your hands into the floor to direct your hips backwards to increase the stretch on your groin.","Once you run out of range of motion in your adductor, rock back to the starting position and repeat for the assigned number of repetitions on both sides."}	{"If you feel a pinch on the outside of the hip joint instead of a stretch on the inside portion (i.e. the adductor) then you may have adopted a stance is slightly too wide and as such you’re getting a bit of bone on bone contact. Bring your stance in a touch and push back a bit further or switch to more advanced progression such as a cossack squat.","Focus on keeping your spine neutral by thinking about “making your spine long” as you rock back.","If you feel your pelvis rolling underneath or spine rounding, then you’ve essentially run out of range of motion at the hip and you’re not compensating with the spine.","Move slowly and methodically, to be able to use new ranges of motion, you must be able to control them."}	https://cdn.muscleandstrength.com/sites/default/files/lateral-kneeling-adductor-mobilization.jpg	f
24	Standing Hammer Curl	24	{"Grab a pair of dumbbells and stand up with the dumbbells by your sides.","With a neutral grip, bend your arms slightly to keep the tension on the biceps.","With your palms still facing your body, slowly curl the dumbbells up as far as possible.","Squeeze the biceps at the top of the movement, and then slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-hammer-curl.jpg?itok=EdRPUEKJ	f
25	Standing Dumbbell Curl	25	{"Assume the starting position for the standing dumbbell curl by grasping a pair of dumbbells and standing straight up, feet together, and dumbbells by your side. The dumbbells should not be touching your body.","Your palms should face upwards.","Take up the slack by bending the elbows slightly. Tension should be on the biceps.","Slowly curl the dumbbells up as far as possible.","Squeeze the biceps hard, and then slowly lower the dumbbells back down to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-dumbbell-curl.jpg?itok=Kj5-H30y	f
26	Incline Dumbbell Curl	26	{"Position an incline bench at roughly 55-65 degrees, select the desired weight from the rack, and sit upright with your back flat against the pad.","Using a supinated (palms up) grip, take a deep breath and curl both dumbbells towards your shoulders.","Once the biceps are fully shortened, slowly lower the weights back to the starting position.","Repeat for the desired number of repetitions."}	{"Don’t allow the elbows to shift behind the body. Similarly, make sure the shoulder doesn’t shift forward in the socket as you lower the weight.","Maintain a slight bend in the elbow at the bottom of the movement in order to keep tension through the biceps.","Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/incline-dumbbell-curl-thumb.jpg	f
28	Cable Curl	28	{"Set up for this type of cable curl by attaching a straight bar to the low pulley cable and selecting the weight you want to use on the stack.","Stand facing the cable machine with your legs shoulder-width apart.","Grasp the rope extension with a neutral grip (thumbs facing the body).","With your elbows tucked in by your sides, slowly curl the rope up as far as possible.","Squeeze the biceps at the top of the movement, and then slowly lower the weight back to the starting position. This is one rep.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/cable-curl.jpg?itok=dGZkncUa	f
29	EZ Bar Preacher Curl	29	{"Adjust the seat on the preacher bench so that your upper arms sit comfortably on the padding when seated.","Load the desired weight on the barbell.","Sit on the preacher bench and grip the EZ bar with your hands shoulder-width apart using an underhand (palms facing up) grip. (note: You can use a wide or narrow grip on this exercise)","Keeping your back straight and eyes facing forward, take the weight off the rack to support it with your arms slightly bent. This is the starting position.","Slowly bring the weight up until your forearms are at a right angle to the floor.","Squeeze the bicep at the top of the movement and slowly lower it back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/ez-bar-preacher-curl.jpg?itok=QzPp8o65	f
30	Concentration Curl	30	{"Select the desired weight from the rack, and sit in an upright position on a flat bench.","Hinge forward and position your elbow near the base of your knee. Place your free hand on the other knee to stabilize yourself.","Using a supinated (palms facing up) grip, take a deep breath and curl the dumbbell towards your shoulder.","Once the bicep is fully shortened, slowly lower the weight back to the starting position.","Repeat for the desired number of repetitions on both sides."}	{"Maintain a slight bend in the elbow at the bottom of the movement in order to keep tension through the biceps.","Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/seated-concentration-curl.jpg	f
31	Zottman Curl	31	{"Select the desired weight from the rack and assume a shoulder width stance.","Using a supinated grip, take a deep breath and curl the dumbbells towards your shoulders.","Once the biceps are fully shortened, rotate the forearms to a pronated position (palms down) and slowly lower the weight back to the starting position.","Repeat for the desired number of repetitions."}	{"Don’t allow the elbows to shift behind the body. Similarly, make sure the shoulder doesn’t shift forward in the socket as you lower the weight.","Maintain a slight bend in the elbow at the bottom of the movement in order to keep tension through the biceps.","Rotate the forearms slowly, excessive velocity may cause issues within the elbows or wrists.","Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/standing-zottman-curl-1.jpg	f
32	Cross Body Hammer Curl (Pinwheel Curls)	32	{"Set up for the cross body hammer curl by grasping a pair of dumbbells and holding them at your sides.","You should be using a neutral grip (palms facing the body) and have a slight bend in your arms. This is the starting position for the exercise.","Beginning with one arm, slowly curl the dumbbell up across the front of your body as shown in the video demonstration.","Squeeze the bicep at the top of the movement, and then slowly lower the weight back to the starting position.","Repeat this movement for your other arm.","This is one rep. Now repeat to complete your set."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/cross-body-hammer-curl-pinwheel-curls.jpg?itok=SUe72NcQ	f
33	Barbell Preacher Curl	33	{"Load the desired weight on the barbell, and sit in an upright position with your chest flat against the preacher bench.","Keep your upper arm pressed into the pad and use a supinated grip (palms facing up).","Extend your arms until your biceps are fully lengthened. This is the starting position.","Take a deep breath and curl the weight by bending at the elbows until the bar is at shoulder height.","Squeeze the biceps at the top of the movement and slowly lower the bar back to the starting position.","Repeat for the desired number of repetitions."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/barbell-preacher-curl.jpg?itok=Kfi5NiIN	f
34	Alternating Seated Dumbbell Curl	34	{"Set up for the alternating seated dumbbell curl by grabbing a flat bench or adjustable bench and placing a set of dumbbells at one end.","Sit on the end of the bench with your feet out in front of you and your knees together.","Pick up the dumbbells from the floor and let them hang by your sides with your palms facing up.","Bend the arms slightly to take the tension into the biceps. This is the starting position for the exercise.","With your back straight and your elbows tucked in at your sides, slowly curl the dumbbell up with one arm.","Squeeze the bicep hard, then slowly lower the weight back to the starting position.","Repeat for the other arm, and then repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/alternating-seated-dumbbell-curl.jpg?itok=WHFSfZ6C	f
36	Machine Bicep Curl	36	{"Set up for the machine bicep curl by setting the seat height and selecting the weight you want to use on the stack.","Adjust the seat height so your upper arms rest comfortably on the padding.","Grasp the bar with an underhand grip around shoulder width apart.","Bend the elbows slightly to take the weight up and place tension on the biceps.","Slowly curl the weight up as far as possible, squeezing the biceps at the top of the movement.","Pause, and then slowly lower the weight.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/machine-bicep-curl.jpg?itok=Ee4Dbv3O	f
37	One-Arm Seated Dumbbell Curl	37	{"Set up for the one-arm seated dumbbell curl by grabbing a flat bench or adjustable bench and placing a dumbbell at one end. If you're using an adjustable bench, adjust the back to a 90-degree angle.","Sit on the end of the bench with your feet out in front of you and your knees together.","Pick up the dumbbell with one hand and bend the arm slightly to take the tension into the bicep. This is the starting position for the exercise.","With your back straight and your elbow tucked in at your side, slowly curl the dumbbell up as far as possible.","Squeeze the bicep hard,  and then slowly lower the weight back to the starting position.","Repeat for desired reps, and then repeat for the other arm."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-seated-dumbbell-curl.jpg?itok=EbEhN7Vi	f
38	Barbell Drag Curl	38	{"Select the desired weight, load it onto the bar, and assume a shoulder width stance.","Using a supinated (palms up) grip, take a deep breath and curl the barbell towards your shoulders.","As you pull the bar upwards, keep it close to your torso by allowing the elbows to drift slightly behind the body.","Once the biceps are fully shortened, slowly lower the weight back to the starting position.","Repeat for the desired number of repetitions."}	{"Maintain a slight bend in the elbow at the bottom of the movement to keep tension through the biceps.","Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection.","If you experience forearm or wrist discomfort while using a barbell, switch to an EZ curl bar or dumbbells."}	https://cdn.muscleandstrength.com/sites/default/files/barbell-drag-curl-1.jpg	f
39	One-Arm Dumbbell Preacher Curl	39	{"Adjust the height of the seat on the preacher bench so that when you sit on it, the back of your upper arms sit comfortably flat on the padding.","Grab a dumbbell with your left hand and sit on the preacher bench.","The back of your left arm should rest flat on the padding with your arm fully extended.","Place your right forearm on the padding for support.","Execute the exercise by slowly raising the dumbbell and squeezing the bicep at the top of the movement.","Slowly lower the dumbbell until your arm is fully extended.","Repeat for desired reps, and then repeat the same for the right arm."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-dumbbell-preacher-curl.jpg?itok=0mPoC6kH	f
40	Seated Calf Raise	40	{"Take a seat on the machine and place the balls of your feet on the platform with your toes pointed forward - your heels will naturally hang off. Position the base of quads under the knee pad and allow your hands to rest on top.","Extend your ankles and release the safety bar.","Lower the heels by dorsiflexing the ankles until the calves are fully stretched.","Extend the ankles and exhale as you flex the calves.","Repeat for the assigned number of repetitions."}	{"Keep the repetitions slow and controlled. Limit momentum and pause at the top to emphasize the contraction.","Limit depth of the heels if you feel any sort of stretch through the bottom of the foot during the exercise.","Try to move through the ball of the foot rather than the base of the toes."}	https://cdn.muscleandstrength.com/sites/default/files/seated-calf-raise-1.jpg	f
41	Seated Dumbbell Calf Raise	41	{"Set up by placing a step or block at the end of a flat bench.","Next, grasp a pair of dumbbells and sit on the end of the bench.","Put the balls of your feet on the edge of the step/block and rest the ends of the dumbbells on your thighs close to your knees.","Let your heels drop as far as possible without hitting the floor. This is the starting position.","Slowly raise your heels off the floor as far as possible.","Squeeze the calves and pause, and then slowly lower your heels back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/seated-dumbbell-calf-raise.jpg?itok=j5oBVz4C	f
42	45 Degree Leg Press Calf Raise	42	{"Load the machine with the desired weight and take a seat.","Sit down and position your feet on the sled with a shoulder width stance.","Take a deep breath, extend your legs, but keep the safeties locked (if possible).","Position your feet at the base of the platform and allow the heels to hang off.","Lower the heels by dorsiflexing the ankles until the calves are fully stretched.","Drive the weight back to the starting position by extending the ankles and flexing the calves.","Repeat for the desired number of repetitions."}	{"SAFETY NOTE: Be extremely careful when re-positioning the feet at the base of the platform. If the safeties are not in place and you lose control of the platform, this could result in very serious injury.","Keep the repetitions slow and controlled. Limit momentum and pause at the top to emphasize the contraction.","If you experience any sort of pain or pressure in the back of the knee joint, keep a slight bend in the knee and avoid complete lockout.","If the knee isn’t entirely locked out then ensure the position doesn’t change during the duration of the repetition.","Limit depth of the heels if you feel any sort of stretch through the bottom of the foot during the exercise.","Try to move through the ball of the foot rather than the base of the toes."}	https://cdn.muscleandstrength.com/sites/default/files/leg-press-calf-raise-1.jpg	f
43	Standing Machine Calf Raise	43	{"Adjust the shoulder pad corresponding to your height.","Step underneath the pad and place the balls of your feet on the platform with your toes pointed straight ahead - your heels will naturally hang off.","Extend the hips and knees in order to raise the shoulder pad.","Lower the heels by dorsiflexing the ankles until the calves are fully stretched.","Extend the ankles and exhale as you flex the calves.","Repeat for the assigned number of repetitions."}	{"Keep the repetitions slow and controlled. Limit momentum and pause at the top to emphasize the contraction.","If you experience any sort of pain or pressure in the back of the knee joint, keep a slight bend in the knee and avoid complete lockout.","If the knee isn’t entirely locked out then ensure the position doesn’t change during the duration of the repetition.","Limit depth of the heels if you feel any sort of stretch through the bottom of the foot during the exercise.","Try to move through the ball of the foot rather than the base of the toes."}	https://cdn.muscleandstrength.com/sites/default/files/standing-machine-calf-raise.jpg	f
44	Standing One-Leg Calf Raise With Dumbbell	44	{"Set up by grasping a dumbbell in your right hand and standing on the edge of a calf raise block or step with the balls of your feet on the edge.","Take your right leg and hook it behind your left.","Let your left heel drop as far as possible. This is the starting position.","Keeping your body straight and eyes facing forwards, raise your left heel up as far as possible.","Pause and squeeze the calf muscle, and then slowly lower your heel back down as far as possible.","Repeat for desired reps, and then repeat on the right leg."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-one-leg-calf-raise-with-dumbbell.jpg?itok=RfgcLc6r	f
45	Bodyweight Standing Calf Raise	45	{"Stand with the balls of your feet on the edge of the step/block and let your heels drop down as far as possible. This is the starting position for the movement.","Slowly raise your heels up as high as possible.","Pause, and then slowly lower your heels back to the starting position.","Do not rest at the bottom, and immediately start the next rep.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/bodyweight-standing-calf-raise.jpg?itok=peEnyde-	f
46	Standing Barbell Calf Raise	46	{"Set up for the standing barbell calf raise by getting a block or step and placing it in front of you.","Grasp a barbell and place it across the back of your shoulders. Make sure the bar sits across the muscles in your upper back, not your neck.","Stand up on the block with the balls of your feet on the edge.","Keeping your balance, raise your heels off the floor.","Squeeze the calves, and then slowly lower your heals back down as far as possible without letting them touch the floor.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-barbell-calf-raise.jpg?itok=ogWD_CFN	f
47	Smith Machine Calf Raise	47	{"Set the bar on the smith machine to around shoulder height and rack up the weight you want to use.","Grab a step, calf block, or weight plate and put it below the bar.","Step up on the block and position the balls of your feet on the edge.","Grasp the smith bar with a wide grip and position it across the top of your back muscles (not across the back of your neck).","Push up to take the weight off the rack and slowly let your heels drop down as far as possible. This is the starting position.","Slowly raise your heels as far as you can off the floor.","Squeeze the calf muscles, and then slowly lower your heels back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/smithmachinecalfraise1.jpg?itok=W0N1ej2s	f
48	One-Leg Seated Dumbbell Calf Raise	48	{"Set up by placing a step or block at the end of a flat bench.","Next, grasp a dumbbell and sit on the end of the bench.","Put the ball of your left foot on the edge of the step/block and rest the end of the dumbbell on your thigh close to your knee.","Let your heel drop as far as possible without hitting the floor. This is the starting position.","Slowly raise your heel off the floor as far as possible.","Squeeze the calf and pause. Then slowly lower back to the starting position.","Repeat for desired reps, and then do the same for the right leg."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-leg-seated-dumbbell-calf-raise.jpg?itok=jeuO7DvF	f
49	Banded Tibialis Raise	49	{"Attach a band to a kettlebell by threading one end through the loop.","Attach the free end to top of your foot and move back slightly to increase tension within the band.","Pull your toes toward your face as you flex the anterior portion of your calf.","Slowly lower the toes until you feel a stretch in the front of your shin and repeat for the desired number of repetitions."}	{"A band will be slightly more effective than a machine as the tension is linear and doesn’t change during the strength curve.","Superset these with calf raises to optimize calf development.","These are very beneficial for runners who suffer from shin splints. Make sure to emphasize the eccentric portion and focus on an effective contraction of the intended muscle group."}	https://cdn.muscleandstrength.com/sites/default/files/banded-tibialis-raise.jpg	f
50	One-Leg Standing Bodyweight Calf Raise	50	{"Stand on the block with your left foot, the ball of your foot should be resting on the edge of the block.","Hook your right ankle around your left ankle.","Slowly let the heel drop as far as possible. This is the starting position.","Slowly raise the heel up as far as possible.","Pause, and then slowly lower the heel down.","Repeat this movement for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-leg-standing-bodyweight-calf-raise.jpg?itok=TvDHkIth	f
51	Donkey Calf Raise	51	{"Set up for the donkey calf raise by setting a calf raise block or step in front of something stable to hang on to.","Stand on the block with the balls of your feet on the edge.","Bend over and hold onto something stable such as an incline bench. For added weight, you can have someone sitting on your back.","Slowly let the heels drop as far as possible. This is the starting position for the movement.","Raise your heels slowly until you're pushing them as high as possible.","Pause and squeeze the calf muscles. Then slowly lower yourself back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/donkey-calf-raise.jpg?itok=7XD2TrXz	f
52	Standing Barbell Calf Raise (On Floor)	52	{"Grasp a barbell with a wider than shoulder-width grip and lift it over your head so it's resting across the muscles on the top of your back. Do not rest the bar on the back of the neck!","Leaning slightly forward, keeping your body straight and looking straight ahead, slowly raise your heels off the floor and push up as far as possible.","Pause, and then slowly lower your weight down until your heels are almost resting on the floor.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-barbell-calf-raise-on-floor.jpg?itok=pD4017xw	f
53	Peroneal Foam Rolling	53	{"In a side lying position, place the foam roller directly underneath your thigh between your knee and hip.","Support your upper body using your forearm and free hand. Adjust pressure into the roller with your free hand and foot.","Slowly roll up and down the length of the peroneals while slightly rotating the leg periodically for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Do not allow yourself to fall into overextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Foam rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Be careful when you roll near the head of the fibula (just below the base of the knee) as the common peroneal nerve passes through this region and can become aggravated.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","If you find a sensitive spot, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”."}	https://cdn.muscleandstrength.com/sites/default/files/foam-rolling-peroneals.jpg	f
73	Reverse Grip Barbell Curl (EZ Bar)	73	{"Grasp an EZ bar with a pronated grip (palms facing down) and position your hands around shoulder width apart. The bar should not be touching your body. This is the starting position.","Slowly curl the bar while looking forward and keeping your elbows tucked in at your sides.","Do not pause, and slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-barbell-curl-ez-bar.jpg?itok=Xk3IZqRQ	f
54	Smith Machine Toe Raise	54	{"Set up by setting the smith machine bar to shoulder height and adding the weight you want to use.","Grab a step or calf raise block and place it under the bar.","Stand on the block so that your heels are on the front edge and the rest of your feet are hanging off the end.","Grasp the bar with a wide grip and position it across the back of your shoulders (not on your neck).","Take the weight of the stack and allow your toes to drop down as far as possible. This is the starting position for the exercise.","Slowly raise your toes up as far as possible, pause, and then slowly lower them back down.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/reversesmithmachinecalfraise1.jpg?itok=J5WtKnDJ	f
55	Dumbbell Bench Press	55	{"Pick up the dumbbells off the floor using a neutral grip (palms facing in). Position the ends of the dumbbells in your hip crease, and sit down on the bench.","To get into position, lay back and keep the weights close to your chest. Once you are in position, take a deep breath, and press the dumbbells to lockout at the top.","Slowly lower the dumbbells under control as far as comfortably possible (the handles should be about level with your chest).","Contract the chest and push the dumbbells back up to the starting position.","Repeat for the desired number of repetitions."}	{"Maintain more tension through the pecs by not locking out the elbows entirely.","Keep the weights slightly tilted at a 45 degree angle in order to keep the elbows in a neutral position.","Don’t allow the dumbbells to collide at the top of each rep - bouncing them together may cause you to lose stability within the shoulder and injure yourself.","Squeeze the dumbbells as tight as possible to improve a phenomenon known as “irradiation” which promotes greater shoulder stability.","Keep your shoulder blades pinched together to ensure the shoulders remain in a safe position.","Imagine you’re trying to push yourself away from the weights rather than pushing the weights away from yourself.","If you’re feeling pain within the shoulder joint itself (specifically at the front), ensure your shoulder blades are slightly retracted and try to keep the shoulder girdle “packed”.","Ensure you maintain some tension in your abs and don’t allow your lower back to arch excessively.","Keep your feet flat on the floor and don’t allow the lower body to move during the set."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-bench-press_0.jpg	f
56	Dumbbell Pullover	56	{"Grasp a dumbbell with both hands and position yourself on a flat bench with your shoulder blades resting on the bench.","You should be at a 90 degree angle to the bench. Your back shoulder be straight, knees bent at 90 degrees, and feet firmly plated on the floor.","Holding the dumbbell in both hands, straighten your arms so that dumbbell is directly overhead. This is the starting position.","Bending at the shoulders only and keeping your arms straight, slowly lower the weight down behind your head until the dumbbell reaches the height of the bench.","Slowly raise the dumbbell back to the starting position.","Repeat for desired reps.","Do not bend at the elbows.","Do not let the dumbbell go too far forward. The starting position is directly above your head and the dumbbell should not go any further than that."}	{}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-pullover.jpg	f
57	Incline Dumbbell Bench Press	57	{"Pick up the dumbbells off the floor using a neutral grip (palms facing in). Position the ends of the dumbbells in your hip crease, and sit down on the edge of an incline bench.","To get into position, lay back and keep the weights close to your chest. Once you are in position, take a deep breath, and press the dumbbells to lockout at the top.","Slowly lower the dumbbells under control as far as comfortably possible (the handles should be about level with your chest).","Contract the chest and push the dumbbells back up to the starting position.","Repeat for the desired number of repetitions."}	{"Maintain more tension through the pecs by not locking out the elbows entirely.","Keep the weights slightly tilted at a 45 degree angle in order to keep the elbows in a neutral position.","Don’t allow the dumbbells to collide at the top of each rep - bouncing them together may cause you to lose stability within the shoulder and injure yourself.","Squeeze the dumbbells as tight as possible to improve a phenomenon known as “irradiation” which promotes greater shoulder stability.","Keep your shoulder blades pinched together to ensure the shoulders remain in a safe position.","Imagine you’re trying to push yourself away from the weights rather than pushing the weights away from yourself.","If you’re feeling pain within the shoulder joint itself (specifically at the front), ensure your shoulder blades are slightly retracted and try to keep the shoulder girdle “packed”.","Ensure you maintain some tension in your abs and don’t allow your lower back to excessive arch.","Keep your feet flat on the floor and don’t allow the lower body to move during the set."}	https://cdn.muscleandstrength.com/sites/default/files/incline-dumbbell-bench-press_0.jpg	f
58	Dumbbell Flys	58	{"Pick up the dumbbells off the floor using a neutral grip (palms facing in). Position the ends of the dumbbells in your hip crease, and sit down on the bench.","To get into position, lay back and keep the weights close to your chest. Once you are in position, take a deep breath, then press the dumbbells to lockout at the top.","Slightly retract your shoulder blades, unlock your elbows, and slowly lower the dumbbells laterally while maintaining the angle at your elbow.","Once the dumbbells reach chest level, reverse the movement by squeezing your pecs together and bringing the dumbbells back to their starting position.","Without allowing the dumbbells to touch, start the next repetition, and continue until the set is completed."}	{"Imagine you’re trying to hug a tree while completing the exercise.","Don’t squeeze the dumbbell handles excessively tight as this can over recruit the forearms and biceps thereby reducing activation of the pecs.","Avoid touching or banging the dumbbells together at the top of each repetition in order to keep constant tension on the intended muscle groups.","Always keep a slight bend in the elbows and never lower the weight to the point where you get any sort of pain and pressure at the front of the shoulder joint.","If you’re feeling pain within the shoulder joint itself (specifically at the front), ensure your shoulder blades are slightly retracted and try to keep the shoulder girdle “packed”.","Keep your feet flat on the floor, focus solely on keeping your elbows bent and activating your pecs.","Ensure you maintain some tension in your abs and don’t allow your lower back to excessive arch."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-fly.jpg	f
59	Barbell Bench Press	59	{"Lie flat on a bench and set your hands just outside of shoulder width.","Set your shoulder blades by pinching them together and driving them into the bench.","Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back.","Let the weight settle and ensure your upper back remains tight after lift off.","Inhale and allow the bar to descend slowly by unlocking the elbows.","Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.","Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows.","Repeat for the desired number of repetitions."}	{"Technique first, weight second - no one cares how much you bench if you get injured.","Keep the bar in line with your wrist and elbows and ensure it travels in a straight line. In order to keep the wrist straight, try to position the bar as low in the palm as possible while still being able to wrap the thumb.","If you want to keep more tension through the triceps and chest, stop each repetition just short of lockout at the top.","Don’t worry about tucking the elbows excessively, much of this advice is from geared lifters using suits. A slight tuck on the way down may be advisable for some lifters but other lifters can use an excellent cue from Greg Nuckols that will accomplish the same thing: “Flare and push”.","Arching may be advisable depending upon your goals but ensure that most of the arch comes from the mid to upper back and not your lower back. If your lower back is cramping as you set up for the lift, you’re out of position and putting yourself at risk for potential injury.","The bar should touch your chest with every single repetition. If you want to overload specific ranges of motion, look into board presses or accommodating resistance with chains or bands.","As the bar descends, aim for your sternum (breastbone) or slightly below depending upon the length of your upper arm in order to promote a linear bar path.","Intermediate and advanced lifters may use a thumbless or “suicide” grip but for the majority of lifters, it would be wiser to learn how to bench with the thumb wrapped around the bar at first.","Fight to the urge to allow the wrists to roll back into extension, think about rolling your knuckles toward the ceiling.","Experiment with grip width - if your have longer arms you may need to use a slightly wider grip. However, if you’re feeling pressure in the front of the shoulder during the exercise, you may need to widen your grip, improve scapular retraction, or slightly lessen the range of motion via exercises such as floor or board presses.","Squeeze the bar as tightly as possible to help enhance shoulder stability.","Some lifters prefer to tuck their toes while other prefer to keep the feet flat in order to optimize leg drive - experiment with both and see which one feels and allows for greater power production.","Ensure the shoulder blades remain retracted and don’t allow them to change position as you press.","The bar should descend under control and touch the lifter’s chest - no bouncing or excess momentum.","Think about trying to push yourself away from the bar instead of pushing the bar off of you.","Tightness through the upper back should be one of your main priorities throughout the course of the lift.","Ideally, use a spotter to help assist with the lift off in order to maintain tension through the upper back.","Keep the feet quiet throughout the lift and utilize leg drive by pushing your feet into the floor and squeezing your glutes to stabilize the pelvis.","Focus on pulling the bar apart or trying to “bend the bar” in order to activate some of the intrinsic stabilizers in the shoulder.","The glutes and shoulder blades should maintain contact with the bench throughout the entirety of the movement.","If you want to learn more about about the intricacies of benching, Dave Tate’s benching bible is a great place to start."}	https://cdn.muscleandstrength.com/sites/default/files/barbell-bench-press_0.jpg	f
60	Pec Dec	60	{"The pec dec is a great machine for isolating the chest. Before you start, adjust the seat height so that the bottom of the arm pads are about level with your chest when you're sitting on the machine.","Select the weight you want to use on the stack.","Sit on the machine, grasp the handles and/or place your forearms on the padding. Take the weight off the stack slightly. This is the starting position for the exercise.","Keeping your body fixed, slowly bring the forearm pads or handles together. Don't let them touch.","Squeeze the chest muscles for a count of 1-3, then slowly lower back to the starting position.","Repeat for desired reps.","The pec dec is an awesome machine for targeting the pectorals, but you need to use strict technique and focus on stretch and contraction to get the most out of it. Don't let the stack drop during the set.","Don't touch the pads or handles in the center, and keep your body fixed.","Don't bring your torso forward as you squeeze the weight up.","Pause at the top of the exercise (pads in) for a count of 1-3, squeezing the chest for maximum intensity.","Your upper arms or elbows should be positioned parallel to the floor."}	{}	https://cdn.muscleandstrength.com/sites/default/files/machine-fly.jpg	f
61	Incline Bench Press	61	{"Lie flat on an incline bench and set your hands just outside of shoulder width.","Set your shoulder blades by pinching them together and driving them into the bench.","Take a deep breath and allow your spotter to help you with the lift off in order to maintain tightness through your upper back.","Let the weight settle and ensure your upper back remains tight after lift off.","Inhale and allow the bar to descend slowly by unlocking the elbows.","Lower the bar in a straight line to the base of the sternum (breastbone) and touch the chest.","Push the bar back up in a straight line by pressing yourself into the bench, driving your feet into the floor for leg drive, and extending the elbows.","Repeat for the desired number of repetitions."}	{"Technique first, weight second - no one cares how much you bench if you get injured.","Keep the bar in line with your wrist and elbows and ensure it travels in a straight line. In order to keep the wrist straight, try to position the bar as low in the palm as possible while still being able to wrap the thumb.","If you want to keep more tension through the triceps and chest, stop each repetition just short of lockout at the top.","Don’t worry about tucking the elbows excessively, much of this advice is from geared lifters using suits. A slight tuck on the way down may be advisable for some lifters but other lifters can use an excellent cue from Greg Nuckols that will accomplish the same thing: “Flare and push”.","Arching may be advisable depending upon your goals but ensure that most of the arch comes from the mid to upper back and not your lower back. If your lower back is cramping as you set up for the lift, you’re out of position and putting yourself at risk for potential injury.","The bar should touch your chest with every single repetition. If you want to overload specific ranges of motion, look into board presses or accommodating resistance with chains or bands.","As the bar descends, aim for your sternum (breastbone) or slightly below depending upon the length of your upper arm in order to promote a linear bar path.","Intermediate and advanced lifters may use a thumbless or “suicide” grip but for the majority of lifters, it would be wiser to learn how to bench with the thumb wrapped around the bar at first.","Fight the urge to allow the wrists to roll back into extension, think about rolling your knuckles toward the ceiling.","Experiment with grip width - if your have longer arms you may need to use a slightly wider grip. However, if you’re feeling pressure in the front of the shoulder during the exercise, you may need to widen your grip, improve scapular retraction, or slightly lessen the range of motion via exercises such as floor or board presses.","Squeeze the bar as tightly as possible to help enhance shoulder stability.","Ensure the shoulder blades remain retracted and don’t allow them to change position as you press.","The bar should descend under control and touch the lifter’s chest - no bouncing or excess momentum.","Think about trying to push yourself away from the bar instead of pushing the bar off of you.","Tightness through the upper back should be one of your main priorities throughout the course of the lift.","Ideally, use a spotter to help assist with the lift off in order to maintain tension through the upper back.","Keep the feet quiet throughout the lift and utilize leg drive by pushing your feet into the floor and squeezing your glutes to stabilize the pelvis.","Focus on pulling the bar apart or trying to “bend the bar” in order to activate some of the intrinsic stabilizers in the shoulder.","The glutes and shoulder blades should maintain contact with the bench throughout the entirety of the movement."}	https://cdn.muscleandstrength.com/sites/default/files/incline-bench-press.jpg	f
62	Standing Cable Fly	62	{"Set both pulleys directly at (or slightly above) shoulder height and select the desired weight.","Grasp both handles with a neutral grip and take a step forward to split the stance.","Press the handles to lockout while flexing the pecs and extending the elbows.","Keep a slight bend in the elbows, move entirely at the shoulder joint, and slowly allow the arms to open while the pecs stretch.","Return to the starting position by flexing your pecs and bringing the handles together at chest height.","Slowly lower back to the starting position and repeat for the desired number of repetitions."}	{"Imagine you’re trying to hug a tree while completing the exercise.","Don’t squeeze the handles excessively tight as this can over recruit the forearms and biceps thereby reducing activation of the pecs.","Avoid touching or banging the handles together at peak contraction to keep constant tension on the intended muscle groups.","Always keep a slight bend in the elbows and never lower the weight to the point where you get any sort of pain and pressure at the front of the shoulder joint.","Ensure you maintain some tension in your abs and don’t allow your lower back to arch excessively."}	https://cdn.muscleandstrength.com/sites/default/files/standing-cable-fly1.jpg	f
63	Barbell Pullover	63	{"Set up for the barbell pullover by grabbing a barbell and a flat bench.","Position yourself at a 90 degree angle to the flat bench with your shoulder blades resting on the bench.","Your feet should be positioned on the floor at wider than shoulder width, and your body should be straight.","Hold the weight straight up, with your arms fully extended. This is the start position for the exercise.","Without moving your body and keeping your arms straight, slowly lower the barbell behind the back of your head until your arms are parallel to the floor.","Do not pause, and then raise the bar back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/barbellpullover.jpg?itok=cdQxSVCv	f
64	Decline Push Up (Feet on Bench)	64	{"Assume a quadruped position with your shoulders underneath your hands, toes tucked, and knees under hips.","Extend one leg at a time onto a bench behind you and assume a push up position with the legs straight, elbows extended, and head in a neutral position looking at the floor.","Slowly descend to the floor by retracting the shoulder blades and unlocking the elbows.","Descend until your chest touches the floor.","Push back to the starting point by extending the elbows and driving your palms into the floor.","Repeat for the desired number of repetitions."}	{"Your arms should resemble an arrow in the bottom position, not a “T”.","Your spine should remain rigid throughout the entire exercise, think of the push up as a moving plank.","Squeeze your glutes and brace your abs before descending to keep the ribcage neutral.","Keep the chin down and don’t look forward.","Imagine you’re trying to push your thumbs together while completing the movement, this will improve activation of the pecs.","Don’t allow the head to jut forward, the chest should touch at the same time as your nose.","Think about trying to push yourself as far away from the floor as possible.\n\n\n\t\t\t\tEnsure you push all the way through the floor at the top of the repetition and allow your shoulder blades to move around your ribcage.\n\n\t\t\t\tMost folks cut the repetition short and don’t garner the full benefits as such.","Ensure you push all the way through the floor at the top of the repetition and allow your shoulder blades to move around your ribcage.","Most folks cut the repetition short and don’t garner the full benefits as such."}	https://cdn.muscleandstrength.com/sites/default/files/decline-push-up.jpg	f
65	Neutral Grip Dumbbell Bench Press	65	{"Pick up the dumbbells off the floor using a neutral grip (palms facing in). Position the ends of the dumbbells in your hip crease, and sit down on the bench.","To get into position, lay back and keep the weights close to your chest. Once you are in position, take a deep breath, and press the dumbbells to lockout at the top using a neutral grip (palms facing one another).","Slowly lower the dumbbells under control as far as comfortably possible (the handles should be about level with your chest).","Contract the chest and push the dumbbells back up to the starting position while maintaining a neutral grip throughout the duration of the exercise.","Repeat for the desired number of repetitions."}	{"Maintain more tension through the pecs by not locking out the elbows entirely.","Keep the weights slightly tilted at a 45 degree angle in order to keep the elbows in a neutral position.","Don’t allow the dumbbells to collide at the top of each rep - bouncing them together may cause you to lose stability within the shoulder and injure yourself.","Squeeze the dumbbells as tight as possible to improve a phenomenon known as “irradiation” which promotes greater shoulder stability.","Keep your shoulder blades pinched together to ensure the shoulders remain in a safe position.","Imagine you’re trying to push yourself away from the weights rather than pushing the weights away from yourself.","If you’re feeling pain within the shoulder joint itself (specifically at the front), ensure your shoulder blades are slightly retracted and try to keep the shoulder girdle “packed”.","Ensure you maintain some tension in your abs and don’t allow your lower back to excessive arch.","Keep your feet flat on the floor and don’t allow the lower body to move during the set."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-neutral-grip-bench-press.jpg	f
66	Seated Barbell Wrist Curl	66	{"Select the desired weight, load it onto the bar, and assume a seated position with the forearms resting comfortably on your thighs.","Utilize a supinated (palms up) grip and curl the bar towards your body using just the wrists.","Once the forearm flexors are fully shortened, slowly lower the weight back to the starting position.","Repeat for the desired number of repetitions."}	{"Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection.","Try not to open the fingers at the bottom of the movement, just move through the wrist."}	https://cdn.muscleandstrength.com/sites/default/files/seated-barbell-wrist-curl.jpg	f
67	Behind-The-Back Barbell Wrist Curl	67	{"Begin the exercise by selecting a barbell weight and holding it behind your back using an underhand grip (palms facing out). Your hands should be placed around shoulder-width apart.","Stand straight up with your feet shoulder-width apart. Bending only at the wrists, let the barbell drop as far as possible. This is the starting position for the exercise.","Slowly raise the barbell as far as possible squeezing the forearm muscles at the top of the movement. Only your wrists should be moving.","Pause and slowly lower the barbell back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/behind-the-back-barbell-wrist-curl.jpg?itok=awnRZQnH	f
68	Reverse Grip Barbell Curl	68	{"Load a barbell with the desired weight, grasp it with a pronated grip (palms facing down), and position your hands around shoulder width apart. The bar should not be touching your body. This is the starting position.","Slowly curl the bar while looking forward and keeping your elbows tucked in at your sides.","Do not pause, and slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-barbell-curl.jpg?itok=GjAmsM1Z	f
69	Reverse Grip Cable Curl	69	{"Set up for the exercise by attaching a straight or EZ bar to the lower pulley cable and selecting the weight you want to use on the stack.","Grasp the bar using a reverse (or overhand) grip with your hands no wider than shoulder-width apart.","Stand up straight with your elbows tucked in at your sides.","Take up any slack in the cable so the stack is raised. This is the starting position for the exercise.","To execute, keep your elbows in at your sides and slowly curl the bar up as far as possible.","Pause, and then slowly lower the bar back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-cable-curl.jpg?itok=6jETc5Lq	f
70	Dumbbell Farmers Carry	70	{"Grasp a dumbbell in each hand using a neutral grip and stand up straight.","While maintaining an active shoulder position, hold the dumbbells by your side and walk for a designated distance or amount of time."}	{"When setting up for the lift, ensure you take a good deep breath to set your shoulder position. The weight will drive your shoulders into scapular depression so you want to ensure that your shoulders are set in a good position prior to lifting the weight.","If performing an unilateral carry variation, ensure that you’re not leaning to one side as you complete the movement.","Shrug the shoulders just slightly. Not enough so that it takes above a position of neutral but just enough to offset the weight pulling your shoulders down.","Walk slowly and ensure a heel-toe pattern.","Stabilize the weight and don’t allow it to drive you into overextension.","Continue to breath throughout the exercise and don’t rely upon respiration for spinal stabilization."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-farmers-carry.jpg	f
71	One-Arm Seated Dumbbell Wrist Curl	71	{"","Grab a dumbbell using a supinated grip (palm facing up) and sit down on the end of a flat bench.","Bending only at the wrists, let the dumbbell drop as far as possible. This is the starting position for the exercise.","Slowly curl the dumbbell towards your body using your wrists. Squeeze the forearm muscles at the top of the movement.","Pause, and then slowly lower the dumbbell back to the starting position.","Repeat for desired reps, then repeat on the other wrist.",""}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-seated-dumbbell-wrist-curl.jpg?itok=m0TnxtUi	f
72	Reverse Dumbbell Wrist Curl Over Bench	72	{"Grasp a pair of dumbbells using a reverse grip (palms facing down) and kneel down in front of a flat bench.","Rest the back of your forearms on top of the bench so that your writs are just off the end of it.","Bending only at the wrists, let the dumbbells drop as far as possible. This is the starting position for the exercise.","Slowly raise the dumbbells up as far as possible squeezing the forearm muscles at the top of the movement.","Pause, and then slowly lower the dumbbells back to the starting position.","Repeat for desired reps.","A light weight should be used with proper technique. It doesn't take heavy weight to make this exercise effective.","Keep the rep timing slow, and pause/squeeze the forearms for a count of two at the top of the movement for added intensity.","Use a full range of motion by allowing the weight to drop as far as possible at the bottom of the movement."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/reversedumbbellwristcurloverbench1.jpg?itok=qsZgEQMc	f
74	Seated Barbell Wrist Curl	74	{"Select the desired weight, load it onto the bar, and assume a seated position with the forearms resting comfortably on your thighs.","Utilize a supinated (palms up) grip and curl the bar towards your body using just the wrists.","Once the forearm flexors are fully shortened, slowly lower the weight back to the starting position.","Repeat for the desired number of repetitions."}	{"Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection.","Try not to open the fingers at the bottom of the movement, just move through the wrist."}	https://cdn.muscleandstrength.com/sites/default/files/seated-barbell-wrist-curl.jpg	f
75	Behind-The-Back Barbell Wrist Curl	75	{"Begin the exercise by selecting a barbell weight and holding it behind your back using an underhand grip (palms facing out). Your hands should be placed around shoulder-width apart.","Stand straight up with your feet shoulder-width apart. Bending only at the wrists, let the barbell drop as far as possible. This is the starting position for the exercise.","Slowly raise the barbell as far as possible squeezing the forearm muscles at the top of the movement. Only your wrists should be moving.","Pause and slowly lower the barbell back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/behind-the-back-barbell-wrist-curl.jpg?itok=awnRZQnH	f
76	Reverse Grip Barbell Curl	76	{"Load a barbell with the desired weight, grasp it with a pronated grip (palms facing down), and position your hands around shoulder width apart. The bar should not be touching your body. This is the starting position.","Slowly curl the bar while looking forward and keeping your elbows tucked in at your sides.","Do not pause, and slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-barbell-curl.jpg?itok=GjAmsM1Z	f
77	Reverse Grip Cable Curl	77	{"Set up for the exercise by attaching a straight or EZ bar to the lower pulley cable and selecting the weight you want to use on the stack.","Grasp the bar using a reverse (or overhand) grip with your hands no wider than shoulder-width apart.","Stand up straight with your elbows tucked in at your sides.","Take up any slack in the cable so the stack is raised. This is the starting position for the exercise.","To execute, keep your elbows in at your sides and slowly curl the bar up as far as possible.","Pause, and then slowly lower the bar back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-cable-curl.jpg?itok=6jETc5Lq	f
78	Dumbbell Farmers Carry	78	{"Grasp a dumbbell in each hand using a neutral grip and stand up straight.","While maintaining an active shoulder position, hold the dumbbells by your side and walk for a designated distance or amount of time."}	{"When setting up for the lift, ensure you take a good deep breath to set your shoulder position. The weight will drive your shoulders into scapular depression so you want to ensure that your shoulders are set in a good position prior to lifting the weight.","If performing an unilateral carry variation, ensure that you’re not leaning to one side as you complete the movement.","Shrug the shoulders just slightly. Not enough so that it takes above a position of neutral but just enough to offset the weight pulling your shoulders down.","Walk slowly and ensure a heel-toe pattern.","Stabilize the weight and don’t allow it to drive you into overextension.","Continue to breath throughout the exercise and don’t rely upon respiration for spinal stabilization."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-farmers-carry.jpg	f
79	One-Arm Seated Dumbbell Wrist Curl	79	{"","Grab a dumbbell using a supinated grip (palm facing up) and sit down on the end of a flat bench.","Bending only at the wrists, let the dumbbell drop as far as possible. This is the starting position for the exercise.","Slowly curl the dumbbell towards your body using your wrists. Squeeze the forearm muscles at the top of the movement.","Pause, and then slowly lower the dumbbell back to the starting position.","Repeat for desired reps, then repeat on the other wrist.",""}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-seated-dumbbell-wrist-curl.jpg?itok=m0TnxtUi	f
80	Reverse Dumbbell Wrist Curl Over Bench	80	{"Grasp a pair of dumbbells using a reverse grip (palms facing down) and kneel down in front of a flat bench.","Rest the back of your forearms on top of the bench so that your writs are just off the end of it.","Bending only at the wrists, let the dumbbells drop as far as possible. This is the starting position for the exercise.","Slowly raise the dumbbells up as far as possible squeezing the forearm muscles at the top of the movement.","Pause, and then slowly lower the dumbbells back to the starting position.","Repeat for desired reps.","A light weight should be used with proper technique. It doesn't take heavy weight to make this exercise effective.","Keep the rep timing slow, and pause/squeeze the forearms for a count of two at the top of the movement for added intensity.","Use a full range of motion by allowing the weight to drop as far as possible at the bottom of the movement."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/reversedumbbellwristcurloverbench1.jpg?itok=qsZgEQMc	f
81	Reverse Grip Barbell Curl (EZ Bar)	81	{"Grasp an EZ bar with a pronated grip (palms facing down) and position your hands around shoulder width apart. The bar should not be touching your body. This is the starting position.","Slowly curl the bar while looking forward and keeping your elbows tucked in at your sides.","Do not pause, and slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-barbell-curl-ez-bar.jpg?itok=Xk3IZqRQ	f
95	Trap Bar Deadlift	95	{"Stand inside of the trap bar with a hip width stance.","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the handles using a neutral grip outside of shoulder width.","Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”.","As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"Stance width should ideally resemble your typical jumping position. Place your feet in a stance that feels powerful and keeps the knees vertically aligned over the feet.","In order to prevent the bar from drifting away from the body, one should focus on squeezing their lats in order to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.","The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.","Ideally the knees should be tracking out over the foot. If you find that you have trouble keeping this neutral knee position, focus on spreading the floor by trying to push your feet apart as you push into the floor. In other words, imagine there is a crack in the floor and you’re trying to spread it open by pushing your heels away from each other. This will help to activate your glutes more during the movement and stabilize the knee joint.","You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Given most deadlift variations require a more vertical shin after the initial pull off the floor to allow the bar to move around the knees, the trap bar deadlift will actually require a more dorsiflexed position of the ankle at the start. In other words, the shins will be in a more angled position and more of the load will be displaced on the quads.","More experienced lifters may not need to emphasize the “pull the slack out the bar” cue as much and that’s perfectly fine if it works for them and still allows them to pull maximal weight but initially it’s an important concept to understand and implement.","Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly in, out, or neutral) to see what feels best for you.","Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.","Make sure you wrap your thumb around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Ensure that the hands are positioned in the middle of the handles as this will ensure that the bar doesn’t tilt as you make your pull.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights.","For single repetitions, it will be much easier to drop the bar from lockout (provided that it’s allowed and you’re lifting on a platform or with bumper plates) due to less eccentric loading upon your spinal erectors. However, for multiple repetitions you should try to lower the weight under control while not overly fatiguing the erectors.","If you find that you’re weak at lockout, you should incorporate rack pulls, RDLs, and/or pulls against chains or bands. On the opposite end of the spectrum however, if you’re weak off the floor, you should incorporate paused and/or deficit deadlifts. You would also need additional supplementary work for the upper back and glutes."}	https://cdn.muscleandstrength.com/sites/default/files/trap-bar-deadlift_0.jpg	f
82	Dumbbell Stiff Leg Deadlift	82	{"Set up for the dumbbell stiff leg deadlift by choosing a pair of dumbbells and holding them down at your sides.","Stand up straight with a slight bend in your knees and your feet around shoulder width apart. This is your starting position.","Keep your back as straight as possible and bend over at the waist lowering the dumbbells over the tops of you feet. Your knees should be kept stationary during the movement.","Focus on the stretch in your hamstrings, and continue to lower the dumbbells down as far as your hamstrings will let you comfortably.","Now engage the hamstrings and begin to raise the dumbbells straight back up. Your eyes should be facing up and your shoulders back. This will prevent your lower back from rounding.","Squeeze up through the glutes and hamstrings until you're standing straight up.","Repeat for desired reps.","You must keep your eyes looking up at all times. As soon as you look down at the floor your back will round!","The dumbbells need to stay close to your body throughout the set. The further the dumbbells are from your body the more strain is on your lower back.","Focus on stretching the hamstrings out as you lower the dumbbells and contracting them as you raise back up. The greater the mind-muscle connection the more you'll get out of this exercise.","It's best to have your knees slightly bent during the set but fixed (ie: bend them slightly but keep them locked in the same place throughout the set).","During the descent, to protect your lower back, keep your weight back on the heels. Do not let your weight shift forward onto the toes. If you find the your weight on the toes when at the bottom position of the exercise, you are performing it incorrectly.","Do not relax at the bottom of the movement. Keep your legs, back and abdominals tight as you begin the ascent.","Keep the rep timing slow and control the weight, especially when lowering. Remember the focus is on stretch and contraction!","One of the biggest mistakes people make when performing this exercise is bending over at the waist without moving the hips back. Instead of being supported by the large hamstring muscles, the weight is now placed almost entirely on the lower spine. Needless to say, this puts your back at great risk for injury. If you keep the weight close to your body your hips with naturally move back.","Technique is so important with this exercise. If you're just starting out, stand with your side to a mirror with a very light weight and practice the movement. Once you get the technique nailed you'll be able to move up in weight and start building some killer hams and glutes!"}	{}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-stiff-leg-deadlift.jpg	f
83	Conventional Deadlift	83	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the bar using a shoulder width, double overhand grip.","Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”.","As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.","The deadlift is a hinge, not a squat. If you set the hips too low you will put yourself in a disadvantageous position biomechanically and limit your potential for pulling maximal weights.","In order to prevent the bar from drifting away from the body, one should focus on squeezing their lats in order to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.","The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Ideally you should cue and emphasize a vertical shin but this will depend entirely on a lifter’s spine and limb length.","Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly in, out, or neutral) to see what feels best for you.","Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Scraping the shins isn’t always necessary in the deadlift. It may occur more frequently with sumo rather than conventional work but if you have the arm pits in the correct position (as noted above) then the bar should travel vertically and the shins will become vertical and move out of the way as the knees extend.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights.","More experienced lifters may not need to emphasize the “pull the slack out the bar” cue as much and that’s perfectly fine if it works for them and still allows them to pull maximal weight but initially it’s an important concept to understand and implement.","For single repetitions, it will be much easier to drop the bar from lockout (provided that it’s allowed and you’re lifting on a platform or with bumper plates) due to less eccentric loading upon your spinal erectors. However, for multiple repetitions you should try to lower the weight under control while not overly fatiguing the erectors.","The knees should be stacked over the feet. If you position the feet too wide (outside of hip width) then you will likely have to resort to one of two strategies:\n\n\n\t\t\t\tThe knees will be pushed inward (valgus) due to your grip width.\n\n\t\t\t\tYou will have to widen your grip which will require a larger range of motion and make the lift less efficient.","The knees will be pushed inward (valgus) due to your grip width.","You will have to widen your grip which will require a larger range of motion and make the lift less efficient.","If you find that you’re weak at lockout, you should incorporate rack pulls, RDLs, and/or pulls against chains or bands. On the opposite end of the spectrum however, if you’re weak off the floor, you should incorporate paused and/or deficit deadlifts. You would also need additional supplementary work for the upper back and glutes."}	https://cdn.muscleandstrength.com/sites/default/files/deadlift_0.jpg	f
84	Leg Curl	84	{"The lying leg curl is a great exercise to isolate the hamstrings. Set up for the leg curl by selecting the weight you want to use on the stack and adjusting the padding to suit your leg length.","Lay face down on the machine. The padding should be positioned just above the back of your ankles. If it's higher than that, adjust the length.","Tense up the hamstrings by taking the weight slightly off the stack. This is the starting position for the exercise.","Squeeze the hamstrings and curl the weight up as far as possible.","Squeeze the hamstring hard, and then slowly lower the weight back to the starting position.","Repeat for desired reps.","Common mistakes with the leg curl are; moving the weight up and down too fast and not using a full range of motion.","Always control the weight throughout the set. Don't use momentum to move the weight up, and don't allow it to drop back down quickly.","Always use a full range of motion by curling the weight up as far as possible and lowering it as far as possible without the weight dropping on the stack."}	{}	https://cdn.muscleandstrength.com/sites/default/files/lying-leg-curl.jpg	f
85	Stiff Leg Deadlift	85	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the bar using a shoulder width, double overhand grip.","Ensure your spine is neutral, shin is vertical, and your hips are roughly the same height as your shoulders.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"This style of deadlift will look VERY similar to a conventional deadlift only the lifter will start with higher hips and a vertical shin angle. The hips and shoulders will likely be at just about the same height.","Do not allow the bar to drift away from your body during the lift.","You can start these out a rack (similar to an RDL or the American deadlift) or you can start these off the floor.","Keep soft knees and ensure the movement occurs primarily at your hips. There shouldn’t be any movement within your spine - don’t focus on arching your back.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Do not worry about retracting your shoulder blades, this is unnecessary and doesn’t carry over to your deadlift.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","When you hip hinge, you should naturally notice a weight shift to your heels. However, don’t shift your weight so aggressively that your heels come up.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbows doesn’t break neutral."}	https://cdn.muscleandstrength.com/sites/default/files/stiff-leg-deadlifts.jpg	f
86	Romanian Deadlift (AKA RDL)	86	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Assume a double overhand grip just outside of hip width and deadlift the weight into position at the top with the hips and knees locked out.","Begin the RDL by pushing your hips back and hinging forward until the bar is just below knee height.","Drive through the whole foot and focus on pushing the floor away.","Return to the starting position and repeat for the desired number of repetitions."}	{"Range of motion in the lift will largely be determined by an individual’s mobility as well as their ability to maintain a neutral spine. Standing on a box or bench is likely counterproductive as most won’t have the mobility to control that much range of motion effectively.","It is typically recommended that you utilize straps or hook grip when going excessively heavy if grip is the limiting factor as you could run into issues with the bar drifting if using mixed grip.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Do not allow the bar to drift away from the body, it should graze your legs during the eccentric portion of the lift.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Your weight will naturally shift to your heels as you hinge; however, it’s important that you keep the weight distributed over your whole foot and don’t allow the toes to rise. To combat this, you should focus on maintaining 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights."}	https://cdn.muscleandstrength.com/sites/default/files/romanian-deadlift.jpg	f
87	Dumbbell Hamstring Curl	87	{"Set up for the dumbbell hamstring curl by elevating a flat bench on a block or step. You can use a grounded flat bench, but elevating it gives you a better range of motion and more efficiently recruits the hamstrings.","Now choose the appropriate dumbbell and set it on the ground near the lower end of the bench.","Lie face down on the bench and position yourself so that your knees are at the edge of the bench.","Pick up the dumbbell from the floor with your feet, securing it between the arches of your two feet.","Your legs should be fully extended and you can wrap your arms around the bench for stability. This is the starting position.","Bending at the knees only, slowly curl the dumbbell up towards your buttocks.","Raise the dumbbell as far as comfortably possible or just past 90 degrees.","Pause for a moment and then lower the dumbbell in a controlled manner back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/dumbbell-hamstring-curl.jpg?itok=XswiLk_G	f
96	Standing Cable Hamstring Curl	96	{"Set up for the standing cable hamstring curl by attaching an ankle strap to the low pulley of a cable machine and setting the weight on the stack.","Position a block or a step in front of the machine to stand on for a better range of motion.","Attach the strap to your left ankle and stand on the block with your right foot, allowing your left foot to hang off to the side.","Stand with a slight bend in your knee and grab onto the machine with both hands for stability. This is the starting position.","Bending at the knee, slowly lift your left ankle up behind you toward your buttocks.","Raise your foot as high as comfortably possible and pause for a moment squeezing your hamstrings.","Slowly lower the weight to the starting position and repeat for desired reps.","Repeat using your right leg"}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-cable-hamstring-curl.jpg?itok=wI99mKnr	f
88	Dumbbell Stiff Leg Deadlift	88	{"Set up for the dumbbell stiff leg deadlift by choosing a pair of dumbbells and holding them down at your sides.","Stand up straight with a slight bend in your knees and your feet around shoulder width apart. This is your starting position.","Keep your back as straight as possible and bend over at the waist lowering the dumbbells over the tops of you feet. Your knees should be kept stationary during the movement.","Focus on the stretch in your hamstrings, and continue to lower the dumbbells down as far as your hamstrings will let you comfortably.","Now engage the hamstrings and begin to raise the dumbbells straight back up. Your eyes should be facing up and your shoulders back. This will prevent your lower back from rounding.","Squeeze up through the glutes and hamstrings until you're standing straight up.","Repeat for desired reps.","You must keep your eyes looking up at all times. As soon as you look down at the floor your back will round!","The dumbbells need to stay close to your body throughout the set. The further the dumbbells are from your body the more strain is on your lower back.","Focus on stretching the hamstrings out as you lower the dumbbells and contracting them as you raise back up. The greater the mind-muscle connection the more you'll get out of this exercise.","It's best to have your knees slightly bent during the set but fixed (ie: bend them slightly but keep them locked in the same place throughout the set).","During the descent, to protect your lower back, keep your weight back on the heels. Do not let your weight shift forward onto the toes. If you find the your weight on the toes when at the bottom position of the exercise, you are performing it incorrectly.","Do not relax at the bottom of the movement. Keep your legs, back and abdominals tight as you begin the ascent.","Keep the rep timing slow and control the weight, especially when lowering. Remember the focus is on stretch and contraction!","One of the biggest mistakes people make when performing this exercise is bending over at the waist without moving the hips back. Instead of being supported by the large hamstring muscles, the weight is now placed almost entirely on the lower spine. Needless to say, this puts your back at great risk for injury. If you keep the weight close to your body your hips with naturally move back.","Technique is so important with this exercise. If you're just starting out, stand with your side to a mirror with a very light weight and practice the movement. Once you get the technique nailed you'll be able to move up in weight and start building some killer hams and glutes!"}	{}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-stiff-leg-deadlift.jpg	f
89	Conventional Deadlift	89	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the bar using a shoulder width, double overhand grip.","Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”.","As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.","The deadlift is a hinge, not a squat. If you set the hips too low you will put yourself in a disadvantageous position biomechanically and limit your potential for pulling maximal weights.","In order to prevent the bar from drifting away from the body, one should focus on squeezing their lats in order to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.","The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Ideally you should cue and emphasize a vertical shin but this will depend entirely on a lifter’s spine and limb length.","Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly in, out, or neutral) to see what feels best for you.","Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Scraping the shins isn’t always necessary in the deadlift. It may occur more frequently with sumo rather than conventional work but if you have the arm pits in the correct position (as noted above) then the bar should travel vertically and the shins will become vertical and move out of the way as the knees extend.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights.","More experienced lifters may not need to emphasize the “pull the slack out the bar” cue as much and that’s perfectly fine if it works for them and still allows them to pull maximal weight but initially it’s an important concept to understand and implement.","For single repetitions, it will be much easier to drop the bar from lockout (provided that it’s allowed and you’re lifting on a platform or with bumper plates) due to less eccentric loading upon your spinal erectors. However, for multiple repetitions you should try to lower the weight under control while not overly fatiguing the erectors.","The knees should be stacked over the feet. If you position the feet too wide (outside of hip width) then you will likely have to resort to one of two strategies:\n\n\n\t\t\t\tThe knees will be pushed inward (valgus) due to your grip width.\n\n\t\t\t\tYou will have to widen your grip which will require a larger range of motion and make the lift less efficient.","The knees will be pushed inward (valgus) due to your grip width.","You will have to widen your grip which will require a larger range of motion and make the lift less efficient.","If you find that you’re weak at lockout, you should incorporate rack pulls, RDLs, and/or pulls against chains or bands. On the opposite end of the spectrum however, if you’re weak off the floor, you should incorporate paused and/or deficit deadlifts. You would also need additional supplementary work for the upper back and glutes."}	https://cdn.muscleandstrength.com/sites/default/files/deadlift_0.jpg	f
90	Leg Curl	90	{"The lying leg curl is a great exercise to isolate the hamstrings. Set up for the leg curl by selecting the weight you want to use on the stack and adjusting the padding to suit your leg length.","Lay face down on the machine. The padding should be positioned just above the back of your ankles. If it's higher than that, adjust the length.","Tense up the hamstrings by taking the weight slightly off the stack. This is the starting position for the exercise.","Squeeze the hamstrings and curl the weight up as far as possible.","Squeeze the hamstring hard, and then slowly lower the weight back to the starting position.","Repeat for desired reps.","Common mistakes with the leg curl are; moving the weight up and down too fast and not using a full range of motion.","Always control the weight throughout the set. Don't use momentum to move the weight up, and don't allow it to drop back down quickly.","Always use a full range of motion by curling the weight up as far as possible and lowering it as far as possible without the weight dropping on the stack."}	{}	https://cdn.muscleandstrength.com/sites/default/files/lying-leg-curl.jpg	f
91	Stiff Leg Deadlift	91	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the bar using a shoulder width, double overhand grip.","Ensure your spine is neutral, shin is vertical, and your hips are roughly the same height as your shoulders.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"This style of deadlift will look VERY similar to a conventional deadlift only the lifter will start with higher hips and a vertical shin angle. The hips and shoulders will likely be at just about the same height.","Do not allow the bar to drift away from your body during the lift.","You can start these out a rack (similar to an RDL or the American deadlift) or you can start these off the floor.","Keep soft knees and ensure the movement occurs primarily at your hips. There shouldn’t be any movement within your spine - don’t focus on arching your back.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Do not worry about retracting your shoulder blades, this is unnecessary and doesn’t carry over to your deadlift.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","When you hip hinge, you should naturally notice a weight shift to your heels. However, don’t shift your weight so aggressively that your heels come up.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbows doesn’t break neutral."}	https://cdn.muscleandstrength.com/sites/default/files/stiff-leg-deadlifts.jpg	f
92	Romanian Deadlift (AKA RDL)	92	{"Position the bar over the top of your shoelaces and assume a hip width stance.","Assume a double overhand grip just outside of hip width and deadlift the weight into position at the top with the hips and knees locked out.","Begin the RDL by pushing your hips back and hinging forward until the bar is just below knee height.","Drive through the whole foot and focus on pushing the floor away.","Return to the starting position and repeat for the desired number of repetitions."}	{"Range of motion in the lift will largely be determined by an individual’s mobility as well as their ability to maintain a neutral spine. Standing on a box or bench is likely counterproductive as most won’t have the mobility to control that much range of motion effectively.","It is typically recommended that you utilize straps or hook grip when going excessively heavy if grip is the limiting factor as you could run into issues with the bar drifting if using mixed grip.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Do not allow the bar to drift away from the body, it should graze your legs during the eccentric portion of the lift.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Your weight will naturally shift to your heels as you hinge; however, it’s important that you keep the weight distributed over your whole foot and don’t allow the toes to rise. To combat this, you should focus on maintaining 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights."}	https://cdn.muscleandstrength.com/sites/default/files/romanian-deadlift.jpg	f
93	Dumbbell Hamstring Curl	93	{"Set up for the dumbbell hamstring curl by elevating a flat bench on a block or step. You can use a grounded flat bench, but elevating it gives you a better range of motion and more efficiently recruits the hamstrings.","Now choose the appropriate dumbbell and set it on the ground near the lower end of the bench.","Lie face down on the bench and position yourself so that your knees are at the edge of the bench.","Pick up the dumbbell from the floor with your feet, securing it between the arches of your two feet.","Your legs should be fully extended and you can wrap your arms around the bench for stability. This is the starting position.","Bending at the knees only, slowly curl the dumbbell up towards your buttocks.","Raise the dumbbell as far as comfortably possible or just past 90 degrees.","Pause for a moment and then lower the dumbbell in a controlled manner back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/dumbbell-hamstring-curl.jpg?itok=XswiLk_G	f
94	Trap Bar Rack Pull	94	{"Set up the bar at just below knee height on the safety pins in a rack.","Stand inside of the trap bar with a hip width stance.","Push your hips back and hinge forward. Reach down and grasp the handles using a neutral grip outside of shoulder width.","Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”.","As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the pins, reset, and repeat for the desired number of repetitions."}	{"Stance width should ideally resemble your typical jumping position. Place your feet in a stance that feels powerful and keeps the knees vertically aligned over the feet.","To prevent the bar from drifting away from the body, one should focus on squeezing their lats to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.","The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.","Ideally the knees should be tracking out over the foot. If you find that you have trouble keeping this neutral knee position, focus on spreading the floor by trying to push your feet apart as you push into the floor. In other words, imagine there is a crack in the floor and you’re trying to spread it open by pushing your heels away from each other. This will help to activate your glutes more during the movement and stabilize the knee joint.","You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","More experienced lifters may not need to emphasize the “pull the slack out the bar” cue as much and that’s perfectly fine if it works for them and still allows them to pull maximal weight but initially it’s an important concept to understand and implement.","Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly in, out, or neutral) to see what feels best for you.","Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.","Make sure you wrap your thumb around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Ensure that the hands are positioned in the middle of the handles as this will ensure that the bar doesn’t tilt as you make your pull.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights.","For single repetitions, it will be much easier to drop the bar from lockout (provided that it’s allowed and you’re lifting on a platform or with bumper plates) due to less eccentric loading upon your spinal erectors. However, for multiple repetitions you should try to lower the weight under control while not overly fatiguing the erectors.","If you find that you’re weak at lockout, you should incorporate rack pulls, RDLs, and/or pulls against chains or bands. On the opposite end of the spectrum however, if you’re weak off the floor, you should incorporate paused and/or deficit deadlifts. You would also need additional supplementary work for the upper back and glutes."}	https://cdn.muscleandstrength.com/sites/default/files/trap-bar-rack-pull.jpg	f
97	Seated Leg Curl	97	{"Select the desired weight, then adjust the pad so it rests comfortably above the back of the heels.","Tense up the hamstrings by taking the weight slightly off the stack. This is the starting position for the exercise.","Take a deep breath, squeeze the hamstrings, and curl the weight up as far as possible while keeping the spine neutral.","Slowly lower the weight back to the starting position and repeat for the desired number of repetitions."}	{"To keep tension on the hamstrings, keep the knees just shy of lockout.","Don’t allow the back to arch, keep your hips pressed into the pad.","Keep your low back flat against the pad throughout the movement.","Ensure the head does not jut forward excessively.","Don’t allow momentum to dictate the tempo of the exercise, control the movement throughout the entire range of motion."}	https://cdn.muscleandstrength.com/sites/default/files/seated-leg-curl-1.jpg	f
98	Bodyweight Single Leg Deadlift	98	{"Set up in a standing position with your hands at your side and thumbs facing outward.","Keep a slight bend in the plant leg and hinge forward from the hip while keeping the chest tall and thumbs pointing up.","Hinge to 90 degrees (if possible) and allow the hamstrings to stretch while keeping the head neutral.","Repeat on the opposite side for the desired number of repetitions."}	{"Don’t look up, keep the head neutral and allow the chin to follow your chest.","Keep the toes of the extended leg pointing straight down and don’t allow the hips to rotate open.","Imagine you’re trying to touch the wall behind you with your heel. Ideally your heel will lead the movement as you hinge forward from the hip and don’t just drop the chest."}	https://cdn.muscleandstrength.com/sites/default/files/bodyweight-single-leg-deadlift.jpg	f
99	Sumo Deadlift	99	{"Position the bar over the top of your shoelaces and assume a wide stance (determined by your hip structure and limb length).","Push your hips back and hinge forward until your torso is nearly parallel with the floor.","Reach down and grasp the bar using a shoulder width, double overhand grip.","Inhale and pull up slightly on the bar while allowing your hips to drop in a seesaw fashion. This phenomenon is commonly referred to as “pulling the slack out of the bar”.","As you drop the hips and pull up on the bar, set the lats (imagine you’re trying to squeeze oranges in your armpits) and ensure your armpits are positioned directly over the bar.","Drive through the whole foot and focus on pushing the floor away.","Ensure the bar tracks in a straight line as you extend the knees and hips.","Once you have locked out the hips, reverse the movement by pushing the hips back and hinging forward.","Return the bar to the floor, reset, and repeat for the desired number of repetitions."}	{"Stance width varies greatly depending upon the individual. Rather than spend too much time trying to calculate your ideal stance width, simply experiment and see what feels best on your hips in the long run while simultaneously allowing you to generate the most power. For some folks this will be a semi medium width (hybrid) position whereas for others their toes will almost be touching the plates.","The sumo pull is slightly different than conventional as the goal is to “wedge” your hips into the bar and get them as close as possible.","In order to prevent the bar from drifting away from the body, one should focus on squeezing their lats in order to keep the bar close and allow it to travel in a linear fashion. Use the cue: “squeeze oranges in your armpits”, “put your shoulder blades in your back pockets” (i.e. scapular depression) or “imagine you’re doing a straight arm pulldown”.","The hips should be lower than the shoulders and you should be able to see the logo on the lifter’s shirt before they pull (i.e. “chest up”). The chest up cue is usually accomplished when the lats become locked in though so this cue is typically not needed if the lifter understands how to initiate the lats.","Ideally the knees should be tracking out over the foot. If you find that you have trouble keeping this neutral knee position, focus on spreading the floor by trying to push your feet apart as you push into the floor. In other words, imagine there is a crack in the floor and you’re trying to spread it open by pushing your heels away from each other. This will help to activate your glutes more during the movement and stabilize the knee joint.","You MUST keep the crease of the armpit over the bar and the midfoot in order to allow the bar to travel linearly.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Ideally you should cue and emphasize a vertical shin, especially in the sumo deadlift.","More experienced lifters may not need to emphasize the “pull the slack out the bar” cue as much and that’s perfectly fine if it works for them and still allows them to pull maximal weight but initially it’s an important concept to understand and implement.","Toe angle is highly individual - this will be dependent upon your hip anatomy. Experiment (toes slightly out or neutral) to see what feels best for you.","Do NOT retract your shoulder blades. This is mechanically inefficient and a self limiting cue as it shortens the length of the arms thus requiring a larger range of motion.","Make sure you wrap your thumb around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Scraping the shins isn’t always necessary in the deadlift. It may occur more frequently with sumo rather than conventional work but if you have the arm pits in the correct position (as noted above) then the bar should travel vertically and the shins will become vertical and move out of the way as the knees extend.","To follow up on my previous point, if you focus on keeping the weight entirely on the heels, you won’t be able to effectively recruit your quads at the beginning of the lift and thus you’ll be slow off the flow. So, to combat this, you should focus on driving through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights.","For single repetitions, it will be much easier to drop the bar from lockout (provided that it’s allowed and you’re lifting on a platform or with bumper plates) due to less eccentric loading upon your spinal erectors. However, for multiple repetitions you should try to lower the weight under control while not overly fatiguing the erectors.","If you find that you’re weak at lockout, you should incorporate rack pulls, RDLs, and/or pulls against chains or bands. On the opposite end of the spectrum however, if you’re weak off the floor, you should incorporate paused and/or deficit deadlifts. You would also need additional supplementary work for the upper back and glutes."}	https://cdn.muscleandstrength.com/sites/default/files/sumo-deadlift-1.jpg	f
100	Single Leg Curl	100	{"Set up for the single leg curl by selecting the weight you want to use on the stack and adjusting the padding to suit your leg length.","Lay face down on the machine. The padding should be positioned just above the back of your ankles. If it's higher than that, adjust the length.","Tense up the hamstrings by taking the weight slightly off the stack. This is the starting position for the exercise.","Squeeze the hamstrings and curl the weight up as far as possible using your left leg only.","Squeeze the hamstring hard, and then slowly lower the weight back to the starting position.","Repeat for desired reps and then repeat with your right leg.","Common mistakes with the leg curl are; moving the weight up and down too fast and not using a full range of motion.","Always control the weight throughout the set. Don't use momentum to move the weight up, and don't allow it to drop back down quickly.","Always use a full range of motion by curling the weight up as far as possible and lowering it as far as possible without the weight dropping on the stack."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/singlelegcurl1.jpg?itok=DT42yiTZ	f
101	Valslide Leg Curl	101	{"Set up in a supine position with your hands by your side, knees bent, and feet placed on valslides.","Extend your hips by contracting your glutes and then slowly extend your legs until they’re almost parallel with the floor.","Contract your hamstrings to pull your heels towards your butt.","Repeat for the desired number of repetitions."}	{"You should feel this primarily through your glutes and hamstrings. If you’re getting a lower back pump then odds are, you’re dealing with a core/pelvis stability issue. Regress to loaded glute bridges and seated hamstring curls. From there, work to build up to eccentric only valslide leg curls (bridge the hips up, let the legs out, lower the hips, pull the legs back in, repeat from step #1).","If you struggle to feel your medial hamstrings engage, squeeze a foam roller or yoga mat between your knees as you curl your feet in.","Refrain from locking out your knees at the bottom of the movement to keep tension through your hamstrings.","If you don’t have access to valslides then you can use a slide board, towel, or even paper plates on a slick surface such as a wood floor."}	https://cdn.muscleandstrength.com/sites/default/files/valslide-leg-curl.jpg	f
102	Trap Bar Romanian Deadlift	102	{"Stand inside of the trap bar with a hip width stance.","Assume a neutral grip on the handles and deadlift the weight into position at the top with the hips and knees locked out.","Begin the RDL by pushing your hips back and hinging forward until the bar is just below knee height.","Drive through the whole foot and focus on pushing the floor away.","Return to the starting position and repeat for the desired number of repetitions."}	{"Range of motion in the lift will largely be determined by an individual’s mobility as well as their ability to maintain a neutral spine. Standing on a box or bench is likely counterproductive as most won’t have the range of motion to control that much range of motion effectively.","It may be easier to utilize the trap bar given the load is distributed on both sides of the body rather than in front. Since this is the case, it can be thought of as a progression into normal RDLs.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Do not allow the bar to drift away from the body, it should graze your legs during the eccentric portion of the lift.","Make sure you wrap your thumbs around the bar and don’t utilize a false grip. Squeeze the bar as tight as possible like you’re trying to leave an imprint of your fingerprints on the bar.","Your weight will naturally shift to your heels as you hinge; however, it’s important that you keep the weight distributed over your whole foot and don’t allow the toes to rise. To combat this, you should focus on maintaining 3 points of contact: big toe, little toe, and heel.","Ensure the elbows stay locked out. Don’t actively flex the triceps but make sure that your elbow doesn’t break neutral as this can potentially put you at risk for a bicep tear under maximal weights."}	https://cdn.muscleandstrength.com/sites/default/files/trap-bar-romanian-deadlift.jpg	f
103	Inchworm	103	{"In an upright position, reach forward and touch the floor with your fingertips.","Walk your hands forward until you’re in a pushup position.","While keeping your knees locked out, tuck your chin to look at your shoes and tip-toe your feet up towards your hands as far as possible.","Walk your hands back out to a pushup position and repeat the process for desired number of repetitions."}	{"Push your hands into the floor as you walk your feet up, you should feel your traps engage. Remember though, it’s a push not a deliberate shrug.","Look at your shoelaces as you walk your feet up. Tucking the chin helps to improve the overhead position.","Don’t let the hips sag when you’re walking the hands out.","Start pushing the floor away when you’re in the pushup position."}	https://cdn.muscleandstrength.com/sites/default/files/inchworm.jpg	f
104	Hyperextension	104	{"Setup in a hyperextension machine with your feet anchored and torso roughly perpendicular to your legs at a 45 degree angle.","Begin in a hinged position with your arms crossed and initiate the movement by flexing your glutes.","Extend the hips and finish with your body in a straight line.","Repeat for the desired number of repetitions."}	{"Keep in mind that there are two ways to do hyperextensions. For the vast majority of folks (outside of a sport specific application - ex. Gymnastics or Olympic weight lifting), they stick with the first rather than the second option.\n\n\nGlutecentric: Slightly flex your upper back and extend your hips until your body is in a straight line and focus entirely on gluteal activation.\n\nErector-centric: Arch globally through the spine and focus entirely on erector activation.","Glutecentric: Slightly flex your upper back and extend your hips until your body is in a straight line and focus entirely on gluteal activation.","Erector-centric: Arch globally through the spine and focus entirely on erector activation.","If you can’t seem to feel your glutes activating, palpate the musculature with your hands and focus on pausing the movement at the peak of contraction.","If you find one glute has less contractility than another, perform twice as much volume on that side relative to the other with unilateral variations until you have established an efficient mind/muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/hyperextensions.jpg	f
105	Barbell Hip Thrust	105	{"Start in a supine position with your back on a bench and roll a barbell up to the crease of your hips.","Drive both feet into the floor and squeeze your glutes while bridging your hips up.","Lower your hips back to the starting position and repeat for the desired number of repetitions."}	{"If just using your bodyweight, you can cross your arms in front of your chest or simply have them straight out to the sides. Utilize whichever method is more comfortable.","Ensure that the lower back doesn’t arch as you extend the hip, you should focus on squeezing the glutes and slightly posteriorly tilting the pelvis.","Ideally you should prioritize a straight line from your knees through your shoulders at the peak of contraction.","Don’t allow the hips to drop or rotate as you bridge the hips up.","Focus on exhaling as you bridge the hips up. You shouldn’t feel the movement through your lower back at all.","If you can’t seem to feel your glutes activating, palpate the musculature with your hands and focus on pausing the movement at the peak of contraction."}	https://cdn.muscleandstrength.com/sites/default/files/barbell-hip-thrusts.jpg	f
106	Good Mornings	106	{"Set a bar just below shoulder height in a rack and adjust the safeties to just above hip height.","Set your hands equidistant apart, step underneath, and position the bar on your traps (or slightly below if you prefer a low bar version).","Begin the movement by unlocking your knees and hinging back into the hips while keeping your spine neutral.","Drive through the whole foot as you extend the hip back to the starting position.","Repeat for the desired number of repetitions."}	{"Range of motion in the lift will largely be determined by an individual’s mobility as well as their ability to maintain a neutral spine.","Experiment with a “false” (i.e. thumbless) grip as this helps to eliminate elbow and wrist issues in some folks.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Your weight will naturally shift to your heels as you hinge; however, it’s important that you keep the weight distributed over your whole foot and don’t allow the toes to rise. To combat this, you should focus on maintaining 3 points of contact: big toe, little toe, and heel."}	https://cdn.muscleandstrength.com/sites/default/files/standing-good-morning.jpg	f
107	Standing Glute Kickback	107	{"Set up for the standing glute kickback by adjusting the height of the leg padding on the machine and setting the appropriate weight on the stack.","Raise your left leg and secure the padding under you left knee.","Hold onto the bar and stand with a slight bend in your left knee. Keep your back straight and head up. This is the starting position.","Slowly push your left leg behind you by extending your leg as far back as comfortably possible.","Pause for a moment and then slowly raise your knee back out in front of you until you reach the starting position.","Repeat this movement for desired reps and then repeat using your right leg.","Perform this exercise in a slow and controlled fashion while squeezing your glutes.","Use a weight that allows you to move the weight without jerking. Keep your body as still as possible, moving only at the hip and knee joint of the working leg.","To add intensity, pause for a few seconds and squeeze your glutes when your leg is fully extended."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/standingglutekickback1.jpg?itok=IuZbVnfR	f
108	Glute Kick Back	108	{"Setup in a quadruped position with your hands underneath your shoulders, knees underneath your hips, and toes tucked.","While keeping a neutral spine and a 90 degree angle at the knee, extend the hip and drive the heel towards the ceiling.","Slowly return to the starting position and repeat for the desired number of repetitions on both sides."}	{"The lumbar spine shouldn’t move at all, ensure that all of the movements comes entirely from the hip.\n\n\n\t\t\t\tSqueeze the glute and exhale as the hip extends to keep the abs active.","Squeeze the glute and exhale as the hip extends to keep the abs active.","Keep the head down and don’t worry about looking up as you complete repetitions, this can tend to drive you further into extension.","Keep the elbows locked out and think about leading the movement by driving the heel vertically."}	https://cdn.muscleandstrength.com/sites/default/files/glute-kick-back.jpg	f
109	Wide Smith Machine Squat	109	{"Set up for the wide smith machine squat by setting the bar to around shoulder height and loading the weight you want to use on the smith machine.","Stand under the bar with your legs in a wide stance and your toes pointed slightly outward.","Grasp the bar with a wide grip and position the center of the bar on top of the muscles on your back. The bar should not sit on your neck.","Keeping your back straight and your eyes facing forwards, take the weight off the rack. Take a slight step forward.","With your back straight and your eyes facing forward, slowly squat down until your thighs are parallel to the floor.","Push up through your heels and raise the bar back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/widesmithmachinesquat1.jpg?itok=Voe6vzMY	f
110	Bodyweight Glute Bridge	110	{"Start in a supine position on the floor with your arms at a 45 degree angle relative to your torso.","Bridge your hips up by squeezing your glutes and driving your heels into the floor.","Lower your hips back to the starting position and repeat for the desired number of repetitions."}	{"Ensure that the lower back doesn’t arch as you extend the hip, you should focus on squeezing the glutes and slightly posteriorly tilting the pelvis.","Ideally you should prioritize a straight line from your knees through your shoulders at the peak of contraction.","Focus on exhaling as you bridge the hips up. You shouldn’t feel the movement through your lower back at all.","If you can’t seem to feel your glutes activating, palpate the musculature with your hands and focus on pausing the movement at the peak of contraction.","If you find one glute has less contractility than another, perform the movement unilaterally and then incorporate the bilateral version after you have accumulated sufficient volume on the side with poor contractility."}	https://cdn.muscleandstrength.com/sites/default/files/bodyweight-glute-bridge_0.jpg	f
111	Reverse Hyperextension	111	{"Setup by laying facedown on the main pad of a GHD positioned at the base of your hips.","Reach back and grasp the back of the machine with whatever grip allows you to maintain your position.","Begin in a position of hip flexion and initiate the movement by flexing your glutes.","Extend the hips and finish with your body in a straight line.","Repeat for the desired number of repetitions."}	{"Keep in mind that there are two ways to do hyperextensions. For the vast majority of folks (outside of a sport specific application - ex. Gymnastics or Olympic weight lifting), they stick with the first rather than the second option.\n\n\nGlutecentric: Slightly flex your upper back and extend your hips until your body is in a straight line and focus entirely on gluteal activation.\n\nErector-centric: Arch globally through the spine and focus entirely on erector activation.","Glutecentric: Slightly flex your upper back and extend your hips until your body is in a straight line and focus entirely on gluteal activation.","Erector-centric: Arch globally through the spine and focus entirely on erector activation.","If you can’t seem to feel your glutes activating, palpate the musculature with your hands and focus on pausing the movement at the peak of contraction.","If you find one glute has less contractility than another, perform twice as much volume on that side relative to the other with unilateral variations until you have established an efficient mind/muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/reverse-hyperextension.jpg	f
112	Glute Foam Rolling	112	{"In a seated position, place the foam roller directly underneath your glute at the base of your pelvis and lower leg.","Cross one leg over the other in a figure four position and shift your weight over the glute of the crossed leg. Drop one hand behind you for support and place the other on the crossed leg.","Slowly roll up and down the length of the glute for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Do not allow yourself to fall into excessive flexion, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Stay off your tailbone and try to avoid the medial portion of the glute as the sciatic nerve runs through this region.","Foam rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea."}	https://cdn.muscleandstrength.com/sites/default/files/foam-rolling-glutes.jpg	f
113	Marching Glute Bridge	113	{"Start in a supine position on the floor with your arms at a 45 degree angle relative to your torso.","Bridge your hips up by squeezing your glutes and driving your heels into the floor.","Lift one leg and flex the hip to 90 degrees while keeping the knee bent to 90 degrees as well.","Lower the leg back to the starting position and repeat step #3 with the opposite leg.","Repeat for the desired number of repetitions."}	{"Ensure that the lower back doesn’t arch as you extend the hip, you should focus on squeezing the glutes and slightly posteriorly tilting the pelvis.","Ideally you should prioritize a straight line from your knees through your shoulders at the peak of contraction.","Don’t allow the hips to drop or rotate as you lift each leg.","Focus on exhaling as you bridge the hips up. You shouldn’t feel the movement through your lower back at all.","If you can’t seem to feel your glutes activating, palpate the musculature with your hands and focus on pausing the movement at the peak of contraction.","If you find one glute has less contractility than another, perform the movement unilaterally and then incorporate the bilateral version after you have accumulated sufficient volume on the side with poor contractility."}	https://cdn.muscleandstrength.com/sites/default/files/marching-glute-bridge.jpg	f
114	Seated Good Mornings	114	{"Set a bar just below shoulder height when seated on a bench in a rack and adjust the safeties to just above hip height.","Set your hands equidistant apart, slide underneath, and position the bar on your traps (or slightly below if you prefer a low bar version).","Begin the movement by hinging forward into the hips while keeping your spine neutral.","Drive through the whole foot as you extend the hip back to the starting position.","Repeat for the desired number of repetitions."}	{"Range of motion in the lift will largely be determined by an individual’s mobility as well as their ability to maintain a neutral spine.","Experiment with a “false” (i.e. thumbless) grip as this helps to eliminate elbow and wrist issues in some folks.","Drive through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Neck position is highly individual - Some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking slightly up. Here’s some factors to consider:\n\n\n\t\t\t\tIf you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.\n\n\t\t\t\tOn the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.\n\n\t\t\t\tExperiment with each and see which one works best for your individual anatomy and biomechanics.","If you’re someone who is more globally extended (i.e. athletic background), then you will likely be able to keep a neutral position more effectively by packing the chin.","On the opposite end of the spectrum, if you tend to be more flexion dominant (especially in your thoracic spine - upper back) then it would behoove you to look up slightly as this will drive more extension.","Experiment with each and see which one works best for your individual anatomy and biomechanics.","Your weight will naturally shift to your heels as you hinge; however, it’s important that you keep the weight distributed over your whole foot and don’t allow the toes to rise. To combat this, you should focus on maintaining 3 points of contact: big toe, little toe, and heel."}	https://cdn.muscleandstrength.com/sites/default/files/seated-good-mornings.jpg	f
115	X-Band Walk	115	{"Set up in a standing position holding one end of a band and looping the other end under your feet.","Cross the band to form an X and pull up on the ends to increase the tension across the band.","Keep the hips low and execute small lateral steps.","Repeat in the opposite direction for the desired number of repetitions."}	{"Keep the shoulders level and execute small steps while ensuring that the glutes are working primarily.","Ensure the hips stay stable and there isn’t any excessive rotation.","Sit into the hips and don’t stand up in between repetitions.","Maintain a good athletic base position with your feet slightly wider than shoulder width and your shoulders stacked over your hips. Think: “soft knees, active glutes”."}	https://cdn.muscleandstrength.com/sites/default/files/x-band-walk.jpg	f
116	Standing Hip Flexion w/ Bands	116	{"Setup in a standing position with a band looped around one foot and your arms by your sides.","Exhale and drive the knee up while keeping the spine neutral.","Return to the starting position and repeat for the desired number of repetitions, then switch sides and repeat."}	{"Fight the urge to round your upper back as you extend the leg.","If you have trouble balancing on one leg, look to improve single leg strength but also regress this drill to the supine version.","Move slowly and methodically at least initially. As you get stronger and more stable, you can work to increase the speed at which you perform the exercise."}	https://cdn.muscleandstrength.com/sites/default/files/standing-hip-flexion-with-bands.jpg	f
117	Cradle Walk to Forward Lunge	117	{"In a standing position, quarter squat and position one leg in a figure four position.","Reach down and grab the ankle and knee of the non plant leg using a pronated grip.","Pull the leg upwards while keeping the chest tall and extending the planted leg.","Release the leg and step forward in a lunge position until the back knee touches the ground.","Repeat the process on the opposite leg for the desired number of repetitions."}	{"Ensure you grab the ankle and NOT the sole of the foot. Pulling on the sole of the shoe will place unnecessary stress on the lateral portion of the ankle which is most susceptible to ankle sprains. Remember, ankle and knee - you shouldn’t be touching your shoe.","As you pull the leg upwards, ensure your chest does not round. Think about driving your head towards the ceiling as you lift.","Ensure the back knee is extended as some have a tendency to keep a slight amount of flexion.","You may receive additional benefit from completing a calf raise as you pull the leg up during the movement. This can help to mobilize the ankle as you are improving hip mobility on the opposite leg.","Do your best to keep the front shin vertical during the lunge. If you struggle with forward knee travel, regress to split squats and other movements where you must maintain a half kneeling position."}	https://cdn.muscleandstrength.com/sites/default/files/cradle-walk-to-forward-lunge.jpg	f
118	Cradle Walk	118	{"In a standing position, quarter squat and position one leg in a figure four position.","Reach down and grab the ankle and knee of the non plant leg using a pronated grip.","Pull the leg upwards while keeping the chest tall and extending the planted leg.","Release the leg and slowly lower back to the starting position.","Repeat the process on the opposite leg for the desired number of repetitions."}	{"Ensure you grab the ankle and NOT the sole of the foot. Pulling on the sole of the shoe will place unnecessary stress on the lateral portion of the ankle which is most susceptible to ankle sprains. Remember, ankle and knee - you shouldn’t be touching your shoe.","As you pull the leg upwards, ensure your chest does not round. Think about driving your head towards the ceiling as you lift.","Ensure the back knee is extended as some have a tendency to keep a slight amount of flexion.","You may receive additional benefit from completing a calf raise as the pull the leg up during the movement. This can help to mobilize the ankle as you are improving hip mobility on the opposite leg."}	https://cdn.muscleandstrength.com/sites/default/files/cradle-walk.jpg	f
119	Hip Flexor Lacrosse Ball	119	{"Find your belly button and the point of your hip (ASIS), draw a diagonal line between the two, and then place the lacrosse ball directly in the middle of the line.","In a prone position, situate the lacrosse ball within the designated area and lie down.","Support your head with your hands and slowly roll the hip flexors for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Performing SMR may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea."}	https://cdn.muscleandstrength.com/sites/default/files/hip-flexors-lacrosse-ball.jpg	f
120	Fire Hydrant Circles	120	{"In a quadruped position, ensure the hands are underneath the shoulders, the knees are underneath the hips, and the toes are tucked.","While keeping the knee bent, lift one leg slightly off the floor and rotate the hip in progressively larger circles while keeping the knee and ankle joint locked in place.","Rotate for the assigned number of repetitions and then repeat on the opposite side."}	{"Focus on keeping all of the movement relegated to the hip, don’t allow the spine to move to compensate a lack of hip mobility.","Push into the floor with your hands and focus on keeping the head neutral."}	https://cdn.muscleandstrength.com/sites/default/files/fire-hydrant-circles.jpg	f
121	Kneeling Posterior Hip Capsule Mobilization	121	{"In a quadruped position, straighten one leg and shift your weight to the other knee in flexion.","Externally rotate the hip by turning your shin inward.","Oscillate in small circles to determine areas of restriction and continue to breathe normally.","Repeat for the assigned time or number of repetitions on both sides."}	{"Depending upon the bony anatomy of your hips, you may need to keep your shin pointing directly down.","You should feel a large stretch at the top of your glute. If you can’t seem to “find” the stretch in your glutes, experiment with altering foot position and weight shift into the hip."}	https://cdn.muscleandstrength.com/sites/default/files/kneeling-posterior-hip-capsule-mobilization.jpg	f
122	Hip Flexor Foam Rolling	122	{"In a prone position, place the foam roller directly below the crease of your hip and slightly above your thigh. It should rest comfortably at the base of the hip joint on the front side of the leg.","Support your upper body using your forearms. Position your other leg to the side at a 90 degree angle and allow the knee to rest on the ground.","Adjust pressure into the roller by applying more or less force through the forearms and knee.","Slowly roll up and down the length of the hip flexor for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Do not allow yourself to fall into overextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Foam rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea."}	https://cdn.muscleandstrength.com/sites/default/files/foam-rolling-hip-flexor.jpg	f
123	Lying Psoas March	123	{"Set up in a supine position with a band looped around your feet and your arms by your sides.","Exhale as you press one leg to extension and hold the other in flexion.","Return to the starting position and repeat for the desired number of repetitions on both sides."}	{"Fight the urge to overextend at your lumbar spine as you extend the leg.","Push the leg to full horizontal extension, don’t press towards the ceiling and keep the hip in flexion.","If you find that you have a tough time keeping your spine neutral during the exercise, experiment with raising your head off the floor slightly, this will help to cue anterior core activation.","Ensure that you exhale as you lower the leg, this will also help to enhance anterior core activation."}	https://cdn.muscleandstrength.com/sites/default/files/lying-psoas-march.jpg	f
124	IT Band Foam Rolling	124	{"In a side lying position, place the foam roller directly underneath your thigh between your knee and hip.","Support your upper body using your forearm and free hand. Cross your top leg in front of the down leg and adjust pressure into the roller with your free hand and foot.","Slowly roll up and down the length of the thigh for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Foam rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","Don’t slump into the shoulder capsule, maintain an active upper body.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","In order to shift more pressure into the bottom leg, stack the legs and utilize the weight of your body."}	https://cdn.muscleandstrength.com/sites/default/files/foam-rolling-it-band.jpg	f
125	Lat Pull Down	125	{"Attach a wide grip handle to the lat pulldown machine and assume a seated position.","Grasp the handle with a pronated grip (double overhand) and initiate the movement by depressing the shoulder blade and then flexing the elbow while extending the shoulder.","Pull the handle towards your body until the elbows are in line with your torso and then slowly lower the handle back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","Allow the shoulder to internally rotate and shrug slightly at the top of the movement. You will obviously reverse the movement and depress the shoulder blade before you pull with the arm."}	https://cdn.muscleandstrength.com/sites/default/files/lat-pull-down.jpg	f
126	Close Grip Lat Pull Down	126	{"Attach a wide grip handle to the lat pulldown machine and assume a seated position.","Grasp the handle with a pronated grip (double underhand) at shoulder width.","Initiate the movement by depressing the shoulder blades and then flexing the elbow while extending the shoulder.","Pull the handle towards your body until the elbows are in line with your torso and then slowly lower the handle back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","Don’t allow momentum to dictate the movement, control the weight throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","Allow the shoulder to internally rotate and shrug slightly at the top of the movement. You will obviously reverse the movement and depress the shoulder blade before you pull with the arm."}	https://cdn.muscleandstrength.com/sites/default/files/close-grip-lat-pull-down.jpg	f
157	Dumbbell Lunge	157	{"Choose a pair of dumbbells and stand up straight with a slight bend in your knees.","Hold the dumbbells down at your sides. You are now in the starting position.","Step forward with your left leg while maintaining your balance and squat down through your hips.","Keep your torso straight and head up. Don't allow your knee to track out over your toes.","Push yourself back to the starting position by using your heal to drive you.","Repeat this movement with your right leg and then repeat for desired reps.","Never allow your knees to track out over your toes during this movement. Doing so will place undue stress on the knee joints.","This exercise requires a good deal of balance and is not recommended for those with balance issues.","Keep your head up and back straight throughout the exercise. Never allow your back to round."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/dumbbelllunge1.jpg?itok=ORi54rUu	f
127	Wide Grip Pull Up	127	{"Using a pronated grip, grasp the pull bar with a wider than shoulder width grip.","Take a deep breath, squeeze your glutes and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the lats.","Pull your chin towards the bar until the lats are fully contracted, then slowly lower yourself back to the start position and repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless grip).","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body in a hollow body position.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The pullup is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs. When this occurs, the elbows will flare up behind the body, the shoulder will round forward, and you’ll begin to feel pressure in the front of your shoulders.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight pullup, start with slow negatives (add weight when these can be accomplished under control) or flexed arm hangs in the top position.","Ditch the straps and kips, neither one is necessary or recommended."}	https://cdn.muscleandstrength.com/sites/default/files/wide-grip-pull-up-1.jpg	f
128	Straight Arm Lat Pull Down	128	{"Attach a wide grip handle to a cable stack and assume a standing position.","Grasp the handle with a pronated grip (double overhand) at roughly shoulder width and lean forward slightly by hinging at the hips.","Keep the elbow slightly flexed and initiate the movement by depressing the shoulder blades and extending the shoulders.","Pull the bar to your thigh until the lats are fully contracted and then slowly lower under control.","Repeat for the desired number of repetitions."}	{"Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","If you can’t seem to feel your lats engaging, try to “screw your shoulders” into their sockets by pointing your elbows behind your body. Another cue that works exceptionally well is to “squeeze oranges in your armpits”."}	https://cdn.muscleandstrength.com/sites/default/files/straight-arm-lat-pull-down.jpg	f
129	Chin Up	129	{"Using a supinated grip, grasp the bar with a shoulder width grip.","Take a deep breath, squeeze your glutes and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the lats.","Pull your chin towards the bar until the lats are fully contracted, then slowly lower yourself back to the start position and repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless grip).","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The chin-up is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs.","Imagine you’re trying to drive the elbows down as you pull.","Keep your shoulders down and back, if they round forward at the top then you’ve pulled too far.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight chinup, start with slow negatives or flexed arm hangs at the top position."}	https://cdn.muscleandstrength.com/sites/default/files/chin-ups.jpg	f
130	Reverse Grip Lat Pull Down (Underhand)	130	{"Attach a wide grip handle to the lat pulldown machine and assume a seated position.","Grasp the handle with a supinated grip (double underhand) just inside of shoulder width.","Initiate the movement by depressing the shoulder blades and then flexing the elbow while extending the shoulder.","Pull the handle towards your body until the elbows are in line with your torso and then slowly lower the handle back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","Don’t allow momentum to dictate the movement, control the weight throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","Allow the shoulder to internally rotate and shrug slightly at the top of the movement. You will obviously reverse the movement and depress the shoulder blade before you pull with the arm."}	https://cdn.muscleandstrength.com/sites/default/files/reverse-grip-lat-pull-down.jpg	f
155	Leg Press	155	{"Load the machine with the desired weight and take a seat.","Sit down and position your feet on the sled with a shoulder width stance.","Take a deep breath, extend your legs, and unlock the safeties.","Lower the weight under control until the legs are roughly 45 degrees or slightly below.","Drive the weight back to the starting position by extending the knees but don’t forcefully lockout.","Repeat for the desired number of repetitions."}	{"To keep tension on the quads, keep the knees just shy of lockout.","To emphasize the glutes more, push through the heels.","To emphasize the quads more, push through the balls of the feet.","Don’t allow the hips to posteriorly tilt and roll off the pad.","Keep your low back flat against the pad throughout the movement.","Maintain a neutral head position by not looking up or down excessively.","Self spotting is possible by simply applying pressure to the knees with the hands. Use only when necessary.","Toe angle is individual and will depend upon each individual’s hip anatomy and ankle mobility - experiment and adjust based upon feel."}	https://cdn.muscleandstrength.com/sites/default/files/leg-press.jpg	f
131	Pull Up	131	{"Using a pronated grip, grasp the pull bar with a slightly wider than shoulder width grip.","Take a deep breath, squeeze your glutes and brace your abs. Depress the shoulder blades and then drive the elbows straight down to the floor while activating the lats.","Pull your chin towards the bar until the lats are fully contracted, then slowly lower yourself back to the start position and repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless) grip.","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body in a hollow body position.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The pullup is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs. When this occurs, the elbows will flare up behind the body, the shoulder will round forward, and you’ll begin to feel pressure in the front of your shoulders.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight pullup, start with slow negatives (add weight when these can be accomplished under control) or flexed arm hangs in the top position.","Ditch the straps and kips, neither one is necessary or recommended."}	https://cdn.muscleandstrength.com/sites/default/files/pull-up-1.jpg	f
132	Wide Grip Lat Pull Down	132	{"Attach a wide grip handle to the lat pull down machine and assume a seated position.","Grasp the handle with a pronated grip (double overhand) as wide as possible.","Initiate the movement by depressing the shoulder blade and then flexing the elbow while extending the shoulder.","Pull the handle towards your body until the elbows are in line with your torso and then slowly lower the handle back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","Allow the shoulder to internally rotate and shrug slightly at the top of the movement. You will obviously reverse the movement and depress the shoulder blade before you pull with the arm."}	https://cdn.muscleandstrength.com/sites/default/files/wide-grip-lat-pulldown.jpg	f
133	Shotgun Row	133	{"Attach a single handle to a cable stack and assume a split stance with the ipsilateral elbow on the forward knee.","Grasp the handle with a neutral grip and lean forward slightly while allowing the shoulder blade to protract.","Initiate the movement by retracting the shoulder blade and rowing the handle to your chest while extending through your upper back.","Pull the handle towards your rib cage and drive your elbow behind your body as you flex the lat and upper back.","Slowly lower back to the starting position and repeat for the desired number of repetitions on both sides."}	{"Reach through at the start of the movement and allow the thoracic spine to round slightly but extend as you flex the lat to complete the movement.","Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through the spine.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint.","If you can’t seem to feel your lats engaging, try to “screw your shoulders” into their sockets by pointing your elbows behind your body. Another cue that works exceptionally well is to “squeeze oranges in your armpits”."}	https://cdn.muscleandstrength.com/sites/default/files/shotgun-row.jpg	f
134	Eccentric Only Chin Up	134	{"Using a supinated grip, grasp the bar with a shoulder width grip.","Take a deep breath and hop to get yourself up to the bar. Squeeze your glutes, brace your abs, and descend slowly back to the start position.","Repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless grip).","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The chin up is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs.","Keep your shoulders down and back, if they round forward at the top then you’ve pulled too far.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight pullup, start with slow negatives or flexed arm hangs at the top position.","Ditch the straps and kips, neither one is necessary or recommended."}	https://cdn.muscleandstrength.com/sites/default/files/eccentric-only-chin-up.jpg	f
135	Lateral Pulldown (Rope Extension)	135	{"Set up for the exercise by attaching a rope extension to a lat pulldown machine, setting the weight you want to use on the stack, and adjusting the knee pad.","Grasp the rope with a neutral grip, palms facing inward and thumbs back.","Sit down on the machine and take the weight off the stack, keeping your arms extended. This is the starting position.","Keeping your body tight and sitting upright, slowly pull the rope down as far as possible.","Pause, and then slowly lower the weight back to the starting position without letting it drop to the stack.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/lat-pulldown-rope-extension.jpg?itok=XC_4S_sX	f
136	Skin the Cat	136	{"Set up a pair of rings well above standing height and jump to get into the starting position.","Using a pronated grip, grasp the rings with the arms fully overhead.","Take a deep breath and drive the knees towards your chest as you curl your body up towards the ceiling.","As you roll over, control the descent and slowly straighten your legs.","Reverse the movement by curling your legs back to your chest and rolling your torso back through your arms to get back to the starting position.","Repeat for the desired number of repetitions."}	{"Given this exercise requires an excessively large range of motion at the shoulders, one may need to utilize progressions in order to get into certain positions. Never force a position if there is pain during or after the movement.","Tucking the chin can help to generate the “somersault effect” at the torso.","Ensure that you especially control the eccentric portion of the exercise as this is an area where the shoulder is especially susceptible to injury given that many are lacking sufficient shoulder extension to maintain this position without excessive pressure to the anterior capsule.\n\n\n\t\t\t\tHowever, on the opposite end of the spectrum, this can also be an excellent stretch for generating more shoulder extension given it is loaded with your entire bodyweight.","However, on the opposite end of the spectrum, this can also be an excellent stretch for generating more shoulder extension given it is loaded with your entire bodyweight.","Remember, you need to use your lats and abs to pull yourself backwards into the tucked position.","If you can’t complete full pull ups or leg raises then work on those first before trying to jump into this more advanced movement."}	https://cdn.muscleandstrength.com/sites/default/files/skin-the-cat.jpg	f
137	Chin Up With Leg Raise	137	{"Using a pronated grip, grasp the bar with a shoulder width grip.","Take a deep breath, depress the shoulder blades and drive the elbows straight down to the floor while activating the lats.","Pull your chin towards the bar until the lats are fully contracted, then squeeze the abs and raise the legs to 90 degrees.","Lower the legs and then slowly lower yourself back to the start position.","Repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless grip).","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The chin up is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs.","Keep your shoulders down and back, if they round forward at the top then you’ve pulled too far.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight chin up, start with slow negatives or flexed arm hangs at the top position.","Ditch the straps and kips, neither one is necessary or recommended."}	https://cdn.muscleandstrength.com/sites/default/files/chin-up-with-leg-raise.jpg	f
138	Skin the Cat	138	{"Set up a pair of rings well above standing height and jump to get into the starting position.","Using a pronated grip, grasp the rings with the arms fully overhead.","Take a deep breath and drive the knees towards your chest as you curl your body up towards the ceiling.","As you roll over, control the descent and slowly straighten your legs.","Reverse the movement by curling your legs back to your chest and rolling your torso back through your arms to get back to the starting position.","Repeat for the desired number of repetitions."}	{"Given this exercise requires an excessively large range of motion at the shoulders, one may need to utilize progressions in order to get into certain positions. Never force a position if there is pain during or after the movement.","Tucking the chin can help to generate the “somersault effect” at the torso.","Ensure that you especially control the eccentric portion of the exercise as this is an area where the shoulder is especially susceptible to injury given that many are lacking sufficient shoulder extension to maintain this position without excessive pressure to the anterior capsule.\n\n\n\t\t\t\tHowever, on the opposite end of the spectrum, this can also be an excellent stretch for generating more shoulder extension given it is loaded with your entire bodyweight.","However, on the opposite end of the spectrum, this can also be an excellent stretch for generating more shoulder extension given it is loaded with your entire bodyweight.","Remember, you need to use your lats and abs to pull yourself backwards into the tucked position.","If you can’t complete full pull ups or leg raises then work on those first before trying to jump into this more advanced movement."}	https://cdn.muscleandstrength.com/sites/default/files/skin-the-cat.jpg	f
139	Chin Up With Leg Raise	139	{"Using a pronated grip, grasp the bar with a shoulder width grip.","Take a deep breath, depress the shoulder blades and drive the elbows straight down to the floor while activating the lats.","Pull your chin towards the bar until the lats are fully contracted, then squeeze the abs and raise the legs to 90 degrees.","Lower the legs and then slowly lower yourself back to the start position.","Repeat for the assigned number of repetitions."}	{"To decrease bicep involvement, use a false (thumbless grip).","Try to keep a neutral head position (looking straight ahead or slightly up) as hyperextending the neck can lead to compensations throughout the spine.","If the bar is high enough, keep the legs straight and in front of the body.","Avoid falling into overextension of the lumbar spine by squeezing your glutes and bracing your abs.","The chin up is completed when the lats are fully flexed, don’t continue pulling and compensate with the pecs.","Keep your shoulders down and back, if they round forward at the top then you’ve pulled too far.","A lifter’s segment length will determine whether or not they can actually get their chin over the bar, it’s not an absolute for everyone.","Lower to almost full extension of the elbow but avoid locking out completely as this can place excessive strain on the ligamentous structures within the elbow and shoulder.","If you can’t complete a single bodyweight chin up, start with slow negatives or flexed arm hangs at the top position.","Ditch the straps and kips, neither one is necessary or recommended."}	https://cdn.muscleandstrength.com/sites/default/files/chin-up-with-leg-raise.jpg	f
140	Dumbbell Deadlift	140	{"Set up for the dumbbell deadlift by choosing a pair of dumbbells and placing them on the floor in front of you.","Stand with your feet at around shoulder width apart and position the dumbbells on the floor so that they are on either side of your feet.","Reach down and grab the dumbbells with a neutral grip (palms facing inward) and drop your hips.Your hips should be in the best, most natural position for leverage so you may need to raise or lower them slightly.","Make sure your eyes are looking ahead. Your body will follow your head so keep your head up and eyes forward!","Be sure to keep a straight back and never allow it to round. You are now in the starting position.","Focus on standing up with the dumbbells - not pulling them from the floor, and lead with your head as you rise.","Drive with your heals and explode upward (leading with your head) as you rise.","As the dumbbells rise to knee level, thrust your hips forward and contract your back by bringing your shoulder blades back.","Pause here for a moment and then reverse the movement by bending at the knees while slowly lowering the weight - keeping the dumbbells under strict control on the descent.","Reset your stance if necessary and repeat for desired reps.","The biggest mistake you can make is trying to perform deadlifts from an unnatural body position. Read and re-read the form tips presented in this guide and practice them with a moderate weight. Start the deadlift with the hips in a position of strength and maximal leverage. If you start the deadlift with your hips too high you will be at a mechanical disadvantage and will tax your lower back. Starting with your hips too low will also cause you to lose your leverage and power.","If you start the deadlift while looking down, there is a good chance your hips will lift up causing you to lose form and lift with your lower back. This is a very common deadlift mistake. Think about exploding your head upward while trying to stand erect. The body will follow the head.","As the weight gets heavy, lifting straps can be used to lift more weight than your grip strength would allow."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/dumbbelldeadlift1.jpg?itok=vuKZUro0	f
141	Superman	141	{"Set up in a prone position with your hands by your side (or behind your back) and your feet together.","Extend your lower back by contracting your spinal erectors.","Slowly lower back to the starting position and repeat for the desired number of repetitions."}	{"Make sure to keep some tension through your abs and glutes as you complete the movement. If you feeling a pressure or pinching sensation within one spinal vertebrae directly then you are dealing with an issue of segmental extension (usually at your thoracolumbar junction: T12-L1) versus global extension.","This movement is fairly outdated and there are much better options given the high level of compression that is generated within the spine itself during the course of the movement."}	https://cdn.muscleandstrength.com/sites/default/files/superman.jpg	f
142	Smith Machine Deadlift	142	{"Set up for the smith machine deadlift by loading the appropriate amount of weight onto the smith machine and setting the bar to the lowest setting.","Stand in front of the bar with your feet around shoulder width apart and halfway under the loaded bar. Your toes should be pointed straight ahead or slightly outward. Do what is comfortable for you.","Reach down and grab the bar with both hands using an overhand grip just outside of shoulder width. You can use an alternating grip (one over/one under) to help you lift more weight. Lifting straps can also be used to help lift more weight.","Drop your hips until your shins are touching the barbell. Your hips should be in the best, most natural position for leverage so you may need to raise or lower them slightly.","Make sure your eyes are looking ahead. Your body will follow your head so keep your head up and eyes forward!","Be sure to keep a straight back and never allow it to round. You are now in the starting position.","Focus on standing up with the bar - not pulling the bar from the floor, and lead with your head as you rise.","Drive with your heels and explode upward (leading with your head) as you rise.","As the bar rises above your knees, thrust your hips forward and contract your back by bringing your shoulder blades back.","Pause here for a moment and then reverse the movement by bending at the knees while slowly lowering the weight - keeping it under strict control on the descent.","Reset your stance if necessary and repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/smith-machine-deadlift.jpg?itok=IxWbvMJy	f
143	90/90 Hip Crossover	143	{"In a supine position, lift your legs so that your hips and knees are at a 90 degree angle and ensure that your lower back is flat on the floor.","Reach your arms out to the side for support and slowly rotate your legs side to side.","Keep your head neutral and focus on controlling the rotation by utilizing your abdominals.","Repeat for the desired number of repetitions."}	{"Ensure the feet don’t drop towards your butt as you get fatigued.","Keep the lower back as flat as possible against the floor and focus on feeling the movement in the upper back.","Don’t rotate the head as the legs move."}	https://cdn.muscleandstrength.com/sites/default/files/9090-hip-crossover.jpg	f
144	Rollover Into V-Sits	144	{"In a seated position, roll backwards while tucking your chin and allow your legs to travel over your head with your arms outstretched to the sides.","Once your toes touch the floor (if possible), roll forward and spread your legs into a straddle position.","Reach forward as you roll forward and get a dynamic stretch through hamstrings and spinal erectors.","Repeat for the desired number of repetitions."}	{"Focus on keeping your spine tall in the bottom position and don’t allow the weight to pull you forward.","Ideally you should be able to sit comfortably in the bottom position and open up the hips and ankles as you rock side to side."}	https://cdn.muscleandstrength.com/sites/default/files/rollover-into-v-sits.jpg	f
145	Neck Tiger Tail	145	{"While in a seated position, position the tiger tail at the base of the neck with one hand on either handle.","Adjust pressure into neck by applying more or less force through the hands.","Slowly roll up and down the length of one side of the neck for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.\n\n\n\t\t\t\tIn addition to some deep breathing, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”.","In addition to some deep breathing, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”.","Foam/stick rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.\n\n\n\t\t\t\tHOWEVER, if you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","HOWEVER, if you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea."}	https://cdn.muscleandstrength.com/sites/default/files/tiger-tail-neck.jpg	f
146	Neck Tiger Tail	146	{"While in a seated position, position the tiger tail at the base of the neck with one hand on either handle.","Adjust pressure into neck by applying more or less force through the hands.","Slowly roll up and down the length of one side of the neck for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.\n\n\n\t\t\t\tIn addition to some deep breathing, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”.","In addition to some deep breathing, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”.","Foam/stick rolling may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.\n\n\n\t\t\t\tHOWEVER, if you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","HOWEVER, if you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea."}	https://cdn.muscleandstrength.com/sites/default/files/tiger-tail-neck.jpg	f
147	Side Crunch (AKA Oblique Crunch)	147	{"Lay supine in a relaxed position with your knees stacked to one side.","Place your contralateral hand behind your head for support and use your free hand to palpate your abdominals.","Initiate the movement by squeezing your abs to raise your torso off the floor, slowly lower yourself back to the starting position and complete the assigned number of repetitions.","Repeat on the opposite side."}	{"Exhale hard like you’re blowing out candles on a cake and hold the contraction for a second in order to improve mind muscle connection.","If your lower back bothers you during this exercise, choose more anti extension and anti rotation based movements.","Avoid putting the hands behind the head as this can lead to excess strain upon the neck."}	https://cdn.muscleandstrength.com/sites/default/files/oblique-crunch-1.jpg	f
148	Wood Chop	148	{"Assume an athletic position with your feet just outside of shoulder width and attach a rope to a cable stack overhead.","Position the inside leg in hip flexion and set up with both hands grasping the rope at roughly shoulder width apart.","Exhale, rotate the rope across your body, and chop to the down knee.","Return to the starting position, repeat for the desired number of repetitions, and then switch sides."}	{"Crunch slightly and ensure that you exhale as you rotate.","You can also utilize a bar attachment if you don’t have access to a rope but this variation will require slightly different cueing - extend the bottom elbow, then horizontally press the bar to extension with the top elbow as you rotate.","Set up with the inside knee up relative to the cable stack.\n\n\n\t\t\t\tAlways chop to the down leg.","Always chop to the down leg.","The rotation should be a crossbody pattern, think about moving diagonally rather than up and down."}	https://cdn.muscleandstrength.com/sites/default/files/wood-chop.jpg	f
149	Palmar Fascia Lacrosse Ball	149	{"Place the lacrosse ball directly underneath the palm of your hand and apply pressure via your bodyweight.","Slowly roll the palmar region for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Do not allow yourself to fall into overextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Performing SMR may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","If you find a sensitive spot, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”."}	https://cdn.muscleandstrength.com/sites/default/files/palmar-fascia-lacrosse-ball.jpg	f
150	Plantar Fascia Lacrosse Ball	150	{"In a standing position, place the lacrosse ball directly underneath the bottom of your foot and apply pressure via your bodyweight.","Slowly roll the plantar region for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Use your free hand to stabilize yourself while holding onto something.","Do not allow yourself to fall into overextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Do not roll the front of the shoulder directly as this can cause irritation to the biceps tendon and anterior capsule.","Performing SMR may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","If you find a sensitive spot, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”."}	https://cdn.muscleandstrength.com/sites/default/files/platar-fascia-lacrosse-ball.jpg	f
156	Leg Extension	156	{"Select the desired resistance on the weight stack and insert the pin.","Adjust the seat so that the knees are directly in line with the axis of the machine.","Sit down and position your shins behind the pad at the base of the machine.","Take a deep breath and extend your legs as you flex your quadriceps.","As you lock out the knees, exhale to complete the repetition.","Slowly lower your feet back to the starting position and repeat for the desired number of repetitions."}	{"Ensure the axis of rotation for the knee directly matches that of the machine. In other words, the point of rotation for the machine should be in line with your knee joint itself. If the knee is positioned too far in front or behind the axis of rotation, there will be excessive stress added to the joint which could cause significant injury.","Typically extensions should not be done excessively heavy due to the lack of hamstring co-contraction with the quads. When one occurs in isolation it could present an injury risk to the knee if done with excessive weight.","Pointing the toes can help to enhance mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/leg-extension.jpg	f
151	Plantar Fascia Lacrosse Ball	151	{"In a standing position, place the lacrosse ball directly underneath the bottom of your foot and apply pressure via your bodyweight.","Slowly roll the plantar region for 20-30 seconds.","Repeat on the other side."}	{"The most important thing you can remember with any soft tissue work: KEEP BREATHING. Don’t hold your breath, you want to release tension, not generate it.","Use your free hand to stabilize yourself while holding onto something.","Do not allow yourself to fall into overextension, keep tension through the abs.","If you find a tender spot, pause for 5-6 seconds and focus on slow, deep breaths and try to relax.","Do not roll the front of the shoulder directly as this can cause irritation to the biceps tendon and anterior capsule.","Performing SMR may be uncomfortable but that’s not an excuse to avoid it. It hurts because there may be physiological or neurological influences generating a pain response. The more you roll the better it’ll feel provided there’s no serious underlying mechanism.","If you notice any burning, numbness, or tingling, keep moving past that area. It’s likely a nerve and pausing on it for any length of time would not be a good idea.","If you find a sensitive spot, pause for a second and take the joint through flexion and extension. This a method of active release known as “tack and floss”."}	https://cdn.muscleandstrength.com/sites/default/files/platar-fascia-lacrosse-ball.jpg	f
152	Barbell Back Squat	152	{"Set up for the exercise by setting the barbell to just below shoulder height and loading the weight you want to use.","Stand under the bar with your feet at about shoulder width apart.","Position the bar so that it is resting on the muscles on the top of your back, not on the back of your neck. The bar should feel comfortable. If it doesn't, try adding some padding to the bar.","Now take your hands over the back and grip the bar with a wide grip for stability.","You should now bend at the knees and straighten your back in preparation to take the weight off the rack.","Keeping your back straight and eyes up, push up through the legs and take the weight off the rack.","Take a small step back and stabilize yourself.","Keeping your eyes facing forward slowly lower your body down. Don't lean forward as you come down. Your buttocks should come out and drop straight down.","Squat down until your thighs are parallel with the floor, and then slowly raise your body back up by pushing through your heels.","Do not lock the knees out when you stand up, and then repeat the movement."}	{"Rounding the lower back: It's crucially important that you keep a straight back when you squat! You can ensure your back is straight by keeping your eyes facing forward, chest out, shoulder blades back, and back arched. Keep your core muscles tensed throughout the movement to help hold your back in place.","Pushing from the balls of your feet: This puts unnecessary strain on joints and tendons. Always push up through your heels. Curling up your toes can help you get the technique right.","Leaning forward: This happens when your hips move up faster than your shoulders. To prevent this keep the rep timing slow and controlled and stick your buttocks out as you go down.","Knees come too far forward: When you squat down, your hips should be dropping straight down, not coming forward. Using a light weight, perfect your form standing side on to a mirror. Your knees should never track out and over your toes.","Not squatting deep enough: Using squats to their full potential requires squatting down at least until your thighs are around parallel to the floor.","Knees in or out: Don't point your knees in or out when you're lowering or pushing the weight. This puts unnecessary strain on the knee joints.","Looking down: As soon as you look down your back rounds, simple as that."}	https://cdn.muscleandstrength.com/sites/default/files/barbell-back-squat.jpg	f
153	Dumbbell Goblet Squat	153	{"Select a dumbbell and position it at chest height with one hand under each edge of the dumbbell.","Take a deep breath and descend by simultaneously pushing the hips back and bending the knees.","Once your thighs reach parallel with the floor, begin to reverse the movement.","Keep your abs braced and drive your feet through the floor.","Drive back to the starting position and repeat for the desired number of repetitions."}	{"If you struggle with squatting with a barbell then this is the best version for learning how to squat in a vertical fashion.","Toe angle is highly individual - experiment to see what feels best for you.","Experiment with a “false” (i.e. thumbless) grip as this helps to eliminate elbow and wrist issues in some folks.","Drive through the whole foot - you want 3 points of contact: big toe, little toe, and heel.","Imagine you’re trying to drop your back pockets straight towards your heels. Down, not back.","Some forward translation of the knees over the toes is alright provided that the knees don’t deviate excessively inward or outward. Those with longer femurs will have to allow their knees to come farther forward if they want to remain upright.","Neck position is highly individual as well - some prefer a neutral neck position (i.e. keeping the chin tucked throughout the lift) while others do well with looking straight ahead. Experiment with each and see which one works best for your anatomy.","Don’t push the knees out excessively but ensure they track roughly over or slightly outside the 2nd toe."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-goblet-squat-1.jpg	f
154	Dumbbell Squat	154	{"Set up for the dumbbell squat by choosing a pair of dumbbells and holding them down by your sides.","Stand with a slight bend in your knees and your feet around shoulder width apart. Keep your head up and your back straight. This is the starting position.","Keeping your eyes facing forward slowly lower your body down. Don't lean forward as you come down. Your buttocks should come out and drop straight down.","Squat down as far as possible or at least until your thighs are parallel with the floor, and then slowly raise your body back up by pushing through your heels.","Do not lock the knees out when you stand up, and then repeat the movement.","It's crucially important that you keep a straight back when you squat! You can ensure your back is straight by keeping your eyes facing forward, chest out, shoulder blades back, and back arched. Keep your core muscles tensed throughout the movement to help hold your back in place.","Always push up through your heels. Curling up your toes can help you get the technique right.","Never lean forward. This happens when your hips move up faster than your shoulders. To prevent this keep the rep timing slow and controlled and stick your buttocks out as you go down.","When you squat down, your hips should be dropping straight down, not coming forward. Using a light weight, perfect your form standing side on to a mirror. Your knees should never track out and over your toes.","Using squats to their full potential requires squatting down at least until your thighs are around parallel to the floor.","Don't point your knees in or out when you're lowering or pushing the weight. This puts unnecessary strain on the knee joints.","Never look down. As soon as you look down your back rounds, simple as that."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/dumbbellsquat1.jpg?itok=Vez4y1zW	f
164	Smith Machine Shoulder Press	165	{"Place an adjustable bench in the Smith machine and adjust the back to a 90-degree angle.","Adjust the bar to around eye level and load the desired weight on the bar.","Position your hands around shoulder-width apart and unrack the bar using a pronated grip. This is the starting position for the movement.","Press the bar overhead by extending the elbows and contracting the deltoids.","Slowly lower the bar back to the starting position (the arms should be roughly 90 degrees or slightly lower depending on limb lengths).","Repeat for the desired number of repetitions."}	{}	https://cdn.muscleandstrength.com/sites/default/files/seated-military-press.jpg	f
158	Dumbbell Step Up	158	{"Set up for the dumbbell step up by choosing a pair of dumbbells and holding them down at your sides.","Stand up straight in front of a flat bench or other raised platform.","Keep your eyes facing forward and a slight bend in your knees. This is the starting position.","Lift your left knee and step onto the platform with your left foot.","Once your foot is firmly planted on the platform, use your left heel to lift your body up and place your right foot on the platform as well.","Pause briefly and then step back with your right leg and carefully return to the starting position.","Repeat this motion for desired reps and then repeat while leading with your right foot.","Keep your head up and back straight throughout the exercise. Never allow your back to round.","Add intensity and difficulty by raising the platform. The higher the platform, the more intense the exercise.","Start by using little to no weight. This exercise requires a good deal of balance and caution should be used."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/dumbbellstepup1.jpg?itok=-qFvyGQ0	f
159	Dumbbell Lateral Raise	160	{"Select the desired weight from the rack, then take a few steps back into an open area.","Take a deep breath and raise the dumbbells to shoulder height using a neutral grip (palms facing in) while keeping the elbows slightly bent.","Slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions."}	{}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-lateral-raise.jpg	f
160	Military Press (AKA Overhead Press)	161	{"Adjust the barbell to just below shoulder height then load the desired weight onto the bar.","Assume a shoulder width stance and place your hands at (or just outside of) shoulder width with a pronated grip on the bar.","Step underneath the bar and unrack it while keeping the spine in a neutral position.","Take two steps back, inhale, brace, tuck the chin, then press the bar to lockout overhead.","Exhale once the bar gets to lockout and reverse the movement slowly while controlling the bar back to your chest.","Repeat for the desired number of repetitions."}	{"Reach tall at the top and don’t worry about keeping the shoulders packed down and back.","Allow the elbows to rotate and point outward at the top of the movement but tuck them tight to the ribcage at the bottom.","Fight to control the bar from rolling your wrists into extension and think about “rolling your knuckles toward the ceiling.”","Keep momentum out of the movement and don’t add any additional leg drive by flexing and extending the knees.","Squeeze your glutes and brace your abs as you press. You shouldn’t be leaning back excessively as you press.","Imagine you’re trying to look out a window at the top, your ears should be in line with your biceps.","If your shoulders are bothering you during the movement, consider experimenting with a wider grip or utilizing some of the vertical pressing progressions listed on the site.","You can use a staggered stance to prevent the lower back from arching excessively but if you still can’t control the anterior core then consider using a half kneeling regression shown on the site."}	https://cdn.muscleandstrength.com/sites/default/files/military-overhead-press.jpg	f
161	Bent Over Dumbbell Reverse Fly	162	{"Select the desired weight from the rack then take a few steps back into an open area.","Hinge from the hips until your body is almost parallel to the floor and allow the arms to hang straight down from the shoulders with a neutral grip.","Take a deep breath and pull the dumbbells towards the ceiling using the rear deltoids.","Slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Ideally we want to focus on the rear deltoids, not the scapular retractors so movement at the shoulder blade should be limited. Move the shoulder within the joint, not the shoulder blade on the ribcage.","Keep the abs braced and don’t arch the back at the top of the movement.","If you can’t hinge to 90 degrees, then hinge as far as comfortably possible while completing the exercise. Or, you could also take a seated position to complete the exercise as well.","If you experience shoulder pain during the movement then it may be beneficial to rotate the dumbbells until the thumbs are pointing away from one another and the palms are facing forward. This is also known as a supinated grip and will externally rotate the shoulder.","Don’t jut your head forward during the movement - this about stimulation for a small muscle group. Focus during the movement and don’t just rely on momentum.","Allow the arms to move freely but don’t lock out the elbows."}	https://cdn.muscleandstrength.com/sites/default/files/bent-over-rear-delt-raise.jpg	f
162	Standing Dumbbell Shoulder Press	163	{"","Set up for the exercise by grabbing a pair of dumbbells and standing up with your feet around shoulder width apart.","Raise the dumbbells to shoulder height on each side, and rotate your palms so they are facing forward. This is the starting position for the exercise.","Take a deep breath then press the dumbbells overhead by extending the elbows and contracting the deltoids.","Slowly lower the dumbbells back to the starting position (the arms should be roughly 90 degrees or slightly lower depending upon limb lengths).","Repeat for the desired number of repetitions.",""}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/standing-dumbbell-press.jpg?itok=xh_nwwgo	f
163	Seated Dumbbell Press	164	{"Set up an adjustable angle bench to 90 degrees and select the desired weight from the rack.","Pick up the dumbbells from the floor using a neutral grip (palms facing in). Position the end of the dumbbells on your knees and sit down on the bench.","Using a safe and controlled motion, kick your knees up one at a time in order to get each dumbbell into place.","Once the dumbbells are in place, rotate your palms so they are facing forward.","Take a deep breath then press the dumbbells overhead by extending the elbows and contracting the deltoids.","Slowly lower the dumbbells back to the starting position (the arms should be roughly 90 degrees or slightly lower depending upon limb lengths).","Repeat for the desired number of repetitions."}	{"Keep your back flat against the pad throughout the duration of the exercise.","Don’t allow the head to jut forward excessively.","Drive the bicep to the ear and exhale as you press.","If you sense any pressure in your neck or traps during the movement, look to address a lack of thoracic spine extension or shoulder flexion.","Keeping the elbows slightly bent at the top and not locking out entirely will help to keep tension on the shoulders.","If you can’t lock out the elbows overhead than it may indicate a lack of shoulder mobility due to poor scapular upward rotation."}	https://cdn.muscleandstrength.com/sites/default/files/seated-dumbbell-press-1.jpg	f
165	Seated Arnold Press	166	{"Set up an adjustable angle bench to 90 degrees and select the desired weight from the rack.","Pick up the dumbbells from the floor using a neutral grip (palms facing in). Position the end of the dumbbells on your knees and sit down on the bench.","Using a safe and controlled motion, kick your knees up one at a time in order to get each dumbbell into place.","Once the dumbbells are in place, rotate your palms so they are facing you.","Take a deep breath then press the dumbbells overhead by extending the elbows and contracting the deltoids.","As you press, rotate the dumbbells until your palms are facing forward.","Slowly lower the dumbbells back to the starting position (the arms should be roughly 90 degrees or slightly lower depending upon limb lengths).","Repeat for the desired number of repetitions."}	{"Keep your back flat against the pad throughout the duration of the exercise.","Don’t allow the head to jut forward excessively.","Drive the bicep to the ear and exhale as you press.","If you sense any pressure in your neck or traps during the movement, look to address a lack of thoracic spine extension or shoulder flexion.","Keeping the elbows slightly bent at the top and not locking out entirely will help to keep tension on the shoulders.","If you can’t lock out the elbows overhead than it may indicate a lack of shoulder mobility due to poor scapular upward rotation."}	https://cdn.muscleandstrength.com/sites/default/files/seated-arnold-press-thumb.jpg	f
166	Seated Bent Over Dumbbell Reverse Fly	167	{"Secure a flat bench and select the desired weight from the rack.","Sit in an upright position and then hinge forward from the hips.","Allow the arms to hang straight down from the shoulders with a neutral grip and dumbbells behind your calves.","Take a deep breath and pull the dumbbells towards the ceiling using the rear deltoids.","Slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Ideally we want to focus on the rear deltoids, not the scapular retractors so movement at the shoulder blade should be limited. Move the shoulder within the joint, not the shoulder blade on the ribcage.","Keep the abs braced and don’t arch the back at the top of the movement.","Hinge as far as comfortably possible while completing the exercise. Or, you could also take a seated position to complete the exercise as well.","If you experience shoulder pain during the movement then it may be beneficial to rotate the dumbbells until the thumbs are pointing away from one another and the palms are facing forward. This is also known as a supinated grip and will externally rotate the shoulder.","Don’t jut your head forward during the movement - this is about stimulation for a small muscle group. Focus during the movement and don’t just rely on momentum.","Allow the arms to move freely but don’t lock out the elbows."}	https://cdn.muscleandstrength.com/sites/default/files/bent-over-rear-delt-raise-thumb.jpg	f
167	Seated Dumbbell Lateral Raise	168	{"Grab a pair of dumbbells with a neutral grip and sit on the edge of a flat bench with your feet around shoulder width apart. This is the starting position for the exercise.","Slowly raise the dumbbells to around shoulder height.","Pause and slowly lower the dumbbell back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/seated-dumbbell-lateral-raise.jpg?itok=i7jPp1X4	f
168	Seated Barbell Shoulder Press	169	{"Adjust the barbell to just below shoulder height while standing then load the desired weight onto the bar.","Place an adjustable bench beneath the bar in an upright position.","Sit down on the bench and unrack the bar using a pronated grip.","Inhale, brace, tuck the chin, then lower the bar to the top of your chest.","Exhale and press the bar back to lockout.","Repeat for the desired number of repetitions."}	{"Reach tall at the top and don’t worry about keeping the shoulders packed down and back.","Allow the elbows to rotate and point outward at the top of the movement but tuck them tight to the ribcage at the bottom.","Fight to control the bar from rolling your wrists into extension and think about “rolling your knuckles toward the ceiling.”","Brace your abs as you press, you shouldn’t be leaning back excessively.","Imagine you’re trying to look out a window at the top, your ears should be in line with your biceps.","If your shoulders are bothering you during the movement, consider experimenting with a wider grip or utilizing some of the vertical pressing progressions listed on the site."}	https://cdn.muscleandstrength.com/sites/default/files/seated-shoulder-press-1.jpg	f
169	Cable Face Pull	170	{"Assume a split stance with the arms straight out in front of you utilizing a pronated grip.","Inhale and pull the rope towards your face with the elbows high.","Slowly lower the rope back to the starting position and repeat for the desired number of repetitions on both sides."}	{"If you find yourself leaning back or arching your back as you pull, utilize a half kneeling stance.","As you pull, ensure the elbows stay high and the rope remains at eye level.","Focus on contracting the rear delts and ensure you don’t jut the head forward to meet the rope.","Ensure you set the cable at face height rather than at the top of the machine as this may over recruit the lats and negate some of the scapular upward rotation benefits.","Don’t rely upon momentum, keep the motion smooth and controlled from start to finish.","If no rope attachment is available, you can still complete the exercise using 2 regular handles or a band."}	https://cdn.muscleandstrength.com/sites/default/files/cable-face-pull.jpg	f
170	Barbell Upright Row	171	{"The barbell upright row is one of the best exercises for building the upper traps and shoulders. Load up a barbell with the weight you want to use and stand facing it with your feet at around shoulder width apart.","Grasp the barbell with an overhand grip (palms facing down), and hands slightly closer than shoulder width apart.","Pick the bar up, bending at the knees and keeping your back straight.","Keeping your back straight and eyes facing forwards, lift the bar straight up while keeping it as close to your body as possible (you should pull the bar up to around chest height - nearly touching your chin).","Pause, and then slowly lower the bar back to the starting position.","Repeat for desired reps.","Focus on keeping your elbows higher than your forearms. The elbows push the motion.","Keep your body fixed throughout the set. Don't lean forward as you lower the bar, and back as you raise it. Movement of the body makes the upright row easier, and you will not get the most out of it.","Pause and squeeze the traps at the top of the movement, and then lower the bar really slowly if you want to add a bit of intensity to the exercise."}	{}	https://cdn.muscleandstrength.com/sites/default/files/upright-row.jpg	f
171	Dumbbell Shrug	172	{"Assume a standing position with the dumbbells on both sides of your body.","Hinge forward, inhale, and grab the dumbbells with a neutral grip.","Stand up tall and ensure your spine remains neutral.","Contract the traps to elevate the shoulders. Squeeze hard at the top and slowly lower the dumbbells back to the starting position.","Repeat for the desired number of repetitions."}	{"Looking slightly up while shrugging may enhance the contraction as traps help to control movement of the skull. This motion should be smooth and controlled, as a ballistic movement could result in a neck injury.","The traps tend to respond well to high reps and explosive movements (e.g. snatch grip high pulls) so program your accessory work accordingly.","Limit momentum and excessive jerking or bouncing of the weight. No one cares about how much you shrug.","Don’t allow the head to jut forward excessively as you squeeze the traps, this can put the neck in a compromised position and result in an injury.","Adding a pause at the top of the movement can help to enhance the mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-shrug.jpg	f
172	Barbell Shrug	173	{"Position the safeties just below waist height in a rack.","Assume a standing position with the bar in front of your body.","Hinge forward, inhale, and grab the bar with a double overhand grip.","Stand up tall and ensure your spine remains neutral.","Contract the traps to elevate the shoulders. Squeeze hard at the top and slowly lower the bar back to the starting position.","Repeat for the desired number of repetitions."}	{"Looking slightly up while shrugging may enhance the contraction as traps help to control movement of the skull. This motion should be smooth and controlled, as a ballistic movement could result in a neck injury.","The traps tend to respond well to high reps and explosive movements (e.g. snatch grip high pulls) so program your accessory work accordingly.","Limit momentum and excessive jerking or bouncing of the weight. No one cares about how much you shrug.","Don’t allow the head to jut forward excessively as you squeeze the traps, this can put the neck in a compromised position and result in an injury.","Adding a pause at the top of the movement can help to enhance the mind muscle connection."}	https://cdn.muscleandstrength.com/sites/default/files/barbell-shrug-1.jpg	f
173	Seated Dumbbell Shrug	174	{"Set up for the seated dumbbell shrug by choosing a pair of dumbbells and sitting with your back straight on a flat bench.","Grasp the dumbbells with a neutral grip (palms facing in), with your hands down at your sides.","Let your shoulders sag as far as possible. This is the starting position for the exercise.","Slowly shrug your shoulders up as far as possible.","Pause, and then slowly lower the dumbbells back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/seated-dumbbell-shrug.jpg?itok=WJE63OZ_	f
174	One-Arm Dumbbell Upright Row	175	{"Choose a dumbbell and stand with your feet around shoulder width apart.","Grasp the dumbbell with an overhand grip (palms facing down) with your left hand and place it on your thigh.","Your left hand should be just inside shoulder width and there should be a slight bend in your elbow.","Lift the dumbbell straight up while keeping it as close to your body as possible. You should pull the dumbbell up to around chest height - nearly touching your chin.","Pause, and then slowly lower the dumbbell back to the starting position.","Repeat for desired reps and then repeat with your right arm."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-dumbbell-upright-row.jpg?itok=Pdwelzsh	f
175	Wide Grip Upright Row	176	{"Load up a barbell with the weight you want to use and stand facing it with your feet around shoulder width apart.","Grasp the barbell with an overhand grip, and hands slightly wider than shoulder width apart.","Pick the bar up, bending at the knees and keeping your back straight.","Keeping your back straight and eyes facing forwards, lift the bar straight up while keeping it as close to your body as possible (you should pull the bar up to around chest height - nearly touching your chin).","Pause, and then slowly lower the bar back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/wide-grip-upright-row.jpg?itok=VYMBlKyi	f
176	Straight Bar Tricep Extension	177	{"Attach a straight bar to a cable stack as high as possible and assume a standing position.","Grasp the straight bar with a pronated grip (palms facing down) and lean forward slightly by hinging at the hips.","Initiate the movement by extending the elbows and flexing the triceps.","Pull the handle downward until the elbows are almost locked out and then slowly lower under control back to the starting position.","Repeat for the desired number of repetitions."}	{"If you want to keep more tension in the triceps, don’t lock the elbows out entirely.","Imagine there’s a screw running through your elbow and don’t allow them to move in front of the body as you extend at the bottom of the movement.","Experiment with static elbow positioning throughout the lift - some may find that they get a better stretch in the bottom portion of the movement by allowing their elbows to drift behind the body during the eccentric portion of the movement (similar to a drag curl).","Ensure the shoulder blades don’t tilt forward as you extend the elbows."}	https://cdn.muscleandstrength.com/sites/default/files/straight-bar-tricep-extension-1.jpg	f
177	Seated Dumbbell Tricep Extension	178	{"Select the desired weight from the rack and position an adjustable bench at 90 degrees.","To get into position, sit in an upright position and lift the dumbbell to the top of your shoulder. Take a deep breath, overlap your hands around the dumbbell, then press it into position overhead.","Maintain an overlapping grip and slowly lower the dumbbell behind your head by unlocking your elbows.","Once your forearms reach parallel or just below, drive the dumbbell back to the starting point by extending the elbows and flexing the triceps.","Repeat for the desired number of repetitions."}	{"Don’t overextend through the lumbar spine, keep your ribcage down by maintaining tension through the abs and glutes.","Using a slow eccentric (lowering portion) of the exercise can help to improve tension and mind muscle connection.","Keep the head in a fairly neutral position, don’t allow the neck to jut forward as this may place excessive pressure on the cervical spine."}	https://cdn.muscleandstrength.com/sites/default/files/seated-overhead-dumbbell-tricep-extension_0.jpg	f
178	Lying Dumbbell Extension	179	{"Grab a pair of dumbbells and sit on the end of a flat bench with the dumbbells resting on your thighs.","Lie back on the bench and extend the dumbbells above your head. The dumbbells should not be touching and you should be using a neutral grip (palms facing each other).","Bending at the elbows only, keeping your elbows fixed and pointing at your hips, slowly lower the dumbbells down beside your head until they are about level with your ears.","Pause and squeeze the triceps. Then raise the dumbbells back to the starting position.","Do not lock the elbows out, and then repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/lying-dumbbell-extension.jpg?itok=5e6pfH0h	f
179	Rope Tricep Extension	180	{"Attach a rope to a cable stack as high as possible and assume a standing position.","Grasp the rope with a neutral grip (palms facing in) and lean forward slightly by hinging at the hips.","Initiate the movement by extending the elbows and flexing the triceps.","Pull the rope downward until the elbows are almost locked out and then slowly lower under control back to the starting position.","Repeat for the desired number of repetitions."}	{"If you want to keep more tension in the triceps, don’t lock the elbows out entirely.","Imagine there’s a screw running through your elbow and don’t allow them to move in front of the body as you extend at the bottom of the movement.","Experiment with static elbow positioning throughout the lift - some may find that they get a better stretch in the bottom portion of the movement by allowing their elbows to drift behind the body during the eccentric portion of the movement (similar to a drag curl).","Ensure the shoulder blades don’t tilt forward as you extend the elbows."}	https://cdn.muscleandstrength.com/sites/default/files/rope-tricep-extension-1.jpg	f
180	Dumbbell Floor Press	181	{"Begin sitting on the floor in an upright position with your legs straight and the dumbbells vertically balanced on the floor.","Pick up each dumbbell and set it high in your hip crease while maintaining a tight grip.","Slowly lay back while keeping the dumbbells close to your chest and bend your knees to roughly 45 degrees and move your feet up slightly.","Press the weights to full extension by contracting your triceps and chest.","Slowly lower the weight until both elbows touch the floor then press both dumbbells back to the starting position.","Repeat for the desired number of repetitions.","To complete the exercise, simply lower the weights to the ground in “controlled drop” fashion. It should be a smooth motion but not one requiring excessive effort or one that puts the shoulder under unnecessary risk."}	{"Maintain more tension through the pecs by not locking out the elbows entirely.","Keep the weights slightly tilted at a 45 degree angle in order to keep the elbows in a neutral position.","Don’t allow the dumbbells to collide at the top of each rep - bouncing them together may cause you to lose stability within the shoulder and injure yourself.","Squeeze the dumbbells as tight as possible to improve a phenomenon known as “irradiation” which promotes greater shoulder stability.","Don’t bounce the elbows off the floor at the bottom of the rep. Doing so may result in injury due to the compressive forces being generated between the weight and the floor.","Ensure you maintain some tension in your abs and don’t allow your lower back to excessive arch."}	https://cdn.muscleandstrength.com/sites/default/files/dumbbell-floor-press-thumb.jpg	f
181	Bent Over Dumbbell Tricep Kickback	182	{"Select the desired weight from the rack and stand in an open area.","Hinge forward, row the dumbbells into position, then extend the elbows while flexing the triceps.","Slowly lower the dumbbells back to the starting position and repeat for the desired number of repetitions."}	{"Hinge forward from the hips, there shouldn’t be excessive curvature within the lumbar spine.","Don’t overextend through the lumbar spine, keep some tension through the abdominals.","Exhale as you extend the dumbbell behind your body and flex the tricep.","Keep the head in a fairly neutral position, focus on a spot on the floor and complete all of the assigned repetitions."}	https://cdn.muscleandstrength.com/sites/default/files/standing-bent-over-tricep-dumbbell-kickback.jpg	f
182	Weighted Tricep Dips	183	{"Step up onto the dip station (if possible) and position your hands with a neutral grip.","Initiate the dip by unlocking the elbows and slowly lowering the body until the forearms are almost parallel with the floor.","Control the descent to parallel and then drive back to the starting position by pushing through the palms.","Repeat for the desired number of repetitions."}	{"Technically there are two ways to perform dips - neither is wrong, just different movement with different purposes:\n\n\n\t\t\t\tStaying upright and keeping the elbows in close to increase tricep recruitment.\n\n\t\t\t\tLeaning forward with elbows wider to increase chest recruitment.","Staying upright and keeping the elbows in close to increase tricep recruitment.","Leaning forward with elbows wider to increase chest recruitment.","If possible, keep the legs straight down while bracing the glutes and abs to limit excessive spinal movement.","If no dip station with steps is available, position a box underneath the handles to boost yourself up to the bars.","If no box is available, then jump into position.","Don’t allow the head to jut forward during the descent.","Ensure the elbows stay just short of lockout to keep tension on the triceps.","Experiment with a false grip by wrapping the thumb over the bar as this may be more comfortable for some."}	https://cdn.muscleandstrength.com/sites/default/files/weighted-dips.jpg	f
183	Bench Dip	184	{"Set up for the bench dip by placing 2 flat benches parallel to one another to around 4-5 feet apart (you may need to adjust the width to suit your height).","Put your heels on the edge of one bench around shoulder-width apart.","Place your hands on the edge of the other bench. This is the starting position for the exercise.","Keeping your body close to the bench, slowly dip down until your elbows are at the same height as your shoulders.","Slowly push back up, squeezing through the triceps.","Do not lock the elbows out at the top of the exercise, and repeat."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/bench-dip.jpg?itok=x4U98F1X	f
184	Seated French Press	185	{"Set up for the seated french press by loading a barbell or EZ bar with the appropriate amount of weight and placing it in front of a 90 degree angle bench.","Sit with your back flat against the bench with your feet flat on the floor and the barbell resting on your thighs.","Grasp the barbell with an overhand grip (palms facing down) with your hands about 8-12 inches apart.","Lift the bar above your head and bend at your elbows slightly to take the tension onto your triceps. Your palms are now facing upward. This is the starting position for the exercise.","Keeping your elbows fixed and pointing straight up toward the ceiling, slowly lower the bar down behind your head as far as comfortably possible.","Pause, and then slowly raise the bar back to the starting position.","Don't lock your elbows out, and then repeat the movement."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/seated-french-press.jpg?itok=5Zi3SPvu	f
185	One-Arm Cable Tricep Extension	186	{"Set up for the one-arm cable tricep extension by attaching a single grip handle to a high pulley cable and selecting the weight you want to use on the stack.","Stand facing the machine and grab the handle with an overhand grip.","Pull your elbow down and keep it tucked in at your wide. You can use your free arm for support.","Keeping your body fixed, slowly extend the arm as far as possible.","Pause and squeeze the tricep muscle, and then slowly lower the weight.","Repeat this motion for desired reps, and then repeat for the right arm."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-cable-tricep-extension.jpg?itok=rD0Cjwak	f
186	One Arm Bent Over Dumbbell Tricep Kickback	187	{"Select the desired weight from the rack and stand in an open area.","Hinge forward, row the dumbbell into position, then extend the elbow while flexing the tricep.","Slowly lower the dumbbell back to the starting position and repeat for the desired number of repetitions."}	{"Hinge forward from the hips, there shouldn’t be excessive curvature within the lumbar spine.","Don’t overextend through the lumbar spine, keep some tension through the abdominals.","Exhale as you extend the dumbbell behind your body and flex the tricep.","Keep the head in a fairly neutral position, focus on a spot on the floor and complete all of the assigned repetitions."}	https://cdn.muscleandstrength.com/sites/default/files/standing-bent-over-one-arm-tricep-dumbbell-kickback.jpg	f
187	Eccentric Only Dip	188	{"Step up onto the dip station (if possible) and position your hands on the handles with a neutral grip.","Initiate the dip by unlocking the elbows and lower your body as slowly as possible until the forearms are almost parallel with the floor.","Control the descent to parallel, then step onto the dip platform and repeat the process from your initial starting position.","Repeat for the desired number of repetitions."}	{"Technically there are two ways to perform dips - neither is wrong, just different movement with different purposes:\n\n\n\t\t\t\tStaying upright and keeping the elbows in close to increase tricep recruitment.\n\n\t\t\t\tLeaning forward with elbows wider to increase chest recruitment.","Staying upright and keeping the elbows in close to increase tricep recruitment.","Leaning forward with elbows wider to increase chest recruitment.","If possible, keep the legs straight down while bracing the glutes and abs to limit excessive spinal movement.","If no dip station with steps is available, position a box underneath the handles to boost yourself up to the bars.","If no box is available, then jump into position.","Don’t allow the head to jut forward during the descent.","Ensure the elbows stay just short of lockout to keep tension on the triceps.","Experiment with a false grip by wrapping the thumb over the bar as this may be more comfortable for some."}	https://cdn.muscleandstrength.com/sites/default/files/eccentric-only-dip.jpg	f
188	Bent Over Dumbbell Row	189	{"Assume a standing position while holding a dumbbell in each hand with a neutral grip.","Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.","Pull the dumbbells towards your body until the elbows are at (or just past) the midline and then slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Keep some tone through your abdominals as you pull the dumbbells into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/bent-over-dumbbell-row-1.jpg	f
189	One Arm Dumbbell Row	190	{"Assume a standing position while holding a dumbbell in one hand with a neutral grip.","Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbow behind the body while retracting the shoulder blade.","Pull the dumbbell towards your body until the elbow is at (or just past) the midline and then slowly lower the dumbbell back to the starting position under control.","Repeat for the desired number of repetitions on both sides."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Fight the urge to use your opposing arm to brace against your leg or any other implement.","Keep some tone through your abdominals as you pull the dumbbell into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/one-arm-dumbbell-row.jpg	f
190	Bent Over Row	191	{"Assume a standing position while holding the bar using a double overhand grip.","Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.","Pull the bar towards your belly button until it touches your body and then slowly lower the bar back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the bar throughout the entirety of each rep.","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/bent-over-row.jpg	f
191	Seated Cable Row	192	{"Set the appropriate weight on the weight stack and attach a close-grip bar or V-bar to the seated row machine.","Grasp the bar with a neutral grip (palms facing in).","Keeping your legs slightly bent and your back straight, pull the weight up slightly off the stack. You should be sitting straight upright with your shoulders back. This is the starting position.","Keeping your body in position, pull the handle into your stomach.","Pull your shoulder blades back, squeeze, pause, and then slowly lower the weight back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/seated-cable-row.jpg?itok=b8Yzo0KK	f
192	Tripod Dumbbell Row	193	{"Assume a kneeling position on the bench with your ipsilateral (i.e. same side) hand braced against the bench.","Hold a dumbbell in the opposite hand with a neutral grip.","Begin the movement by driving the elbow behind the body while retracting the shoulder blade.","Pull the dumbbell towards your body until the elbow is at (or just past) the midline and then slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions on both sides."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/tripod-dumbbell-row.jpg	f
193	Reverse Grip Bent-Over Dumbbell Row	194	{"Select the appropriate dumbbells and place them on the floor in front of you.","Bending at the knees and keeping your back straight, squat down and pick up the dumbbells with an underhand grip (palms facing up).","Get into the starting position by keeping your back straight and bending at the knees. Let the dumbbells slide down your thighs until they're just below knee height.","Execute by pulling the dumbbells up under your chest as far as possible.","Pause, and then slowly lower the dumbbells back to the starting position.","Repeat for desired reps."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/reverse-grip-bent-over-dumbbell-row.jpg?itok=ZOFE0-4P	f
194	Machine Row	195	{"Set up for the hammer strength machine row my adding weight plates and setting the seat height into position. Your chest should be at the top of the pad.","Sit down on the machine and grasp the handles with a neutral grip.","Keeping your chest fixed on the pad, eyes facing forwards, and elbows in at your sides, slowly pull the handles back as far as possible.","Pause, squeezing your shoulder blades together, and then slowly lower the weight back to the starting position without allowing it to drop.","Repeat for desired reps.","Do not let your chest leave the pad when pulling the weight back. Rocking back as you pull the weight is cheating! Keep the focus on the target muscles by remaining fixed throughout the set.","At the top of the exercise, squeeze your shoulder blades together as if you're trying to crush something in between them!"}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/400x250/public/field/image/exercise/machinerow1.jpg?itok=rwzZIJ9w	f
195	Neutral Grip Chest Supported Dumbbell Row	196	{"Position an adjustable incline bench at 45 degrees and lie prone on the bench.","Grab a dumbbell in each hand utilizing a neutral grip and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.","Pull the dumbbells towards your body until the elbows are at (or just past) the midline and then slowly lower the dumbbells back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Keep some tone through your abdominals as you pull the dumbbells into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the dumbbells throughout the entirety of each rep.","If you feel your biceps being overused and your back remaining under active, consider utilizing a false grip (i.e. don’t wrap the thumb around the dumbbell).","As you pull the dumbbells towards your body, don’t hyperextend the thoracic spine by pull your entire upper torso off the bench. You can extend slightly but don’t make it too drastic.","Some feel more comfortable with bending their knees and positioning them on the bottom pad whereas if you have longer legs than you may want to extend your legs and plant your feet flat on the floor.","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/chest-supported-dumbbell-row-1.jpg	f
196	T-Bar Row	197	{"Assume a standing position with the bar positioned directly between your legs.","Utilize a v-grip handle and place the bar directly in the notch of the v.","Hinge forward until your torso is roughly parallel with the floor (or slightly above) and then begin the movement by driving the elbows behind the body while retracting the shoulder blades.","Pull the bar towards your body until the plates touch your chest and then slowly lower the handle back to the starting position under control.","Repeat for the desired number of repetitions."}	{"Experiment with head position and see which option (looking forward vs. packing the neck) works better for you.","Keep some tone through your abdominals as you pull the bar into your body to ensure you don’t arch excessively through your spine.","Don’t allow momentum to dictate the movement, control the bar throughout the entirety of each rep.","Don’t allow the head to jut forward as you pull.","Similarly, ensure the shoulder blade moves on the rib cage. Don’t lock the shoulder blade down and just move through the glenohumeral joint."}	https://cdn.muscleandstrength.com/sites/default/files/t-bar-row.jpg	f
197	Thoracic Extension on Foam Roller	198	{"Setup in a supine position with a foam roller underneath your upper back.","Place your hands behind your head and exhale as you extend your upper back over the roller.","Once you run out of range of motion in the thoracic spine, return to the starting position.","Repeat for the desired number of repetitions."}	{"Keep some tension through the abs and ensure the lumbar spine does not extend. The goal is movement through the upper back alone.","Keep the head supported and don’t allow the neck fall backwards as this will place stress upon the cervical spine.","Move the foam roller slightly up or down the thoracic spine to mobilize different segments with each extension. Don’t stick to just a single segment.","Keep the movement dynamic, don’t just hang out in end range extension or flexion."}	https://cdn.muscleandstrength.com/sites/default/files/thoracic-extension-on-foam-roller.jpg	f
198	One-Arm Seated Cable Row	199	{"Attach a single handle to the low pulley cable machine and set the amount of weight you want to use.","Sit down facing the cable with your knees slightly bent.","With your right hand, grab the handle using an overhand grip and take the weight off the stack.","Keep your back straight and shoulders back. Slowly pull the weight towards your side twisting at the wrist.","Pull the weight as far as possible, and squeeze your shoulder blade at the top of the movement.","Pause, and then slowly lower the weight back to the starting position (do not let the weight touch the stack).","Repeat for desired reps, and then repeat for the other arm."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-seated-cable-row.jpg?itok=CsXQOrcc	f
199	One-Arm Bent-Over Row	200	{"Set up for the exercise by getting an Olympic bar and setting one end in a secure location where it cannot move, like the corner of the room or up against a wall.","On the opposite end of the Olympic bar, add your desired weight plate(s).","Facing the weighted end of the bar, position yourself with one leg on each side of the bar with your feet shoulder width apart.","Bend your knees slightly and place your left hand on your left knee.","With your right hand, grab the bar close to the weight plates.","Keeping your back straight, raise the bar slightly off the floor. This is the starting position for the exercise.","Pull the bar straight up with your right arm as far as possible, squeezing your shoulder blade in at the top of the movement.","Pause and slowly lower the weight back to the starting position.","Repeat for desired reps, and then repeat for the opposite side of the body."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/one-arm-bent-over-barbell-row.jpg?itok=NDNpF66C	f
200	Palm Rotational Row	201	{"Select the appropriate dumbbells and place them on the floor in front of you.","Bending at the knees and keeping your back straight, squat down and pick up the dumbbells with an overhand grip (palms facing the floor).","Get into the starting position by keeping your back straight and bending at the knees. Let the dumbbells slide down your thighs until they're just below knee height.","Pull the dumbbells up towards your stomach. While pulling the dumbbells up, twist at the wrist from an over hand to an under hand position.","As you lower the dumbbells, reverse this twist so you end the rep within the overhand position."}	{}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/palm-rotational-row.jpg?itok=3ztNa7J9	f
35	EZ Bar Curl	35	{"Grasp an EZ bar at around shoulder width apart using an underhand grip (palms facing up).","Stand straight up, feet together (you may be more comfortable taking one foot back for stability), back straight, and with your arms fully extended. The bar should not be touching your body.","Keeping your eyes facing forward, elbows tucked in at your sides, and your body completely still, slowly curl the bar up.","Squeeze your biceps hard at the top of the movement, and then slowly lower it back to the starting position.","Repeat for desired reps."}	{}	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZHDrzBEdtJoOTmJtgr6CubGdNXnXfQ072Xg&s	f
\.


--
-- Data for Name: exercise_day; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.exercise_day (exercise_day_id, set, reps, exercise_id, workout_day_id) FROM stdin;
1	4	{10,8,8,6}	160	1
2	4	{10,8,8,6}	59	1
3	4	{10,8,8,6}	181	1
4	4	{12,10,10,8}	154	2
5	4	{12,10,10,8}	87	2
6	4	{12,10,10,8}	52	2
7	4	{12,10,10,8}	50	2
8	4	{12,10,10,8}	45	2
9	2	{10,8}	86	3
10	2	{10,8}	89	3
11	2	{10,8}	98	3
12	2	{10,8}	142	3
13	3	{12,10,8}	65	16
14	3	{12,10,8}	58	16
15	3	{12,10,8}	55	16
16	2	{12,10}	92	17
17	2	{12,10}	102	17
18	2	{12,10}	98	17
19	2	{12,10}	85	17
20	5	{14,12,10,8,6}	86	18
21	5	{14,12,10,8,6}	154	18
22	4	{12,10,8,6}	160	19
23	4	{12,10,8,6}	167	19
24	4	{12,10,8,6}	159	19
25	4	{12,10,8,6}	55	20
26	4	{12,10,8,6}	26	20
27	4	{12,10,8,6}	57	20
28	4	{12,10,8,6}	59	20
29	4	{12,10,8,6}	65	20
30	4	{12,10,8,6}	61	20
31	4	{12,10,8,6}	83	21
32	4	{12,10,8,6}	98	21
33	4	{12,10,8,6}	88	21
34	4	{12,10,8,6}	95	21
35	4	{12,10,8,6}	142	21
36	4	{12,10,8,6}	99	21
37	4	{12,10,8,6}	109	22
38	4	{12,10,8,6}	152	22
39	4	{12,10,8,6}	102	22
40	4	{12,10,8,6}	159	22
41	4	{12,10,8,6}	153	22
42	4	{12,10,8,6}	86	22
43	3	{12,10,8}	153	23
44	3	{12,10,8}	194	23
45	3	{12,10,8}	157	23
46	3	{12,10,8}	117	23
47	3	{12,10,8}	64	23
48	3	{12,10,8}	109	23
49	3	{12,10,8}	99	24
50	3	{12,10,8}	86	24
51	3	{12,10,8}	34	24
52	3	{12,10,8}	160	24
53	3	{12,10,8}	89	24
54	3	{12,10,8}	95	24
55	3	{12,10,8}	155	25
56	3	{12,10,8}	42	25
57	3	{12,10,8}	193	25
58	3	{12,10,8}	162	25
59	3	{12,10,8}	195	25
60	3	{12,10,8}	188	25
61	3	{12,10,8}	154	26
62	3	{12,10,8}	100	26
63	3	{12,10,8}	160	26
64	3	{12,10,8}	90	26
65	3	{12,10,8}	97	26
66	3	{12,10,8}	84	26
67	4	{12,10,8,6}	189	27
68	4	{12,10,8,6}	196	27
69	4	{12,10,8,6}	85	28
70	4	{12,10,8,6}	86	28
71	4	{12,10,8,6}	89	28
72	4	{12,10,8,6}	193	29
73	4	{12,10,8,6}	195	29
74	4	{12,10,8,6}	189	29
75	4	{12,10,8,6}	84	30
76	4	{12,10,8,6}	100	30
77	4	{12,10,8,6}	192	31
78	4	{12,10,8,6}	195	31
79	4	{12,10,8,6}	156	31
80	4	{12,10,8,6}	193	31
81	4	{6,5,5,3}	59	32
82	4	{6,5,5,3}	61	32
83	4	{6,5,5,3}	57	32
84	4	{10,8,6,4}	27	33
85	4	{10,8,6,4}	81	33
86	4	{8,6,6,4}	34	34
87	4	{8,6,6,4}	26	34
88	4	{8,6,6,4}	39	34
89	4	{8,6,6,4}	37	34
90	4	{6,5,5,3}	61	35
91	4	{6,5,5,3}	59	35
92	4	{10,8,6,4}	182	36
93	4	{10,8,6,4}	68	36
94	4	{10,8,6,4}	73	36
95	4	{10,8,6,4}	76	36
96	4	{10,8,6,4}	81	36
105	3	{12,10,8}	18	37
106	3	{12,10,8}	153	37
107	3	{12,10,8}	86	37
108	3	{12,10,8}	189	37
109	3	{12,10,8}	85	37
110	3	{12,10,8}	95	37
111	3	{12,10,8}	110	38
112	3	{12,10,8}	42	38
113	3	{12,10,8}	5	38
114	3	{12,10,8}	36	39
115	3	{12,10,8}	154	39
116	3	{12,10,8}	101	40
117	3	{12,10,8}	84	40
118	3	{12,10,8}	191	40
119	3	{12,10,8}	97	40
120	3	{12,10,8}	89	41
121	3	{12,10,8}	189	41
122	3	{12,10,8}	153	41
123	3	{12,10,8}	102	41
124	3	{12,10,8}	152	41
125	3	{12,10,8}	18	41
126	3	{12,10,8}	5	42
127	3	{12,10,8}	160	42
128	3	{12,10,8}	155	42
129	3	{12,10,8}	42	42
130	3	{12,10,8}	113	42
131	3	{12,10,8}	110	42
132	3	{12,10,8}	157	43
133	3	{12,10,8}	190	43
134	3	{12,10,8}	36	43
135	3	{12,10,8}	154	43
136	3	{12,10,8}	198	44
137	3	{12,10,8}	167	44
138	3	{12,10,8}	101	44
139	3	{12,10,8}	84	44
140	3	{12,10,8}	3	45
141	3	{12,10,8}	189	45
142	3	{12,10,8}	193	45
143	4	{10,8,8,6}	109	46
144	4	{10,8,8,6}	85	46
145	4	{10,8,8,6}	91	46
146	4	{10,8,8,6}	99	46
147	4	{10,8,8,6}	95	46
148	4	{10,8,8,6}	140	46
149	4	{10,8,8,6}	36	47
150	4	{10,8,8,6}	155	48
151	4	{10,8,8,6}	65	48
152	4	{10,8,8,6}	57	48
153	4	{15,12,10,8}	86	49
154	4	{15,12,10,8}	105	49
155	4	{15,12,10,8}	102	49
156	4	{15,12,10,8}	92	49
157	4	{15,12,10,8}	113	49
158	4	{15,12,10,8}	110	49
159	4	{15,12,10,8}	12	49
160	4	{15,12,10,8}	157	50
161	4	{15,12,10,8}	99	50
162	4	{15,12,10,8}	155	51
163	4	{15,12,10,8}	153	51
164	4	{15,12,10,8}	42	51
165	4	{15,12,10,8}	107	52
166	3	{12,10,8}	5	54
167	3	{12,10,8}	140	55
168	3	{12,10,8}	192	56
169	3	{12,10,8}	195	56
170	3	{12,10,8}	189	56
171	3	{12,10,8}	188	56
172	3	{12,10,8}	36	57
173	4	{12,10,8,6}	179	58
174	4	{12,10,8,6}	185	58
175	4	{10,8,8,6}	89	59
176	4	{10,8,8,6}	140	59
177	4	{10,8,8,6}	102	59
178	4	{15,12,10,8}	43	60
179	4	{15,12,10,8}	41	60
180	4	{15,12,10,8}	152	60
181	4	{15,12,10,8}	102	60
182	4	{12,10,8,6}	163	61
183	4	{12,10,8,6}	160	61
184	4	{12,10,8,6}	182	61
185	4	{10,8,8,6}	171	62
186	4	{10,8,8,6}	191	62
187	4	{10,8,8,6}	25	62
188	4	{10,8,8,6}	34	62
189	4	{10,8,8,6}	37	62
190	4	{10,8,8,6}	172	62
191	4	{15,12,10,8}	87	63
192	4	{15,12,10,8}	110	63
193	4	{15,12,10,8}	113	63
194	4	{15,12,10,8}	93	63
195	4	{15,12,10,8}	96	63
196	3	{12,10,8}	165	64
197	3	{12,10,8}	167	64
198	3	{12,10,8}	159	64
199	3	{10,8,8}	76	65
200	3	{10,8,8}	81	65
201	3	{10,8,8}	196	65
202	3	{10,8,8}	161	65
203	3	{15,12,10}	101	66
204	3	{15,12,10}	84	66
205	3	{15,12,10}	90	66
206	3	{15,12,10}	97	66
207	4	{10,8,8,6}	185	64
208	4	{10,8,8,6}	36	64
209	4	{10,8,8,6}	176	64
210	4	{10,8,8,6}	177	64
211	4	{10,8,8,6}	61	64
212	4	{10,8,8,6}	162	64
213	4	{12,10,8,8}	45	65
214	4	{12,10,8,8}	40	65
215	4	{12,10,8,8}	82	65
216	4	{12,10,10,8}	65	66
217	4	{12,10,10,8}	57	66
218	4	{12,10,10,8}	55	66
219	5	{5,5,3,3,1}	91	67
220	5	{5,5,3,3,1}	160	67
221	5	{5,5,3,3,1}	59	67
222	5	{5,5,3,3,1}	55	67
223	3	{12,10,8}	34	68
224	3	{12,10,8}	167	68
225	3	{12,10,8}	26	68
226	3	{12,10,8}	159	68
227	3	{12,10,8}	37	68
228	5	{5,5,3,3,2}	88	70
229	5	{5,5,3,3,2}	95	70
230	5	{5,5,3,3,2}	55	70
231	5	{5,5,3,3,2}	86	70
232	4	{10,8,8,6}	26	71
233	4	{10,8,8,6}	155	71
234	4	{10,8,8,6}	42	71
235	4	{10,8,8,6}	167	71
236	4	{10,8,8,6}	159	71
237	4	{8,6,4,4}	58	72
238	4	{8,6,4,4}	58	72
239	3	{12,10,10}	182	74
240	3	{12,10,10}	5	74
241	3	{12,10,10}	5	77
242	4	{15,12,10,8}	18	78
243	4	{15,12,10,8}	117	78
244	4	{15,12,10,8}	20	78
245	4	{15,12,10,8}	160	78
246	4	{15,12,10,8}	153	78
247	3	{12,10,10}	84	79
248	3	{12,10,10}	91	79
249	3	{12,10,10}	92	79
250	3	{12,10,10}	89	79
251	3	{10,8,8}	58	80
252	3	{10,8,8}	36	80
253	3	{10,8,8}	182	80
254	3	{30,30,30}	124	81
255	3	{30,30,30}	19	81
256	3	{30,30,30}	197	81
257	4	{20,15,10,10}	175	82
258	4	{20,15,10,10}	192	82
259	4	{20,15,10,10}	196	82
260	4	{20,15,10,10}	194	82
261	3	{12,10,8}	91	83
262	3	{12,10,8}	140	83
263	3	{12,10,8}	102	83
264	3	{12,10,8}	89	83
265	3	{20,15,10}	5	90
266	4	{15,12,10,8}	153	92
267	4	{15,12,10,8}	20	92
268	4	{15,12,10,8}	92	92
269	4	{15,12,10,8}	91	92
270	4	{10,8,6,6}	160	93
271	5	{8,8,6,6,4}	59	95
272	5	{8,8,6,6,4}	65	95
273	5	{8,8,6,6,4}	55	95
274	5	{8,8,6,6,4}	57	95
275	5	{8,8,6,6,4}	152	97
276	5	{8,8,6,6,4}	42	97
277	5	{8,8,6,6,4}	18	97
278	5	{8,8,6,6,4}	109	97
279	5	{8,8,6,6,4}	64	98
280	5	{8,8,6,6,4}	42	100
281	5	{8,8,6,6,4}	154	100
282	5	{8,8,6,6,4}	155	100
283	5	{8,8,6,6,4}	18	100
284	5	{5,5,5,3,3}	109	101
285	5	{5,5,5,3,3}	154	101
286	5	{5,5,5,3,3}	153	101
287	5	{5,5,5,3,3}	152	102
288	5	{5,5,5,3,3}	57	103
289	5	{5,5,5,3,3}	55	103
290	5	{5,5,5,3,3}	65	103
291	5	{5,5,5,3,3}	95	104
292	5	{5,5,5,3,3}	83	104
293	5	{5,5,5,3,3}	99	104
294	4	{12,10,8,6}	160	106
295	4	{12,10,8,6}	198	106
296	4	{12,10,8,6}	193	106
297	4	{12,10,8,6}	194	106
298	4	{10,8,8,6}	14	107
299	4	{10,8,8,6}	152	107
300	4	{10,8,8,6}	64	107
301	4	{10,8,8,6}	72	107
302	4	{10,8,6,6}	163	108
303	4	{15,12,10,8}	140	109
304	4	{15,12,10,8}	82	109
305	4	{15,12,10,8}	88	109
306	4	{15,12,10,8}	102	109
307	5	{10,8,6,6,4}	61	110
308	5	{10,8,6,6,4}	182	110
309	5	{10,8,6,6,4}	65	110
310	5	{10,8,6,6,4}	160	110
311	5	{12,10,8,8,6}	98	112
312	5	{12,10,8,8,6}	89	112
313	5	{12,10,8,8,6}	42	112
314	5	{12,10,8,8,6}	88	112
315	3	{12,10,8}	159	113
316	3	{12,10,8}	36	113
317	3	{12,10,8}	167	113
318	3	{20,15,10}	5	114
319	4	{10,8,8,6}	65	113
320	4	{10,8,8,6}	61	113
321	4	{10,8,8,6}	163	113
322	4	{10,8,8,6}	59	113
323	4	{12,10,8,6}	152	115
324	4	{12,10,8,6}	142	115
325	4	{12,10,8,6}	153	115
326	4	{12,10,8,6}	117	115
327	4	{10,8,8,6}	168	116
328	4	{10,8,8,6}	61	116
329	4	{10,8,8,6}	162	116
330	4	{10,8,8,6}	164	116
331	4	{8,8,6,6}	169	117
332	4	{8,8,6,6}	199	117
333	3	{15,12,10}	5	118
334	3	{20,15,12}	14	119
335	3	{20,15,12}	139	119
336	3	{20,15,12}	5	119
337	4	{15,12,12,10}	5	124
338	4	{15,12,12,10}	6	124
339	4	{15,12,12,10}	137	124
340	4	{15,12,12,10}	16	124
341	4	{12,10,10,8}	141	129
342	3	{30,30,30}	5	131
343	4	{40,35,30,25}	5	132
344	4	{15,12,10,8}	13	133
345	4	{15,12,10,8}	6	133
346	4	{15,12,10,8}	3	133
347	4	{15,12,10,8}	16	133
348	4	{12,10,8,6}	98	138
349	4	{12,10,8,6}	164	138
350	4	{12,10,8,6}	61	138
351	4	{12,10,8,6}	162	138
352	4	{12,10,8,6}	163	138
353	3	{10,8,6}	191	139
354	3	{10,8,6}	20	139
355	3	{10,8,6}	157	139
356	3	{10,8,6}	199	139
357	4	{12,10,8,6}	160	140
358	4	{12,10,8,6}	162	140
359	4	{12,10,8,6}	184	140
360	4	{12,10,8,6}	164	140
361	4	{15,12,10,8}	153	141
362	4	{15,12,10,8}	18	141
363	4	{15,12,10,8}	109	141
364	4	{15,12,10,8}	154	141
365	4	{15,12,10,8}	152	141
366	3	{12,10,8}	170	142
367	3	{12,10,8}	189	142
368	3	{12,10,8}	196	142
369	3	{12,10,8}	200	142
370	4	{10,8,6,4}	155	143
371	4	{10,8,6,4}	65	143
372	4	{10,8,6,4}	165	143
373	4	{10,8,6,4}	59	143
374	3	{20,15,12}	5	144
375	4	{12,10,8,6}	88	145
376	4	{12,10,8,6}	85	145
377	4	{12,10,8,6}	83	145
378	4	{12,10,8,6}	86	145
379	4	{12,10,8,6}	152	145
380	4	{10,10,8,8}	164	146
381	4	{10,10,8,8}	199	146
382	4	{10,10,8,8}	61	146
383	4	{10,10,8,8}	200	146
384	3	{15,12,10}	157	147
385	3	{15,12,10}	117	147
386	3	{15,12,10}	20	147
387	3	{15,12,10}	64	149
388	3	{15,12,10}	56	149
389	3	{15,12,10}	127	149
390	3	{15,12,10}	125	149
391	3	{15,12,10}	131	149
392	3	{12,10,8}	64	150
393	3	{12,10,8}	109	150
394	3	{12,10,8}	154	150
395	3	{12,10,8}	153	150
396	3	{10,8,6}	190	151
397	3	{10,8,6}	168	151
398	3	{10,8,6}	188	151
399	3	{10,8,6}	57	151
400	3	{15,12,10}	117	152
401	3	{15,12,10}	20	152
402	3	{15,12,10}	157	152
403	4	{12,10,8,8}	83	153
404	4	{12,10,8,8}	152	153
405	4	{12,10,8,8}	154	153
406	4	{12,10,8,8}	142	153
407	4	{12,10,8,8}	98	153
408	3	{15,12,10}	135	154
409	3	{15,12,10}	125	154
410	3	{15,12,10}	128	154
411	3	{15,12,10}	130	154
412	3	{15,12,10}	126	154
413	4	{10,10,8,8}	20	155
414	4	{10,10,8,8}	117	155
415	4	{10,10,8,8}	157	155
416	3	{15,12,10}	193	157
417	3	{15,12,10}	194	157
418	3	{15,12,10}	195	157
419	3	{15,12,10}	199	157
420	3	{15,12,10}	189	157
421	4	{12,10,8,8}	20	158
422	4	{12,10,8,8}	160	158
423	4	{10,8,8,6}	92	166
424	4	{10,8,8,6}	82	166
425	4	{10,8,8,6}	95	166
426	4	{10,8,8,6}	89	166
427	4	{10,8,8,6}	88	166
428	3	{15,12,10}	20	168
429	3	{15,12,10}	117	168
430	3	{15,12,10}	157	168
431	4	{12,12,10,10}	94	171
432	4	{12,12,10,10}	169	171
433	4	{12,12,10,10}	132	171
434	4	{12,12,10,10}	126	171
435	4	{12,12,10,10}	127	171
436	4	{10,8,8,6}	92	172
437	4	{10,8,8,6}	83	172
438	4	{10,8,8,6}	98	172
439	4	{10,8,8,6}	91	172
440	4	{10,8,8,6}	140	172
441	4	{12,10,8,8}	157	174
442	4	{12,10,8,8}	20	174
443	4	{12,10,8,8}	117	174
444	4	{10,8,8,6}	89	176
445	4	{10,8,8,6}	92	176
446	4	{10,8,8,6}	98	176
447	4	{10,8,8,6}	99	176
448	4	{10,8,8,6}	95	176
449	4	{12,10,8,8}	117	179
450	4	{12,10,8,8}	157	179
451	4	{12,10,8,8}	64	179
452	4	{12,10,8,8}	20	179
453	5	{10,8,8,6,6}	154	180
454	5	{10,8,8,6,6}	169	180
455	5	{10,8,8,6,6}	109	180
456	5	{10,8,8,6,6}	18	180
457	5	{10,8,8,6,6}	135	180
458	4	{12,10,8,8}	57	183
459	4	{12,10,8,8}	20	183
460	4	{12,10,8,8}	72	183
461	4	{12,10,8,8}	61	183
462	4	{12,10,8,8}	64	183
463	4	{12,10,8,8}	170	184
464	4	{12,10,8,8}	175	184
465	4	{12,10,8,8}	194	184
466	4	{12,10,8,8}	200	184
467	4	{12,10,8,8}	195	184
468	4	{12,10,8,8}	153	185
469	4	{12,10,8,8}	102	185
470	4	{12,10,8,8}	86	185
471	4	{12,10,8,8}	85	185
472	4	{12,10,8,8}	99	185
473	4	{12,10,8,8}	163	186
474	4	{12,10,8,8}	194	187
475	4	{12,10,8,8}	195	187
476	4	{12,10,8,8}	125	187
477	4	{12,10,8,8}	133	187
478	4	{12,10,8,8}	189	187
479	4	{12,10,8,8}	85	188
480	4	{12,10,8,8}	99	188
481	4	{12,10,8,8}	20	188
482	4	{12,10,8,8}	82	188
483	4	{12,10,8,8}	89	188
484	4	{10,8,8,6}	160	189
485	4	{10,8,8,6}	174	189
486	4	{10,8,8,6}	175	189
487	4	{10,8,8,6}	200	189
488	4	{10,8,8,6}	133	189
489	4	{10,8,8,6}	86	190
490	4	{10,8,8,6}	153	190
491	4	{10,8,8,6}	82	190
492	4	{10,8,8,6}	91	190
493	4	{10,8,8,6}	92	190
494	4	{10,8,8,6}	163	191
495	4	{10,8,8,6}	117	192
496	4	{10,8,8,6}	20	192
497	4	{10,8,8,6}	105	192
498	4	{10,8,8,6}	157	192
499	4	{10,8,8,6}	12	192
500	4	{8,6,5,5}	154	193
501	4	{8,6,5,5}	65	193
502	4	{8,6,5,5}	59	193
503	4	{8,6,5,5}	152	193
504	4	{8,6,5,5}	61	193
505	4	{8,6,5,5}	140	194
506	4	{8,6,5,5}	86	194
507	4	{8,6,5,5}	102	194
508	4	{8,6,5,5}	82	194
509	4	{8,6,5,5}	99	194
510	4	{8,6,5,5}	190	195
511	4	{8,6,5,5}	175	195
512	4	{8,6,5,5}	193	195
513	4	{8,6,5,5}	195	195
514	4	{8,6,5,5}	20	195
515	4	{8,6,5,5}	163	196
516	4	{8,6,5,5}	153	197
517	4	{8,6,5,5}	18	197
518	4	{8,6,5,5}	109	197
519	4	{8,6,5,5}	154	197
520	4	{8,6,5,5}	152	197
521	4	{10,8,6,6}	195	198
522	4	{10,8,6,6}	67	198
523	4	{10,8,6,6}	75	198
524	4	{10,8,6,6}	108	198
525	4	{10,8,6,6}	152	198
526	4	{10,8,6,6}	84	199
527	4	{10,8,6,6}	139	199
528	4	{10,8,6,6}	50	199
529	4	{10,8,6,6}	112	199
530	4	{10,8,6,6}	107	199
531	4	{10,8,6,6}	91	200
532	4	{10,8,6,6}	89	200
533	4	{10,8,6,6}	88	200
534	4	{10,8,6,6}	18	200
535	4	{10,8,6,6}	154	200
536	3	{12,10,8}	152	201
537	3	{12,10,8}	153	201
538	3	{12,10,8}	154	201
539	3	{12,10,8}	18	201
540	3	{12,10,8}	109	201
541	3	{12,10,8}	95	202
542	3	{12,10,8}	99	202
543	3	{12,10,8}	82	202
544	3	{12,10,8}	160	202
545	3	{12,10,8}	92	202
546	4	{10,8,6}	61	204
547	4	{10,8,6}	57	204
548	4	{10,8,6}	55	204
549	4	{10,8,6}	160	204
550	4	{10,8,6}	59	204
551	4	{10,8,6}	61	206
552	4	{10,8,6}	162	206
553	4	{12,10,8}	18	214
554	4	{12,10,8}	109	214
555	4	{12,10,8}	154	214
556	4	{12,10,8}	152	214
557	4	{12,10,8}	153	214
558	4	{12,10,8}	86	215
559	4	{12,10,8}	142	215
560	4	{12,10,8}	91	215
561	4	{12,10,8}	99	215
562	4	{12,10,8}	83	215
563	4	{12,10,8}	18	217
564	4	{12,10,8}	153	217
565	4	{12,10,8}	109	217
566	4	{12,10,8}	154	217
567	4	{12,10,8}	152	217
568	5	{5,4,3}	91	229
569	5	{5,4,3}	152	229
570	5	{5,4,3}	92	229
571	5	{5,4,3}	85	229
572	5	{5,4,3}	109	229
573	5	{5,4,3}	61	230
574	5	{5,4,3}	65	230
575	5	{5,4,3}	160	230
576	5	{5,4,3}	59	230
577	5	{5,4,3}	57	230
578	5	{5,4,3}	95	232
579	5	{5,4,3}	142	232
580	5	{5,4,3}	153	232
581	5	{5,4,3}	91	232
582	5	{5,4,3}	89	232
583	5	{5,4,3}	102	236
584	5	{5,4,3}	86	236
585	5	{5,4,3}	95	236
586	5	{5,4,3}	18	236
587	5	{5,4,3}	92	236
588	5	{5,4,3}	61	237
589	5	{5,4,3}	55	237
590	5	{5,4,3}	65	237
591	5	{5,4,3}	59	237
592	5	{5,4,3}	160	237
593	3	{12,10,8}	95	239
594	3	{12,10,8}	109	239
595	3	{12,10,8}	83	239
596	3	{12,10,8}	88	239
597	3	{12,10,8}	98	239
598	3	{12,10,8}	160	240
599	3	{12,10,8}	5	241
600	4	{8,6,4}	154	243
601	4	{8,6,4}	18	243
602	4	{8,6,4}	109	243
603	4	{8,6,4}	153	243
604	4	{8,6,4}	140	243
605	4	{8,6,4}	65	244
606	4	{8,6,4}	61	244
607	4	{8,6,4}	57	244
608	4	{8,6,4}	55	244
609	4	{8,6,4}	59	244
610	4	{12,10,8}	109	246
611	4	{12,10,8}	153	246
612	4	{12,10,8}	18	246
613	4	{12,10,8}	152	246
614	4	{12,10,8}	154	246
615	4	{12,10,8}	5	247
616	4	{12,10,8}	91	250
617	4	{12,10,8}	82	250
618	4	{12,10,8}	154	250
619	4	{12,10,8}	85	250
620	4	{12,10,8}	88	250
621	4	{12,10,8}	157	252
622	4	{12,10,8}	117	252
623	4	{12,10,8}	20	252
624	4	{12,10,8}	154	254
625	4	{12,10,8}	152	254
626	4	{12,10,8}	153	254
627	4	{12,10,8}	18	254
628	4	{12,10,8}	109	254
629	4	{12,10,8}	20	255
630	4	{12,10,8}	5	255
631	4	{12,10,8}	117	255
632	4	{12,10,8}	157	255
633	3	{10,8,6}	157	259
634	3	{10,8,6}	20	259
635	3	{10,8,6}	117	259
636	3	{10,8,6}	153	260
637	3	{10,8,6}	109	260
638	3	{10,8,6}	18	260
639	3	{10,8,6}	152	260
640	3	{10,8,6}	154	260
641	4	{12,10,8}	5	276
642	4	{12,10,8}	110	277
643	4	{12,10,8}	113	277
644	4	{12,10,8}	182	277
645	3	{15,12,10}	18	278
646	3	{15,12,10}	109	278
647	3	{15,12,10}	153	278
648	3	{15,12,10}	154	278
649	3	{15,12,10}	152	278
650	3	{15,12,10}	5	279
651	3	{15,12,10}	113	280
652	3	{15,12,10}	110	280
653	3	{10,8,6}	152	282
654	3	{10,8,6}	153	282
655	3	{10,8,6}	109	282
656	3	{10,8,6}	18	282
657	3	{10,8,6}	154	282
658	3	{10,8,6}	5	283
659	3	{20,15,12}	12	285
660	3	{20,15,12}	16	285
661	3	{20,15,12}	6	285
662	3	{20,15,12}	13	285
663	3	{20,15,12}	3	285
664	3	{20,15,12}	5	287
665	3	{15,12,10}	5	288
666	3	{15,12,10}	139	289
667	3	{15,12,10}	137	289
668	3	{15,12,10}	6	289
669	3	{15,12,10}	14	289
670	3	{15,12,10}	12	289
671	3	{20,15,12}	5	291
672	3	{20,15,12}	12	293
673	3	{20,15,12}	6	293
674	3	{20,15,12}	13	293
675	3	{20,15,12}	137	293
676	3	{20,15,12}	14	293
677	3	{1,1,1}	5	295
\.


--
-- Data for Name: exercise_profile; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.exercise_profile (exer_profile_id, target_muscle, exercise_type, experience_level, force_type, equipment_required, mechanic) FROM stdin;
80	7	2	1	1	1	2
81	7	2	1	1	11	2
82	9	2	1	1	1	1
83	9	2	2	8	2	1
84	9	2	1	1	7	2
85	9	2	2	8	2	1
86	9	2	1	8	2	1
87	9	2	2	1	1	2
88	9	2	1	1	1	1
89	9	2	2	8	2	1
1	1	2	1	4	7	2
2	1	2	1	7	6	2
3	2	2	2	1	8	2
4	2	2	1	1	1	2
5	2	2	1	2	4	2
6	2	2	3	1	4	2
7	2	2	2	7	2	1
8	2	2	1	1	4	2
9	2	2	1	1	4	2
10	2	2	2	1	4	1
11	2	2	2	1	4	2
12	2	2	1	7	4	1
13	2	2	2	7	4	2
14	2	2	1	7	4	2
15	2	2	2	4	12	1
16	2	2	1	1	4	2
17	3	2	1	4	7	2
18	3	5	1	5	12	1
19	3	5	1	5	4	1
20	3	5	1	5	4	1
21	3	2	1	7	6	2
22	3	6	1	6	14	2
23	3	5	1	5	4	1
24	4	2	1	1	1	2
25	4	2	1	1	1	2
26	4	2	1	1	1	2
27	4	2	1	1	2	2
28	4	2	1	1	6	2
29	4	2	1	1	2	2
30	4	2	1	1	1	2
31	4	2	2	1	1	2
32	4	2	1	1	1	2
33	4	2	1	1	2	2
34	4	2	1	1	1	2
35	4	2	1	1	2	2
36	4	2	1	1	7	2
37	4	2	1	1	1	2
38	4	2	1	1	2	2
39	4	2	1	1	1	2
40	5	2	1	4	7	2
41	5	2	1	4	1	2
42	5	2	1	4	7	2
43	5	2	1	4	7	2
44	5	2	1	4	1	2
45	5	2	1	4	4	2
46	5	2	1	4	2	2
47	5	2	1	4	7	2
48	5	2	1	4	1	2
49	5	2	1	1	3	2
50	5	2	1	4	4	2
51	5	2	1	4	4	2
52	5	2	1	4	2	2
53	5	6	1	6	14	2
54	5	2	1	4	7	2
55	6	2	1	4	1	1
56	6	2	2	4	1	1
57	6	2	1	4	1	1
58	6	2	1	4	1	2
59	6	2	2	4	2	1
60	6	2	1	4	7	2
61	6	2	1	4	2	1
62	6	2	1	4	6	2
63	6	2	2	1	2	1
64	6	2	1	4	5	1
65	6	2	1	4	1	1
66	7	2	1	1	2	2
67	7	2	1	1	2	2
68	7	2	1	1	2	2
69	7	2	1	1	6	2
70	7	2	1	3	1	1
71	7	2	1	1	1	2
72	7	2	1	1	1	2
73	7	2	1	1	11	2
74	7	2	1	1	2	2
75	7	2	1	1	2	2
76	7	2	1	1	2	2
77	7	2	1	1	6	2
78	7	2	1	3	1	1
79	7	2	1	1	1	2
90	9	2	1	1	7	2
91	9	2	2	8	2	1
92	9	2	1	8	2	1
93	9	2	2	1	1	2
94	9	2	1	8	15	1
95	9	2	1	8	15	1
96	9	2	1	4	6	2
97	9	2	1	1	7	2
98	9	5	2	1	4	1
99	9	2	1	8	2	1
100	9	2	1	1	7	2
101	9	2	1	1	16	2
102	9	2	1	8	15	1
103	9	5	1	5	4	1
104	8	2	1	8	4	2
105	8	2	2	4	2	2
106	8	2	2	8	2	1
107	8	2	1	4	7	2
108	8	2	1	4	4	2
109	8	2	2	4	7	1
110	8	2	1	4	4	2
111	8	2	2	8	4	2
112	8	6	1	6	14	2
113	8	2	2	4	4	2
114	8	2	2	8	2	1
115	8	8	1	4	3	1
116	10	8	1	1	3	1
117	10	5	1	5	4	1
118	10	5	1	5	4	1
119	10	6	2	6	13	2
120	10	5	1	5	4	1
121	10	5	1	5	4	1
122	10	6	1	6	14	2
123	10	8	1	1	3	1
124	11	6	1	6	14	2
125	12	2	1	1	6	1
126	12	2	1	1	6	1
127	12	2	1	1	4	1
128	12	2	1	1	6	1
129	12	2	1	1	4	1
130	12	2	1	1	7	1
131	12	2	1	1	4	1
132	12	2	1	1	7	1
133	12	2	1	1	6	1
134	12	2	1	1	4	1
135	12	2	1	1	7	1
136	12	2	2	1	17	1
137	12	2	2	1	4	1
138	12	2	2	1	17	1
139	12	2	2	1	4	1
140	13	2	1	1	1	1
141	13	2	1	8	4	2
142	13	2	2	1	7	1
143	13	5	1	5	4	1
144	13	5	1	5	4	1
145	15	6	1	6	19	2
146	15	6	1	6	19	2
147	16	2	1	1	4	2
148	16	2	1	3	6	1
149	17	6	2	6	13	2
150	18	6	2	6	13	2
151	18	6	2	6	13	2
152	19	2	2	4	2	1
153	19	2	1	4	1	1
154	19	2	1	4	1	1
155	19	2	1	4	7	1
156	19	2	1	4	7	2
157	19	2	1	4	1	1
158	19	2	2	4	1	1
160	20	2	1	1	1	2
161	20	2	2	4	2	1
162	20	2	1	1	1	2
163	20	2	1	4	1	1
164	20	2	1	4	1	1
165	20	2	1	4	7	1
166	20	2	2	4	1	1
167	20	2	1	1	1	2
168	20	2	1	1	1	2
169	20	2	1	4	2	1
170	20	2	1	1	6	1
171	21	2	1	1	2	1
172	21	2	1	1	1	2
173	21	2	1	1	2	2
174	21	2	1	1	1	2
175	21	2	1	1	1	1
176	21	2	2	1	2	1
177	22	2	1	4	6	2
178	22	2	1	4	1	2
179	22	2	2	4	1	2
180	22	2	1	4	6	2
181	22	2	1	4	1	1
182	22	2	1	4	1	2
183	22	2	3	4	8	1
184	22	2	1	4	4	1
185	22	2	2	4	2	2
186	22	2	1	4	6	2
187	22	2	1	4	1	2
188	22	2	1	4	4	1
189	14	2	1	1	1	1
190	14	2	1	1	1	1
191	14	2	1	1	2	1
192	14	2	1	1	6	1
193	14	2	1	1	1	1
194	14	2	2	1	1	1
195	14	2	1	1	7	1
196	14	2	1	1	1	1
197	14	2	1	1	2	1
198	14	5	1	5	14	2
199	14	2	1	1	6	1
200	14	2	2	1	2	1
201	14	2	2	1	1	1
\.


--
-- Data for Name: food; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.food (food_id, food_name, category_food, calories, protein, carb, fat, cooking_time, ingredient, cooking_instruction, cover_image) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."user" (user_id, fullname, username, gender, email, phone_number, fitness_goal, age, weight, height, streak, advance_data, password) FROM stdin;
4	Trần Ngọc Huy	ngochuy	\N	huy1234@gmail.com	\N	\N	\N	\N	\N	0	\N	$2a$10$3iTWB2z0aFVoVonTo/raIeDseni5qMwLQ4fBIV40QLL7U7VD.7w5e
3	Trần Ngọc Huy	ngochuy123	0	huy123@gmail.com	\N	\N	\N	\N	\N	0	\N	$2a$10$iWMzys/MlCAmgUJcF4QFMOXmzPiAQAwwa/GQnt4l6txFm7jfRcNXi
\.


--
-- Data for Name: user_workout_plan; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.user_workout_plan (user_id, workout_plan_id, start_date, completed_session) FROM stdin;
\.


--
-- Data for Name: workout_day; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.workout_day (workout_day_id, workout_plan_id, workout_day_name, day_of_week) FROM stdin;
18	2	Legs	1
152	34	Beginner Full Body C	5
153	35	Athletic Full Body Day 1	0
154	35	Athletic Full Body Day 2	1
155	35	Athletic Full Body Day 3	2
156	35	Athletic Full Body Day 4	3
1	1	Push Day - Chest, Shoulders, Triceps	0
2	1	Leg Day - Quads, Hamstrings, Calves	2
3	1	Pull Day - Back, Biceps	4
16	2	Chest and Triceps	1
17	2	Back and Biceps	0
19	2	Shoulders	2
20	2	Chest and Triceps	3
21	2	Back and Biceps	4
22	2	Legs and Shoulders	5
23	3	Full Body Day 1	1
24	3	Full Body Day 2	0
25	3	Full Body Day 3	2
26	3	Full Body Day 4	3
27	4	Full Body Day 1	1
28	4	Full Body Day 2	0
29	4	Full Body Day 3	1
30	4	Full Body Day 4	3
31	4	Full Body Day 5	4
32	5	Chest Day	1
33	5	Arms Day	0
34	5	Chest & Arms Day	1
35	5	Chest Day	3
36	5	Arms Day	4
37	6	Full Body Day 1	1
38	6	Full Body Day 2	0
39	6	Full Body Day 3	2
40	6	Full Body Day 4	4
41	7	Full Body Sculpt Day 1	1
42	7	Full Body Sculpt Day 2	0
43	7	Full Body Sculpt Day 3	1
44	7	Full Body Sculpt Day 4	3
45	7	Full Body Sculpt Day 5	4
46	8	Strength Plan Day 1	0
47	8	Strength Plan Day 2	2
48	8	Strength Plan Day 3	4
49	9	Booty Builder Day 1	0
50	9	Booty Builder Day 2	1
51	9	Booty Builder Day 3	3
52	9	Booty Builder Day 4	5
53	10	Lean & Fit Day 1	0
54	10	Lean & Fit Day 2	2
55	10	Lean & Fit Day 3	4
56	10	Lean & Fit Day 4	1
57	10	Lean & Fit Day 5	1
58	11	Push Day 1	0
59	11	Pull Day 1	1
60	11	Leg Day 1	2
61	11	Push Day 2	3
62	11	Pull Day 2	4
63	11	Leg Day 2	5
64	12	Push Day	0
65	12	Pull Day	2
66	12	Leg Day	4
67	12	Full Body Day	1
68	13	Upper Body Hypertrophy	0
69	13	Lower Body Hypertrophy	2
157	35	Athletic Full Body Day 5	4
158	35	Athletic Full Body Day 6	5
159	36	Speed & Agility Day 1	0
160	36	Speed & Agility Day 2	1
161	36	Speed & Agility Day 3	3
162	36	Speed & Agility Day 4	4
163	36	Speed & Agility Day 5	5
164	37	Explosive Power Day 1	0
165	37	Explosive Power Day 2	1
285	67	Ab Sculptor Day 1	0
286	67	Ab Sculptor Day 2	2
287	67	Ab Sculptor Day 3	4
288	68	Core Strength Day 1	0
289	68	Core Strength Day 2	2
290	68	Core Strength Day 3	4
291	69	Dynamic Core Day 1	0
292	69	Dynamic Core Day 2	1
293	69	Dynamic Core Day 3	3
70	13	Full Body Hypertrophy	4
71	14	Powerlifting Focus	1
72	14	Bodybuilding Focus	3
73	14	Hybrid Strength Day	5
74	15	Strength Day	0
75	15	Size & Hypertrophy	2
76	15	Combo Day	4
77	16	Fat Burn Focus	1
78	16	Toning & Definition	3
79	17	HIIT Cardio Blast	0
80	17	Strength & HIIT Mix	2
81	17	HIIT Core Focus	4
82	18	Total Body Burn	1
83	18	Lower Body Fat Blast	3
84	18	Upper Body Shred	5
85	18	Active Recovery	1
86	19	Cardio & Strength Combo	1
87	19	Full Body Strength	3
88	19	Cardio Power	5
89	20	Cardio Endurance	0
90	20	Core Strength	1
91	20	HIIT Burn	2
92	20	Lower Body Shred	3
93	20	Upper Body Burn	4
94	20	Full Body Circuit	5
95	21	Push Day 1	0
96	21	Pull Day 1	1
97	21	Leg Day 1	2
98	21	Push Day 2	3
99	21	Pull Day 2	4
100	21	Leg Day 2	5
101	22	Squat Focus	0
102	22	Bench Press Focus	1
103	22	Deadlift Focus	2
294	69	Dynamic Core Day 4	4
295	70	Plank Challenge Day 1	0
296	70	Plank Challenge Day 2	2
194	43	Full Body Day 2	1
195	43	Full Body Day 3	2
201	45	Full Body Day 1	0
204	46	Push Day	0
205	46	Pull Day	1
104	22	Accessory Work	3
105	22	Core & Mobility	4
106	23	Full Body Strength A	0
107	23	Full Body Strength B	1
108	23	Full Body Strength C	3
109	23	Full Body Strength D	4
110	24	Push Day	0
111	24	Pull Day	1
112	24	Leg Day	2
113	24	Accessory Day	3
114	24	Conditioning & Core	4
115	25	Push Day	0
116	25	Pull Day	1
117	25	Leg Day	2
118	25	Push Day (Variant)	3
119	25	Pull Day (Variant)	4
120	25	Conditioning	5
121	26	Core Focus A	1
122	26	Core Focus B	3
123	26	Core & Cardio	5
124	27	Core Strength A	0
125	27	Core Strength B	2
126	27	Core Conditioning	4
127	28	Dynamic Core A	0
128	28	Dynamic Core B	1
129	28	Core & Mobility	3
130	28	Core & Cardio	5
131	29	Plank Fundamentals	1
132	29	Plank Endurance	3
133	30	Ab Circuit A	0
134	30	Ab Circuit B	1
135	30	Core Power	3
136	30	Conditioning	4
137	30	Ab Burn	5
138	31	Full Body Strength A	0
139	31	Full Body Strength B	2
140	31	Full Body Strength C	4
141	32	Conditioning A	0
142	32	Conditioning B	1
143	32	Conditioning C	3
144	32	Conditioning D	5
145	33	Functional Day 1	0
146	33	Functional Day 2	1
147	33	Functional Day 3	3
148	33	Functional Day 4	4
149	33	Functional Day 5	5
150	34	Beginner Full Body A	1
151	34	Beginner Full Body B	3
166	37	Explosive Power Day 3	2
167	37	Explosive Power Day 4	3
168	37	Explosive Power Day 5	4
169	37	Explosive Power Day 6	5
170	38	Athletes Training Plan Day 1	0
171	38	Athletes Training Plan Day 2	2
172	38	Athletes Training Plan Day 3	4
173	39	Endurance Builder Day 1	0
174	39	Endurance Builder Day 2	1
175	39	Endurance Builder Day 3	3
176	39	Endurance Builder Day 4	4
177	40	Sport-Specific Training Day 1	0
178	40	Sport-Specific Training Day 2	1
179	40	Sport-Specific Training Day 3	2
180	40	Sport-Specific Training Day 4	3
212	47	HIIT & Circuit Day 3	3
189	42	Lower Body Day 1	1
190	42	Lower Body Day 1	3
191	42	Lower Body Day 2	4
181	40	Sport-Specific Training Day 5	5
213	47	HIIT & Circuit Day 4	4
214	48	Cardio & Strength Day 1	0
215	48	Cardio & Strength Day 2	2
216	48	Cardio & Strength Day 3	4
193	43	Full Body Day 1	0
220	49	HIIT Day 3	3
217	49	HIIT Day 1	0
218	49	HIIT Day 2	1
219	49	Rest Day	2
221	50	Strength & Cardio Day 1	0
223	50	Strength & Cardio Day 3	4
222	50	Strength & Cardio Day 2	2
227	51	Functional Day 3	3
226	51	Rest Day	2
224	51	Functional Day 1	0
225	51	Functional Day 2	1
229	51	Functional Day 5	5
228	51	Functional Day 4	4
235	52	Rest Day	5
232	52	Rest Day	2
231	52	Heavy Lifting Day 2	1
230	52	Heavy Lifting Day 1	0
234	52	Heavy Lifting Day 4	4
233	52	Heavy Lifting Day 3	3
238	53	Rest Day	2
192	42	Lower Body Day 2	4
182	40	Sport-Specific Training Day 6	0
206	46	Rest Day	2
239	53	Power Lifting Day 3	3
236	53	Power Lifting Day 1	0
237	53	Power Lifting Day 2	1
240	54	Strength Day 1	0
242	54	Strength Day 3	4
241	54	Strength Day 2	2
245	55	Strength Day 3	4
243	55	Strength Day 1	0
244	55	Strength Day 2	2
248	56	Rest Day	2
249	56	Full Body Day 3	3
247	56	Full Body Day 2	1
246	56	Full Body Day 1	0
253	57	Athletes Full Body Day 3	3
254	57	Athletes Full Body Day 4	4
252	57	Rest Day	2
251	57	Athletes Full Body Day 2	1
250	57	Athletes Full Body Day 1	0
256	58	Balanced Full Body Day 2	1
255	58	Balanced Full Body Day 1	0
257	58	Rest Day	2
258	58	Balanced Full Body Day 3	3
259	59	Dynamic Full Body Day 1	0
260	59	Dynamic Full Body Day 2	2
261	59	Dynamic Full Body Day 3	4
264	60	Cardio King Day 3	4
262	60	Cardio King Day 1	0
263	60	Cardio King Day 2	2
266	61	Endurance Challenge Day 2	2
265	61	Endurance Challenge Day 1	0
267	61	Endurance Challenge Day 3	4
270	62	HIIT Mastery Day 3	3
268	62	HIIT Mastery Day 1	0
269	62	HIIT Mastery Day 2	1
271	62	HIIT Mastery Day 4	4
273	63	Low-Impact Cardio Day 2	2
272	63	Low-Impact Cardio Day 1	0
274	63	Low-Impact Cardio Day 3	4
277	64	Home Strength Builder Day 3	3
276	64	Home Strength Builder Day 2	1
275	64	Home Strength Builder Day 1	0
278	65	Bodyweight Blast Day 1	0
280	65	Bodyweight Blast Day 3	4
279	65	Bodyweight Blast Day 2	2
282	66	Quick Home Workout Day 2	1
283	66	Quick Home Workout Day 3	3
284	66	Quick Home Workout Day 4	4
281	66	Quick Home Workout Day 1	0
198	44	Upper Body Day	0
207	46	Push Day	3
209	47	HIIT & Circuit Day 1	0
211	47	Rest Day	2
208	46	Pull Day	4
183	41	Push Day 1	0
184	41	Pull Day 1	1
185	41	Legs Day 1	0
186	41	Push Day 2	0
187	41	Pull Day 2	1
188	41	Legs Day 2	5
210	47	HIIT & Circuit Day 2	1
199	44	Lower Body Day	1
202	45	Full Body Day 2	2
200	44	Full Body Day	3
196	43	Full Body Day 4	3
197	43	Full Body Day 5	4
203	45	Full Body Day 3	4
\.


--
-- Data for Name: workout_plan; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.workout_plan (plan_id, plan_name, plan_details, workout_categories, cover_image, create_at, is_delete, workout_summary_id) FROM stdin;
1	Massive Muscle Plan	Focus on heavy compound lifts to build mass.	{1}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/6_day_ppl_-_1200x630.jpg?itok=hKlHF0Oj	2024-11-25 14:05:21.042354	f	1
2	Strength and Size	Combine strength training with hypertrophy for size.	{1}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/close-up-shot-of-strong-man-doing-back-workout.jpg?itok=El2xhqaA	2024-11-25 14:05:21.042354	f	2
3	Men Full Body Muscle	Full-body workout to maximize strength and mass.	{1}	https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/spring_shred_-_1200x630.jpg?itok=o978y346	2024-11-25 14:05:21.042354	f	3
4	Shredded Physique	Achieve a lean and muscular physique.	{1}	https://example.com/shredded_physique.jpg	2024-11-25 14:05:21.042354	f	4
5	Chest & Arms Specialization	Focus on building a massive chest and arms.	{1,9,11}	https://example.com/chest_arms.jpg	2024-11-25 14:05:21.042354	f	5
6	Toned & Strong	Focus on toning muscles and building strength.	{2}	https://example.com/toned_strong.jpg	2024-11-25 14:05:21.042354	f	6
7	Full Body Sculpt	Sculpt your body with full-body workouts.	{2}	https://example.com/full_body_sculpt.jpg	2024-11-25 14:05:21.042354	f	7
8	Women Strength Plan	Build strength and definition.	{2}	https://example.com/womens_strength.jpg	2024-11-25 14:05:21.042354	f	8
9	Booty Builder	Focus on glutes and lower body.	{2}	https://example.com/booty_builder.jpg	2024-11-25 14:05:21.042354	f	9
10	Lean & Fit	Combine cardio and strength for a lean physique.	{2}	https://example.com/lean_fit.jpg	2024-11-25 14:05:21.042354	f	10
11	12-Week Mass Gain	Add serious mass with this 12-week plan.	{3}	https://example.com/12_week_mass.jpg	2024-11-25 14:05:21.042354	f	11
12	Push-Pull-Legs Split	A proven split for muscle building.	{3}	https://example.com/push_pull_legs.jpg	2024-11-25 14:05:21.042354	f	12
13	Advanced Hypertrophy	Focus on hypertrophy for maximum growth.	{3}	https://example.com/advanced_hypertrophy.jpg	2024-11-25 14:05:21.042354	f	13
14	Powerbuilding Plan	Combine powerlifting and bodybuilding.	{3}	https://example.com/powerbuilding.jpg	2024-11-25 14:05:21.042354	f	14
15	Strength & Size Combo	Build muscle and strength simultaneously.	{3}	https://example.com/strength_size_combo.jpg	2024-11-25 14:05:21.042354	f	15
16	Shred & Tone	Burn fat and tone your muscles.	{2}	https://example.com/shred_tone.jpg	2024-11-25 14:05:21.042354	f	16
17	HIIT Fat Burner	High-intensity interval training for fat loss.	{2}	https://example.com/hiit_fat_burner.jpg	2024-11-25 14:05:21.042354	f	17
18	Fat Loss Accelerator	Boost your metabolism and burn fat.	{2}	https://example.com/fat_loss_accelerator.jpg	2024-11-25 14:05:21.042354	f	18
19	Lean Machine	Combine strength and cardio for fat loss.	{2}	https://example.com/lean_machine.jpg	2024-11-25 14:05:21.042354	f	19
20	Cardio & Core Shred	Burn fat with cardio and core exercises.	{2}	https://example.com/cardio_core_shred.jpg	2024-11-25 14:05:21.042354	f	20
21	Strength Max	Advanced strength training program.	{3}	https://example.com/strength_max.jpg	2024-11-25 14:05:21.042354	f	21
22	Powerlifting Fundamentals	Build raw strength with the big 3 lifts.	{3}	https://example.com/powerlifting_fundamentals.jpg	2024-11-25 14:05:21.042354	f	22
23	Strength Builder	Progressive overload for strength gain.	{3}	https://example.com/strength_builder.jpg	2024-11-25 14:05:21.042354	f	23
24	Strong & Powerful	Gain strength with this 8-week plan.	{3}	https://example.com/strong_powerful.jpg	2024-11-25 14:05:21.042354	f	24
25	Strength for Beginners	Simple strength program for beginners.	{3}	https://example.com/strength_beginners.jpg	2024-11-25 14:05:21.042354	f	25
26	Core Crusher	Strengthen your abs with this 4-week plan.	{4}	https://example.com/core_crusher.jpg	2024-11-25 14:05:21.042354	f	26
27	Six-Pack Abs	Get a six-pack with this focused program.	{4}	https://example.com/six_pack_abs.jpg	2024-11-25 14:05:21.042354	f	27
28	Dynamic Core Training	Improve core strength with dynamic exercises.	{4}	https://example.com/dynamic_core.jpg	2024-11-25 14:05:21.042354	f	28
29	Plank Mastery	Master planks and strengthen your core.	{4}	https://example.com/plank_mastery.jpg	2024-11-25 14:05:21.042354	f	29
30	Ab Circuit Training	Burn fat and strengthen your core.	{4}	https://example.com/ab_circuit.jpg	2024-11-25 14:05:21.042354	f	30
31	Full Body Strength	Build strength with full-body workouts.	{8}	https://example.com/full_body_strength.jpg	2024-11-25 14:05:21.042354	f	31
32	Total Body Conditioning	Condition your entire body with this plan.	{8}	https://example.com/total_body_conditioning.jpg	2024-11-25 14:05:21.042354	f	32
33	Functional Full Body	Functional fitness for strength and endurance.	{8}	https://example.com/functional_full_body.jpg	2024-11-25 14:05:21.042354	f	33
34	Full Body for Beginners	Simple and effective full-body workouts.	{8}	https://example.com/full_body_beginners.jpg	2024-11-25 14:05:21.042354	f	34
35	Athletic Full Body	Train like an athlete with full-body workouts.	{8}	https://example.com/athletic_full_body.jpg	2024-11-25 14:05:21.042354	f	35
36	Speed & Agility	Improve speed and agility for sports.	{5}	https://example.com/speed_agility.jpg	2024-11-25 14:05:21.042354	f	36
37	Explosive Power	Develop explosive power for your sport.	{5}	https://example.com/explosive_power.jpg	2024-11-25 14:05:21.042354	f	37
38	Athletes Training Plan	Train like a pro athlete.	{5}	https://example.com/athletes_training.jpg	2024-11-25 14:05:21.042354	f	38
39	Endurance Builder	Build endurance for sports.	{5}	https://example.com/endurance_builder.jpg	2024-11-25 14:05:21.042354	f	39
40	Sport-Specific Training	Tailored program for your specific sport.	{5}	https://example.com/sport_specific.jpg	2024-11-25 14:05:21.042354	f	40
41	Muscle Growth Blueprint	Focused on progressive overload and hypertrophy.	{3}	https://example.com/muscle_growth.jpg	2024-11-25 14:05:21.042354	f	11
42	The Bulk Program	Mass gain program for intermediate lifters.	{3}	https://example.com/bulk_program.jpg	2024-11-25 14:05:21.042354	f	12
43	Max Mass	Targeted muscle growth with advanced techniques.	{3}	https://example.com/max_mass.jpg	2024-11-25 14:05:21.042354	f	13
44	Lean Mass Builder	Build lean muscle while minimizing fat gain.	{3}	https://example.com/lean_mass_builder.jpg	2024-11-25 14:05:21.042354	f	14
45	Beginner Muscle Builder	Simple program for beginners to gain muscle.	{3}	https://example.com/beginner_muscle.jpg	2024-11-25 14:05:21.042354	f	15
46	Push & Pull Strength	Build strength and size with push-pull routines.	{3}	https://example.com/push_pull_strength.jpg	2024-11-25 14:05:21.042354	f	11
47	Fat Furnace	Intense fat-burning program with HIIT and circuits.	{2}	https://example.com/fat_furnace.jpg	2024-11-25 14:05:21.042354	f	16
48	The Shredder	Combination of cardio and strength for fat loss.	{2}	https://example.com/the_shredder.jpg	2024-11-25 14:05:21.042354	f	17
49	High-Intensity Fat Burn	Fast-paced workouts to incinerate fat.	{2}	https://example.com/high_intensity_fat_burn.jpg	2024-11-25 14:05:21.042354	f	18
50	Lean & Strong Program	Lose fat while preserving muscle mass.	{2}	https://example.com/lean_strong.jpg	2024-11-25 14:05:21.042354	f	19
51	Metabolic Booster	Boost your metabolism with functional training.	{2}	https://example.com/metabolic_booster.jpg	2024-11-25 14:05:21.042354	f	20
52	Strength Overload	Maximize strength gains with heavy lifts.	{3}	https://example.com/strength_overload.jpg	2024-11-25 14:05:21.042354	f	21
53	Power Progression	Progressive strength training for powerlifters.	{3}	https://example.com/power_progression.jpg	2024-11-25 14:05:21.042354	f	22
54	Strength Basics	Foundational strength program for beginners.	{3}	https://example.com/strength_basics.jpg	2024-11-25 14:05:21.042354	f	23
55	Strong Foundations	Focus on building raw strength efficiently.	{3}	https://example.com/strong_foundations.jpg	2024-11-25 14:05:21.042354	f	24
56	Full Body Burn	High-energy full-body workouts for fat loss.	{8}	https://example.com/full_body_burn.jpg	2024-11-25 14:05:21.042354	f	31
57	Athletes Full Body	Train like an athlete with functional movements.	{8}	https://example.com/athletes_full_body.jpg	2024-11-25 14:05:21.042354	f	32
58	Balanced Full Body	Strength and endurance in one full-body program.	{8}	https://example.com/balanced_full_body.jpg	2024-11-25 14:05:21.042354	f	33
59	Dynamic Full Body	Dynamic exercises for strength and agility.	{8}	https://example.com/dynamic_full_body.jpg	2024-11-25 14:05:21.042354	f	34
60	Cardio King	Improve stamina and burn calories fast.	{8}	https://example.com/cardio_king.jpg	2024-11-25 14:05:21.042354	f	51
61	Endurance Challenge	Push your cardio limits with endurance training.	{8}	https://example.com/endurance_challenge.jpg	2024-11-25 14:05:21.042354	f	52
62	HIIT Mastery	Master high-intensity interval training for results.	{8}	https://example.com/hiit_mastery.jpg	2024-11-25 14:05:21.042354	f	53
63	Low-Impact Cardio	Gentle but effective cardio workouts for beginners.	{8}	https://example.com/low_impact_cardio.jpg	2024-11-25 14:05:21.042354	f	55
64	Home Strength Builder	Effective strength training at home.	{7}	https://example.com/home_strength_builder.jpg	2024-11-25 14:05:21.042354	f	46
65	Bodyweight Blast	Bodyweight exercises for strength and fitness.	{7}	https://example.com/bodyweight_blast.jpg	2024-11-25 14:05:21.042354	f	47
66	Quick Home Workouts	Short and intense workouts for busy schedules.	{7}	https://example.com/quick_home.jpg	2024-11-25 14:05:21.042354	f	48
67	Ab Sculptor	Sculpt your abs with targeted core exercises.	{4}	https://example.com/ab_sculptor.jpg	2024-11-25 14:05:21.042354	f	26
68	Core Strength Program	Build a solid and strong core.	{4}	https://example.com/core_strength.jpg	2024-11-25 14:05:21.042354	f	27
69	Dynamic Core	Functional core training for stability and power.	{4}	https://example.com/dynamic_core.jpg	2024-11-25 14:05:21.042354	f	28
70	Plank Challenge	Master planks and core endurance in 4 weeks.	{4}	https://example.com/plank_challenge.jpg	2024-11-25 14:05:21.042354	f	29
\.


--
-- Data for Name: workout_summary; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.workout_summary (workout_summary_id, main_goal, program_duration, workout_type, training_level, day_per_week, time_per_workout, target_gender) FROM stdin;
2	0	16	0	2	6	75	0
3	1	8	1	0	4	45	0
4	1	12	1	1	5	50	0
5	2	16	0	2	5	75	0
6	1	8	1	0	4	45	1
7	1	12	0	1	5	50	1
8	5	6	1	0	3	40	1
9	8	8	1	0	4	30	1
10	0	12	0	1	5	60	1
11	0	12	0	1	6	70	2
12	0	10	0	0	4	60	2
13	0	16	1	2	5	75	2
14	0	8	0	0	3	60	2
15	0	20	0	2	5	80	2
16	1	12	0	1	5	45	2
17	1	8	1	0	3	30	2
18	1	10	1	1	4	50	2
19	1	6	1	0	3	40	2
20	1	14	0	2	6	60	2
21	2	16	0	2	6	75	2
22	2	12	0	1	5	70	2
23	2	8	1	0	4	50	2
24	2	10	0	1	5	60	2
25	2	20	0	2	6	80	2
26	7	6	1	0	3	30	2
27	7	8	0	1	3	40	2
28	7	10	1	1	4	45	2
29	7	4	1	0	2	30	2
30	7	12	0	2	5	50	2
31	6	10	1	0	3	60	2
32	6	8	1	1	4	50	2
33	6	12	1	2	5	60	2
34	6	6	1	0	3	40	2
35	6	16	1	2	6	70	2
36	4	12	0	1	5	60	2
37	4	16	0	2	6	70	2
38	4	8	1	0	3	50	2
39	4	10	1	1	4	55	2
40	4	20	0	2	6	75	2
41	5	6	1	0	3	40	2
42	5	8	1	0	3	45	2
43	5	12	1	1	4	50	2
44	5	14	1	1	5	55	2
45	5	16	1	2	6	60	2
46	8	6	1	0	3	30	2
47	8	8	1	0	3	35	2
48	8	10	1	1	4	40	2
49	8	12	1	1	4	45	2
50	8	14	1	2	5	50	2
51	9	6	1	0	3	30	2
52	9	8	1	0	3	40	2
53	9	10	1	1	4	45	2
54	9	12	1	1	5	50	2
55	9	14	1	2	5	55	2
1	0	12	0	1	3	60	0
\.


--
-- Name: diet_plan_detail_diet_plan_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.diet_plan_detail_diet_plan_detail_id_seq', 1, false);


--
-- Name: diet_plan_diet_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.diet_plan_diet_plan_id_seq', 1, false);


--
-- Name: exercise_day_exercise_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.exercise_day_exercise_day_id_seq', 677, true);


--
-- Name: exercise_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.exercise_day_id_seq', 1, false);


--
-- Name: exercise_exercise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.exercise_exercise_id_seq', 200, true);


--
-- Name: exercise_profile_exer_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.exercise_profile_exer_profile_id_seq', 201, true);


--
-- Name: food_food_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.food_food_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.user_user_id_seq', 4, true);


--
-- Name: workout_day_workout_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.workout_day_workout_day_id_seq', 296, true);


--
-- Name: workout_plan_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.workout_plan_plan_id_seq', 70, true);


--
-- Name: workout_summary_workout_summary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.workout_summary_workout_summary_id_seq', 55, true);


--
-- Name: workout_summary PK_0cc042e525c38438cb22217d333; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_summary
    ADD CONSTRAINT "PK_0cc042e525c38438cb22217d333" PRIMARY KEY (workout_summary_id);


--
-- Name: workout_plan PK_155e693ec77591063bb14f487ce; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_plan
    ADD CONSTRAINT "PK_155e693ec77591063bb14f487ce" PRIMARY KEY (plan_id);


--
-- Name: diet_plan PK_5cdd016182caa093ab7ff07e950; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan
    ADD CONSTRAINT "PK_5cdd016182caa093ab7ff07e950" PRIMARY KEY (diet_plan_id);


--
-- Name: user PK_758b8ce7c18b9d347461b30228d; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_758b8ce7c18b9d347461b30228d" PRIMARY KEY (user_id);


--
-- Name: exercise_profile PK_85954fb69471514dd029640f919; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_profile
    ADD CONSTRAINT "PK_85954fb69471514dd029640f919" PRIMARY KEY (exer_profile_id);


--
-- Name: user_workout_plan PK_8980e2d2852c773ca8a81f7b9d2; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_workout_plan
    ADD CONSTRAINT "PK_8980e2d2852c773ca8a81f7b9d2" PRIMARY KEY (user_id, workout_plan_id);


--
-- Name: food PK_b8715442695c0d7174fa132f39d; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT "PK_b8715442695c0d7174fa132f39d" PRIMARY KEY (food_id);


--
-- Name: exercise_day PK_bf0841bdbbbb746d400c31bc0b9; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_day
    ADD CONSTRAINT "PK_bf0841bdbbbb746d400c31bc0b9" PRIMARY KEY (exercise_day_id);


--
-- Name: diet_plan_detail PK_c6252fd8dc90af61fb5a6cc6a49; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan_detail
    ADD CONSTRAINT "PK_c6252fd8dc90af61fb5a6cc6a49" PRIMARY KEY (diet_plan_detail_id);


--
-- Name: exercise PK_d1650f62d215bae2e6f2acdce98; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise
    ADD CONSTRAINT "PK_d1650f62d215bae2e6f2acdce98" PRIMARY KEY (exercise_id);


--
-- Name: workout_day PK_f6954978dade5287bd1ae4a7a2f; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_day
    ADD CONSTRAINT "PK_f6954978dade5287bd1ae4a7a2f" PRIMARY KEY (workout_day_id);


--
-- Name: exercise REL_68bac98b6c866d247fd348f77d; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise
    ADD CONSTRAINT "REL_68bac98b6c866d247fd348f77d" UNIQUE (exer_profile_id);


--
-- Name: diet_plan_detail REL_ed18fe6eb1a30bcd3db805542a; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan_detail
    ADD CONSTRAINT "REL_ed18fe6eb1a30bcd3db805542a" UNIQUE (food_id);


--
-- Name: workout_plan FK_04e12a0449a9fcd92649dda9e55; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_plan
    ADD CONSTRAINT "FK_04e12a0449a9fcd92649dda9e55" FOREIGN KEY (workout_summary_id) REFERENCES public.workout_summary(workout_summary_id);


--
-- Name: user_workout_plan FK_36cbdbcc8236b7515bf236b173b; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_workout_plan
    ADD CONSTRAINT "FK_36cbdbcc8236b7515bf236b173b" FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- Name: user_workout_plan FK_66e56917c0b6ec9282038d119ce; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.user_workout_plan
    ADD CONSTRAINT "FK_66e56917c0b6ec9282038d119ce" FOREIGN KEY (workout_plan_id) REFERENCES public.workout_plan(plan_id);


--
-- Name: exercise FK_68bac98b6c866d247fd348f77d1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise
    ADD CONSTRAINT "FK_68bac98b6c866d247fd348f77d1" FOREIGN KEY (exer_profile_id) REFERENCES public.exercise_profile(exer_profile_id);


--
-- Name: workout_day FK_6d8a6592d5857e4de246c0641bb; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.workout_day
    ADD CONSTRAINT "FK_6d8a6592d5857e4de246c0641bb" FOREIGN KEY (workout_plan_id) REFERENCES public.workout_plan(plan_id);


--
-- Name: exercise_day FK_8ea84459300ebefe670bbde9f78; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_day
    ADD CONSTRAINT "FK_8ea84459300ebefe670bbde9f78" FOREIGN KEY (workout_day_id) REFERENCES public.workout_day(workout_day_id);


--
-- Name: diet_plan_detail FK_c41407f262cde3b52d10646beec; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan_detail
    ADD CONSTRAINT "FK_c41407f262cde3b52d10646beec" FOREIGN KEY (diet_plan_id) REFERENCES public.diet_plan(diet_plan_id);


--
-- Name: exercise_day FK_c4e39cf2c79ab9d0bc3a320cb18; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.exercise_day
    ADD CONSTRAINT "FK_c4e39cf2c79ab9d0bc3a320cb18" FOREIGN KEY (exercise_id) REFERENCES public.exercise(exercise_id);


--
-- Name: diet_plan_detail FK_ed18fe6eb1a30bcd3db805542ac; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan_detail
    ADD CONSTRAINT "FK_ed18fe6eb1a30bcd3db805542ac" FOREIGN KEY (food_id) REFERENCES public.food(food_id);


--
-- Name: diet_plan FK_f0c78231afe316a3b97006e72fb; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diet_plan
    ADD CONSTRAINT "FK_f0c78231afe316a3b97006e72fb" FOREIGN KEY (user_id) REFERENCES public."user"(user_id);


--
-- PostgreSQL database dump complete
--

