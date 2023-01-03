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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(40) NOT NULL,
    nasa_jpl_url text,
    absolute_magnitude_h real,
    estimated_diameter_min real,
    estimated_diameter_max real,
    is_potentially_hazardous_asteroid boolean,
    close_approach_date text,
    relative_velocity_km_s real,
    miss_distance_km real,
    orbiting_body text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth integer,
    age_in_millions_of_years numeric(10,2)
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
    name character varying(40) NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL,
    orbit_length_in_earth_years integer,
    distance_from_earth integer
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
    name character varying(40) NOT NULL,
    has_life boolean,
    planet_types character varying(30),
    star_id integer NOT NULL,
    orbit_length_in_earth_years integer,
    distance_from_earth integer
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
    name character varying(40) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(10,2)
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=Ceres', NULL, NULL, 940, NULL, NULL, 17.8, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=Pallas', NULL, NULL, 530, NULL, NULL, 17.8, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'Juno', 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=Juno', NULL, NULL, 480, NULL, NULL, 17.8, NULL, NULL);
INSERT INTO public.asteroid VALUES (4, 'Vesta', 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=Vesta', NULL, NULL, 525, NULL, NULL, 17.8, NULL, NULL);
INSERT INTO public.asteroid VALUES (5, 'Iris', 'http://ssd.jpl.nasa.gov/sbdb.cgi?sstr=Iris', NULL, NULL, 280, NULL, NULL, 17.8, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home Galaxy.', 0, 13000.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest galaxy to the Milky Way', 1000000, 10000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A small galaxy in the constellation of the same name', 300000, 5000.00);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', 'A small galaxy in the constellation of the same name', 200000, 4000.00);
INSERT INTO public.galaxy VALUES (5, 'Sculptor Dwarf', 'A small galaxy in the constellation of the same name', 150000, 3000.00);
INSERT INTO public.galaxy VALUES (6, 'Ursa Major II Dwarf', 'A small galaxy in the constellation of the same name', 120000, 2000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, 1, 27, 0);
INSERT INTO public.moon VALUES (2, 'phobos', NULL, 2, 0, 0);
INSERT INTO public.moon VALUES (3, 'deimos', NULL, 2, 1, 0);
INSERT INTO public.moon VALUES (4, 'io', NULL, 9, 2, 0);
INSERT INTO public.moon VALUES (5, 'europa', NULL, 9, 4, 0);
INSERT INTO public.moon VALUES (6, 'ganymede', NULL, 9, 7, 0);
INSERT INTO public.moon VALUES (7, 'callisto', NULL, 9, 17, 0);
INSERT INTO public.moon VALUES (8, 'titan', NULL, 10, 16, 0);
INSERT INTO public.moon VALUES (9, 'iapetus', NULL, 10, 79, 0);
INSERT INTO public.moon VALUES (10, 'miranda', NULL, 11, 1, 0);
INSERT INTO public.moon VALUES (11, 'ariel', NULL, 11, 3, 0);
INSERT INTO public.moon VALUES (12, 'umbriel', NULL, 11, 4, 0);
INSERT INTO public.moon VALUES (13, 'titania', NULL, 11, 9, 0);
INSERT INTO public.moon VALUES (14, 'oberon', NULL, 11, 13, 0);
INSERT INTO public.moon VALUES (15, 'triton', NULL, 12, 6, 0);
INSERT INTO public.moon VALUES (16, 'charon', NULL, 8, 6, 0);
INSERT INTO public.moon VALUES (17, 'nix', NULL, 8, 360, 0);
INSERT INTO public.moon VALUES (18, 'hydra', NULL, 8, 12900, 0);
INSERT INTO public.moon VALUES (19, 'kiviuq', NULL, 8, 39000, 0);
INSERT INTO public.moon VALUES (20, 'styri', NULL, 8, 39000, 0);
INSERT INTO public.moon VALUES (21, 'leros', NULL, 8, 39000, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 'terrestrial', 1, 1, 0);
INSERT INTO public.planet VALUES (2, 'mars', false, 'terrestrial', 1, 2, 2);
INSERT INTO public.planet VALUES (3, 'venus', false, 'terrestrial', 1, 1, 1);
INSERT INTO public.planet VALUES (4, 'mercury', false, 'terrestrial', 1, 0, 0);
INSERT INTO public.planet VALUES (5, 'jupiter', false, 'gas giant', 1, 12, 5);
INSERT INTO public.planet VALUES (6, 'saturn', false, 'gas giant', 1, 29, 10);
INSERT INTO public.planet VALUES (7, 'uranus', false, 'ice giant', 1, 84, 19);
INSERT INTO public.planet VALUES (8, 'neptune', false, 'ice giant', 1, 165, 30);
INSERT INTO public.planet VALUES (9, 'pluto', false, 'dwarf planet', 1, 248, 39);
INSERT INTO public.planet VALUES (10, 'ceres', false, 'dwarf planet', 1, 5, 3);
INSERT INTO public.planet VALUES (11, 'eris', false, 'dwarf planet', 3, 558, 68);
INSERT INTO public.planet VALUES (12, 'makemake', false, 'dwarf planet', 2, 309, 45);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, 0, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', NULL, 1, 4, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', NULL, 1, 4, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri C', NULL, 1, 4, NULL);
INSERT INTO public.star VALUES (5, 'Barnard Star', NULL, 1, 6, NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', NULL, 1, 8, NULL);
INSERT INTO public.star VALUES (7, 'Lalande 21185', NULL, 1, 9, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
