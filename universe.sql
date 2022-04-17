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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    planet_id integer,
    name character varying(60) NOT NULL,
    population integer,
    is_hostile boolean,
    power integer
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    shape text,
    area_in_km2 numeric(8,2),
    mass_in_kg numeric(8,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_auto_increment; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_auto_increment
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_auto_increment OWNER TO freecodecamp;

--
-- Name: galaxy_auto_increment; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_auto_increment OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(60) NOT NULL,
    area_in_km2 numeric(8,2),
    mass_in_kg numeric(8,2)
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
    star_id integer,
    area_in_km2 numeric(8,2),
    name character varying(60) NOT NULL,
    is_habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_auto_increment; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_auto_increment
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_auto_increment OWNER TO freecodecamp;

--
-- Name: planet_auto_increment; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_auto_increment OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    star_type character varying(30),
    mass_in_kg numeric(8,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_auto_increment; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_auto_increment
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_auto_increment OWNER TO freecodecamp;

--
-- Name: star_auto_increment; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_auto_increment OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_auto_increment'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_auto_increment'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_auto_increment'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 3, 'Human', 13030390, false, NULL);
INSERT INTO public.alien VALUES (2, 6, 'Stormtroopers', 49203, false, NULL);
INSERT INTO public.alien VALUES (3, 9, 'Wookies', 40, false, NULL);
INSERT INTO public.alien VALUES (4, 11, 'Borg', 33333, true, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', 3000.33, 2323.22);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Spiral', 2323.32, 2211.00);
INSERT INTO public.galaxy VALUES (3, 'Popo', 'Square', 23333.12, 2333.00);
INSERT INTO public.galaxy VALUES (4, 'LOTR', 'Ring', 23043.12, 3043.00);
INSERT INTO public.galaxy VALUES (5, 'AQW', 'Circle', 3432.33, 4930.00);
INSERT INTO public.galaxy VALUES (6, 'Star wars', 'Sphere', 3232.00, 3900.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Forma', 333.23, 231.23);
INSERT INTO public.moon VALUES (2, 1, 'Lsa', 390.23, 213.23);
INSERT INTO public.moon VALUES (3, 2, 'Srn', 9093.23, 321.32);
INSERT INTO public.moon VALUES (4, 3, 'Luna', 893.23, 3891.32);
INSERT INTO public.moon VALUES (5, 4, 'Psl', 490.30, 21.23);
INSERT INTO public.moon VALUES (6, 4, 'Plsawd', 940.21, 4234.32);
INSERT INTO public.moon VALUES (7, 5, 'Apo', 412.00, 321.32);
INSERT INTO public.moon VALUES (8, 6, 'Ordos', 2134.32, 49302.32);
INSERT INTO public.moon VALUES (9, 6, 'Chaos moon', 3904.23, 3902.00);
INSERT INTO public.moon VALUES (10, 7, 'Severs', 590.00, 392.00);
INSERT INTO public.moon VALUES (11, 7, 'Cockroach', 54940.00, 499.00);
INSERT INTO public.moon VALUES (12, 8, 'Spongebob', 40203.00, 4920.00);
INSERT INTO public.moon VALUES (13, 8, 'Testmoon', 4920.12, 3143.00);
INSERT INTO public.moon VALUES (14, 9, 'Hades', 390.23, 9402.00);
INSERT INTO public.moon VALUES (15, 9, 'Bastion', 4901.23, 940.00);
INSERT INTO public.moon VALUES (16, 10, 'Transistor', 30402.00, 4893.00);
INSERT INTO public.moon VALUES (17, 10, 'Pyre', 4920.00, 3920.00);
INSERT INTO public.moon VALUES (18, 11, 'WOW', 4920.00, 32810.00);
INSERT INTO public.moon VALUES (19, 11, 'Mountain', 4920.00, 3218.00);
INSERT INTO public.moon VALUES (20, 12, 'Necrontyr', 93020.00, 32819.00);
INSERT INTO public.moon VALUES (21, 12, 'Astartes', 8943.00, 493234.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 23232.32, 'Popo7', true);
INSERT INTO public.planet VALUES (2, 1, 39203.23, 'Mass', false);
INSERT INTO public.planet VALUES (3, 1, 41208.32, 'Effect', false);
INSERT INTO public.planet VALUES (4, 2, 93023.32, 'Terra', true);
INSERT INTO public.planet VALUES (5, 3, 31390.32, 'Popo planet', false);
INSERT INTO public.planet VALUES (6, 3, 3902.32, 'Popo plante2', false);
INSERT INTO public.planet VALUES (7, 4, 40230.23, 'Mordor', false);
INSERT INTO public.planet VALUES (8, 4, 88932.32, 'Eisengard', false);
INSERT INTO public.planet VALUES (9, 5, 3902.32, 'Battleon', true);
INSERT INTO public.planet VALUES (10, 5, 392301.12, 'Doomguard', false);
INSERT INTO public.planet VALUES (11, 6, 39203.00, 'Tatooine', false);
INSERT INTO public.planet VALUES (12, 6, 30123.30, 'Coruscant', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 1, 'Blue', 2323.33);
INSERT INTO public.star VALUES (2, 'Sol', 2, 'Yellow', 234050.00);
INSERT INTO public.star VALUES (3, 'Popo star', 3, 'White dwarf', 49403.00);
INSERT INTO public.star VALUES (4, 'One ring', 4, 'Neutron star', 304930.00);
INSERT INTO public.star VALUES (5, 'Chaos star', 5, 'Red giant', 49230.00);
INSERT INTO public.star VALUES (6, 'Death star', 6, 'White giant', 39489.00);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 4, true);


--
-- Name: galaxy_auto_increment; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_auto_increment', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_auto_increment; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_auto_increment', 12, true);


--
-- Name: star_auto_increment; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_auto_increment', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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
-- Name: alien alien_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

