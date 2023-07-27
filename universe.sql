--
-- PostgreSQL database dump
--
-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: domes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.domes (
    domes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_galaxies numeric NOT NULL
);


ALTER TABLE public.domes OWNER TO freecodecamp;

--
-- Name: domes_dome_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.domes_dome_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domes_dome_id_seq OWNER TO freecodecamp;

--
-- Name: domes_dome_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.domes_dome_id_seq OWNED BY public.domes.domes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    number_of_planets integer,
    power_up_present character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet_in_km integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    is_there_a_star boolean,
    is_there_a_boss_battle boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    is_it_a_hidden_star boolean NOT NULL,
    is_it_a_grand_star boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: domes domes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.domes ALTER COLUMN domes_id SET DEFAULT nextval('public.domes_dome_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: domes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.domes VALUES (1, 'Terrace', 5);
INSERT INTO public.domes VALUES (2, 'Fountain', 5);
INSERT INTO public.domes VALUES (3, 'Kitchen', 5);
INSERT INTO public.domes VALUES (4, 'Bedroom', 5);
INSERT INTO public.domes VALUES (5, 'Engine Room', 5);
INSERT INTO public.domes VALUES (6, 'Garden', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Good Egg Galaxy', 'First galaxy in the game', 18, 'Invincibility Star');
INSERT INTO public.galaxy VALUES (2, 'Honeyhive Galaxy', 'Galaxy with a lot of bees in the forest', 6, 'Bee Mushroom');
INSERT INTO public.galaxy VALUES (3, 'Loopdeloop Galaxy', 'Galaxy where you race on a stingray on a waterslide', 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Flipswitch galaxy', 'Touch all the tiles to turn the planet from blue to yellow', 1, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bowser Jrs Robot Reactor', 'Fight Bowser Jrs machine to earn your first grand star', 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sweet Sweet Galaxy', 'Cross the rocky road', 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth moon', 1, 384400, 4530);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 6000, 4503);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 23460, 4503);
INSERT INTO public.moon VALUES (4, 'Europa', 3, 671000, 4503);
INSERT INTO public.moon VALUES (5, 'Io', 3, 421700, 4500);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 1070000, 4500);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 1880000, 4500);
INSERT INTO public.moon VALUES (8, 'Amalthea', 3, 181400, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 4, 1200000, 4003);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4, 238000, 1000);
INSERT INTO public.moon VALUES (11, 'Lapetus', 4, 3561000, 4564);
INSERT INTO public.moon VALUES (12, 'Mimas', 4, 186000, NULL);
INSERT INTO public.moon VALUES (13, 'Dione', 4, 377400, 4000);
INSERT INTO public.moon VALUES (14, 'Tethys', 4, 295000, 4560);
INSERT INTO public.moon VALUES (15, 'Triton', 5, 354800, 50);
INSERT INTO public.moon VALUES (16, 'Neso', 5, 48000000, NULL);
INSERT INTO public.moon VALUES (17, 'Despina', 5, 27700, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 6, 435840, 4600);
INSERT INTO public.moon VALUES (19, 'Ariel', 6, 190900, 100);
INSERT INTO public.moon VALUES (20, 'Umbriel', 6, 266000, 4500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Starting Planet', 3, false, false);
INSERT INTO public.planet VALUES (2, 'Bitten Apple Planet', 3, false, false);
INSERT INTO public.planet VALUES (3, 'Dino Piranha Battle Planet', 3, true, true);
INSERT INTO public.planet VALUES (4, 'Octo Army Airships', 5, false, false);
INSERT INTO public.planet VALUES (5, 'King Kaliente Battle Planet', 5, true, true);
INSERT INTO public.planet VALUES (6, 'Green Brick Planet', 3, false, false);
INSERT INTO public.planet VALUES (7, 'Ray Surfing Course', 6, false, false);
INSERT INTO public.planet VALUES (8, 'Podium Planet', 6, true, false);
INSERT INTO public.planet VALUES (9, 'Flipswitch Planet', 7, true, false);
INSERT INTO public.planet VALUES (10, 'Tech Planet', 8, false, false);
INSERT INTO public.planet VALUES (11, 'Robot Reactor', 8, true, true);
INSERT INTO public.planet VALUES (12, 'Peanut Boulder Planet', 3, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Dino Piranha', 1, false, false);
INSERT INTO public.star VALUES (4, 'Luigi on the Roof', 1, true, false);
INSERT INTO public.star VALUES (5, 'King Kalientes Battle Fleet', 1, false, false);
INSERT INTO public.star VALUES (6, 'Surfing 101', 3, false, false);
INSERT INTO public.star VALUES (7, 'Painting the Planet Yellow', 4, false, false);
INSERT INTO public.star VALUES (8, 'Megalegs Moon', 5, false, true);


--
-- Name: domes_dome_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.domes_dome_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: domes domes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.domes
    ADD CONSTRAINT domes_name_key UNIQUE (name);


--
-- Name: domes domes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.domes
    ADD CONSTRAINT domes_pkey PRIMARY KEY (domes_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

