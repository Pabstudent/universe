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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name2 text NOT NULL,
    size integer,
    age numeric,
    life boolean NOT NULL,
    name character varying(30)
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
    name2 text NOT NULL,
    size integer,
    age numeric,
    life boolean NOT NULL,
    planet_id integer,
    name character varying(30)
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
    name2 text NOT NULL,
    size integer,
    age numeric,
    life boolean NOT NULL,
    star_id integer,
    name character varying(30)
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
    name2 text NOT NULL,
    size integer,
    age numeric,
    life boolean NOT NULL,
    galaxy_id integer,
    name character varying(30)
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
-- Name: todos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.todos (
    life character varying(20) NOT NULL,
    name character varying(30),
    todos_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.todos OWNER TO freecodecamp;

--
-- Name: todos_todos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.todos_todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todos_todos_id_seq OWNER TO freecodecamp;

--
-- Name: todos_todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.todos_todos_id_seq OWNED BY public.todos.todos_id;


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
-- Name: todos todos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todos ALTER COLUMN todos_id SET DEFAULT nextval('public.todos_todos_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (2, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (3, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (4, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (5, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (6, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (7, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (8, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (9, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (10, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (11, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (12, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (13, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (14, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (15, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (16, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (17, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (18, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (19, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (20, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (21, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (22, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (23, 'aaa', 3, 4.2, true, 'alpha');
INSERT INTO public.galaxy VALUES (24, 'aaa', 3, 4.2, true, 'alpha');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (2, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (3, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (4, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (5, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (6, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (7, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (8, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (9, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (10, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (11, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (12, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (13, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (14, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (15, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (16, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (17, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (18, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (19, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (20, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (21, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (22, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (23, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (24, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (25, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (26, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (27, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (28, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (29, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (30, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (31, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (32, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (33, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (34, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (35, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (36, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (37, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (38, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (39, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (40, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (41, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (42, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (43, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (44, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (45, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (46, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (47, 'delta', 8, 4.2, true, 2, 'avitax');
INSERT INTO public.moon VALUES (48, 'delta', 8, 4.2, true, 2, 'avitax');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (2, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (3, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (4, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (5, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (6, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (7, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (8, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (9, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (10, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (11, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (12, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (13, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (14, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (15, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (16, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (17, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (18, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (19, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (20, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (21, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (22, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (23, 'kkk', 9, 4.2, true, 1, 'gamma');
INSERT INTO public.planet VALUES (24, 'kkk', 9, 4.2, true, 1, 'gamma');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (2, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (3, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (4, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (5, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (6, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (7, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (8, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (9, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (10, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (11, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (12, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (13, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (14, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (15, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (16, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (17, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (18, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (19, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (20, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (21, 'aaa', 4, 4.2, true, 5, 'beta');
INSERT INTO public.star VALUES (22, 'aaa', 4, 4.2, true, 5, 'beta');


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.todos VALUES ('theta', 'alpha', 1, NULL);
INSERT INTO public.todos VALUES ('theta', 'alpha', 2, NULL);
INSERT INTO public.todos VALUES ('theta', 'alpha', 3, NULL);
INSERT INTO public.todos VALUES ('theta', 'alpha', 4, NULL);
INSERT INTO public.todos VALUES ('TRUE', 'xxx', 5, 1);
INSERT INTO public.todos VALUES ('TRUE', 'xxx', 6, 1);
INSERT INTO public.todos VALUES ('TRUE', 'xxx', 7, 1);
INSERT INTO public.todos VALUES ('TRUE', 'xxx', 8, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 24, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 48, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 22, true);


--
-- Name: todos_todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.todos_todos_id_seq', 8, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (todos_id);


--
-- Name: todos todos_todos_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_todos_id_key UNIQUE (todos_id);


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
-- Name: star star_vecino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_vecino_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: todos todos_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

