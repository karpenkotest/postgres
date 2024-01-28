--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

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
-- Name: actors; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    firstname character varying(100) DEFAULT 'Roman'::character varying NOT NULL,
    lastname character varying(100) DEFAULT 'Karpenko'::character varying NOT NULL,
    birtday_date character varying(50),
    comment character varying(100)
);


ALTER TABLE public.actors OWNER TO yulia;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO yulia;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: directors; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.directors (
    id integer NOT NULL,
    directorname character varying(100),
    dateofbirthday character varying(100)
);


ALTER TABLE public.directors OWNER TO yulia;

--
-- Name: directors_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_id_seq OWNER TO yulia;

--
-- Name: directors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;


--
-- Name: films; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.films (
    id integer NOT NULL,
    filmname character varying(100),
    date character varying(100),
    moviegenre character varying(100)
);


ALTER TABLE public.films OWNER TO yulia;

--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_seq OWNER TO yulia;

--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: producers; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.producers (
    id integer NOT NULL,
    directorname character varying(100),
    dateofbirthday character varying(100)
);


ALTER TABLE public.producers OWNER TO yulia;

--
-- Name: producers_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.producers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producers_id_seq OWNER TO yulia;

--
-- Name: producers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.producers_id_seq OWNED BY public.producers.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: directors id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);


--
-- Name: films id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Name: producers id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.producers ALTER COLUMN id SET DEFAULT nextval('public.producers_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.actors (id, firstname, lastname, birtday_date, comment) FROM stdin;
1	Keanu	Reeves	1964	Canadian actor
2	Johnny	Depp	1964	American actor
3	Chuck	Norris	1940	American actor
4	Brad	Pitt	1963	American actor
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.directors (id, directorname, dateofbirthday) FROM stdin;
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.films (id, filmname, date, moviegenre) FROM stdin;
1	Star Wars	1963	science fiction
2	The Matrix	1999	science fiction
3	Wild Rose	2018	drama
\.


--
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.producers (id, directorname, dateofbirthday) FROM stdin;
1	Woody Allen	1935
2	Robert Altman	1926
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.actors_id_seq', 1, false);


--
-- Name: directors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.directors_id_seq', 1, false);


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.films_id_seq', 1, false);


--
-- Name: producers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.producers_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

