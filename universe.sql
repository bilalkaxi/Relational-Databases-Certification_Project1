--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age numeric(2,1),
    history text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    has_planets boolean,
    description text,
    origin character varying(100)
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
    name character varying(255) NOT NULL,
    age integer,
    is_spherical boolean,
    origin character varying(100),
    planet_id integer
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
    name character varying(255) NOT NULL,
    age integer,
    is_spherical boolean,
    has_life boolean,
    origin character varying(100),
    star_id integer
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
    name character varying(255) NOT NULL,
    age integer,
    is_spherical boolean,
    origin character varying(100),
    galaxy_id integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'rtrte', 9.3, 'adsfasdfdsafadsfef');
INSERT INTO public.black_hole VALUES (2, 'rtrate', 3.3, 'adsfasdfdsafadsfesf');
INSERT INTO public.black_hole VALUES (3, 'rtrtde', 2.3, 'adsfasdfdsafadsffef');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'abs3dd', 2, false, 'asdfadsfdsafdsa', 'sadfasdfdsafdsafdsasdf');
INSERT INTO public.galaxy VALUES (2, '1abs3d', 22, false, 'asdfadsfdsafdsa', 'sadfasdfdsafdsafdsadssdf');
INSERT INTO public.galaxy VALUES (3, 'a2bs3fd', 223, false, 'asdfaddsfdsafdsa', 'sadfayysdfdsafdsafdsasdf');
INSERT INTO public.galaxy VALUES (4, 'abs23d', 23, false, 'asdfadsfdsafdsa', 'sadfasdfdsafdsafdsaswedf');
INSERT INTO public.galaxy VALUES (5, 'abss3dd', 212, false, 'asdfdfadgsfdsafdsa', 'sadfasdfyyjdsafdsafdsasdf');
INSERT INTO public.galaxy VALUES (6, '1abas3d', 232, false, 'asdfadghsfdsafdsa', 'sadfasdfdsafyjdsafdsadssdf');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ere', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (2, 'erwe', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (3, 'erre', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (4, 'erte', 423, true, 'gregrdegre', 4);
INSERT INTO public.moon VALUES (5, 'erae', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (6, 'erswe', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (7, 'errde', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (8, 'ertfe', 423, true, 'gregrdegre', 4);
INSERT INTO public.moon VALUES (9, 'ererg', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (10, 'erqwde', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (11, 'errrtwe', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (12, 'erefftrte', 423, true, 'gregrdegre', 4);
INSERT INTO public.moon VALUES (13, 'erryyte', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (14, 'ertiuwe', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (15, 'erufure', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (16, 'erigte', 423, true, 'gregrdegre', 4);
INSERT INTO public.moon VALUES (17, 'ereh', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (18, 'erwme', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (19, 'ernre', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (20, 'erbte', 423, true, 'gregrdegre', 4);
INSERT INTO public.moon VALUES (21, 'evre', 43, true, 'gregregre', 1);
INSERT INTO public.moon VALUES (22, 'erwce', 423, true, 'gregredgre', 2);
INSERT INTO public.moon VALUES (23, 'errxe', 433, true, 'gregregdre', 3);
INSERT INTO public.moon VALUES (24, 'erzte', 423, true, 'gregrdegre', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dfd', 564, true, false, 'erserer', 1);
INSERT INTO public.planet VALUES (2, 'dfsd', 554, true, false, 'eredrer', 2);
INSERT INTO public.planet VALUES (3, 'dffd', 584, true, false, 'ererder', 3);
INSERT INTO public.planet VALUES (4, 'dfad', 544, true, false, 'ererer', 4);
INSERT INTO public.planet VALUES (5, 'dftd', 5634, true, false, 'efrserer', 1);
INSERT INTO public.planet VALUES (6, 'dfrsd', 5524, true, false, 'erfedrer', 2);
INSERT INTO public.planet VALUES (7, 'dfyfd', 5834, true, false, 'erersder', 3);
INSERT INTO public.planet VALUES (8, 'dfead', 5454, true, false, 'ererger', 4);
INSERT INTO public.planet VALUES (9, 'dfwtd', 634, true, false, 'efrserer', 1);
INSERT INTO public.planet VALUES (10, 'dfersd', 574, true, false, 'erfejdrer', 2);
INSERT INTO public.planet VALUES (11, 'dfyefd', 834, true, false, 'ererjsder', 3);
INSERT INTO public.planet VALUES (12, 'dfeead', 454, true, false, 'erjerger', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'abcd', 34, true, 'Unknown', 1);
INSERT INTO public.star VALUES (2, 'abcde', 34, true, 'Unknown', 2);
INSERT INTO public.star VALUES (3, 'abcdef', 34, true, 'Unknown', 3);
INSERT INTO public.star VALUES (4, 'abcdefg', 34, true, 'Unknown', 4);
INSERT INTO public.star VALUES (5, 'abcfd', 374, true, 'Unknown', 5);
INSERT INTO public.star VALUES (6, 'abcqwde', 364, true, 'Unknown', 6);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

