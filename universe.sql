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
    name character varying,
    description character varying,
    hast_life integer,
    is_spherical numeric,
    is_habitable text NOT NULL,
    is_has_sea boolean
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    planet_id integer NOT NULL,
    quantity integer NOT NULL,
    observations character varying,
    name character varying NOT NULL,
    life_id integer NOT NULL
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: lifes_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifes_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifes_life_id_seq OWNER TO freecodecamp;

--
-- Name: lifes_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifes_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    description character varying,
    hast_life integer,
    is_spherical numeric,
    is_habitable text,
    is_has_sea boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    description character varying,
    hast_life integer,
    is_spherical numeric,
    is_habitable text,
    is_has_sea boolean,
    star_id integer NOT NULL
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
    name character varying,
    description character varying,
    is_spherical numeric,
    is_habitable text,
    is_has_sea boolean,
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.lifes_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda1', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', true);
INSERT INTO public.galaxy VALUES (3, 'ARP 299', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', true);
INSERT INTO public.galaxy VALUES (4, 'ARP 300', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', true);
INSERT INTO public.galaxy VALUES (5, 'ARP 301', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', true);
INSERT INTO public.galaxy VALUES (6, 'ARP 302', 'en relacion al caballero de la diosa andromeda de la mitologia griega', 1, 1, 'si', false);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 100, 'micro organismos', 'planeta1', 1);
INSERT INTO public.life VALUES (2, 100, 'micro organismos', 'planeta2', 2);
INSERT INTO public.life VALUES (3, 6000, 'micro organismos', 'planeta3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'pertenece a la tierra', 'la mas cercano', 1, 1, 'si', false, 3);
INSERT INTO public.moon VALUES (2, 'pertenece saturno', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (3, 'luna  saturno2', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (4, 'luna  saturno3', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (5, 'luna  saturno5', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (6, 'luna  saturno6', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (7, 'luna  saturno7', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (8, 'luna  saturno8', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (9, 'luna  saturno9', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (10, 'luna  saturno10', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (11, 'luna  saturno11', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (12, 'luna  saturno12', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (13, 'luna  saturno13', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (14, 'luna  saturno14', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (15, 'luna  saturno15', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (16, 'luna  saturno16', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (17, 'luna  saturno17', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (18, 'luna  saturno18', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (19, 'luna  saturno19', 'la mas cercano', 1, 1, 'si', false, 6);
INSERT INTO public.moon VALUES (20, 'luna  saturno20', 'la mas cercano', 1, 1, 'si', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 'el primero del sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (2, 'venus', 'pertence a mi sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (3, 'tierra', 'pertence a mi sistema solar', 1, 1, 'si', true, 1);
INSERT INTO public.planet VALUES (4, 'marte', 'pertence a mi sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 'pertence a mi sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (6, 'saturno', 'pertence a mi sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (7, 'urano', 'pertence a mi sistema solar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (8, 'neptuno', 'solo mar', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (9, 'pluton', 'el mas lejano', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (10, 'pluton1', 'el mas lejano', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (11, 'pluton2', 'el mas lejano', 1, 1, 'si', false, 1);
INSERT INTO public.planet VALUES (12, 'pluton3', 'el mas lejano', 1, 1, 'si', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SOL', 'el mas enano pero el mejor y nuestro', 1, '1', false, 1);
INSERT INTO public.star VALUES (2, 'POLLUX', 'mediano', 1, '1', false, 1);
INSERT INTO public.star VALUES (3, 'ANTARES', 'mediano', 1, '1', false, 1);
INSERT INTO public.star VALUES (4, 'ATLAS', 'mediano', 1, '1', false, 1);
INSERT INTO public.star VALUES (5, 'KEPLER', 'mediano', 1, '1', false, 1);
INSERT INTO public.star VALUES (6, 'BERTEGLESE', 'mediano', 1, '1', false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: lifes_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifes_life_id_seq', 3, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy ct_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT ct_unique_galaxy UNIQUE (name);


--
-- Name: moon ct_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ct_unique_moon UNIQUE (name);


--
-- Name: planet ct_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT ct_unique_planet UNIQUE (name);


--
-- Name: star ct_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT ct_unique_star UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: life pk_lifes; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT pk_lifes PRIMARY KEY (life_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: life quantity_of_lifes_alias_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT quantity_of_lifes_alias_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: life fk_life_by_planets; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT fk_life_by_planets FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

