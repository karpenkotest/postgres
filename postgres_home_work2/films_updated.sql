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
-- Name: authors; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'lore'::character varying NOT NULL,
    year date DEFAULT '1970-01-01'::date NOT NULL
);


ALTER TABLE public.authors OWNER TO yulia;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO yulia;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


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
    moviegenre character varying(100),
    producers_id integer
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
    producername character varying(100),
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
-- Name: word; Type: TABLE; Schema: public; Owner: yulia
--

CREATE TABLE public.word (
    id integer NOT NULL,
    word character varying(255),
    vocabulary_id integer
);


ALTER TABLE public.word OWNER TO yulia;

--
-- Name: word_id_seq; Type: SEQUENCE; Schema: public; Owner: yulia
--

CREATE SEQUENCE public.word_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.word_id_seq OWNER TO yulia;

--
-- Name: word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yulia
--

ALTER SEQUENCE public.word_id_seq OWNED BY public.word.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


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
-- Name: word id; Type: DEFAULT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.word ALTER COLUMN id SET DEFAULT nextval('public.word_id_seq'::regclass);


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
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.authors (id, name, year) FROM stdin;
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.directors (id, directorname, dateofbirthday) FROM stdin;
\.


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.films (id, filmname, date, moviegenre, producers_id) FROM stdin;
3	Wild Rose	2018	drama	\N
2	The Matrix	1999	science fiction	3
1	Star Wars	1963	science fiction	4
\.


--
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.producers (id, producername, dateofbirthday) FROM stdin;
1	Woody Allen	1935
2	Robert Altman	1926
3	Joel Silcer	1952
4	George Lucas	1944
5	Robbie Brenner	1965
6	Christopher Nolan	1970
\.


--
-- Data for Name: word; Type: TABLE DATA; Schema: public; Owner: yulia
--

COPY public.word (id, word, vocabulary_id) FROM stdin;
1	Python	1
2	Go	1
3	Julia	1
4	PHP	1
5	Java	1
6	JS!!!	1
7	C#!!!	1
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.actors_id_seq', 1, false);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.producers_id_seq', 4, true);


--
-- Name: word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yulia
--

SELECT pg_catalog.setval('public.word_id_seq', 7, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: yulia
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

