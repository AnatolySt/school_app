--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO anatoly;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.courses (
    id bigint NOT NULL,
    title character varying,
    school_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.courses OWNER TO anatoly;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: anatoly
--

CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO anatoly;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anatoly
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: courses_pupils; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.courses_pupils (
    id bigint NOT NULL,
    pupil_id bigint,
    course_id bigint
);


ALTER TABLE public.courses_pupils OWNER TO anatoly;

--
-- Name: courses_pupils_id_seq; Type: SEQUENCE; Schema: public; Owner: anatoly
--

CREATE SEQUENCE public.courses_pupils_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_pupils_id_seq OWNER TO anatoly;

--
-- Name: courses_pupils_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anatoly
--

ALTER SEQUENCE public.courses_pupils_id_seq OWNED BY public.courses_pupils.id;


--
-- Name: pupils; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.pupils (
    id bigint NOT NULL,
    full_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pupils OWNER TO anatoly;

--
-- Name: pupils_id_seq; Type: SEQUENCE; Schema: public; Owner: anatoly
--

CREATE SEQUENCE public.pupils_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pupils_id_seq OWNER TO anatoly;

--
-- Name: pupils_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anatoly
--

ALTER SEQUENCE public.pupils_id_seq OWNED BY public.pupils.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO anatoly;

--
-- Name: schools; Type: TABLE; Schema: public; Owner: anatoly
--

CREATE TABLE public.schools (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.schools OWNER TO anatoly;

--
-- Name: schools_id_seq; Type: SEQUENCE; Schema: public; Owner: anatoly
--

CREATE SEQUENCE public.schools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_id_seq OWNER TO anatoly;

--
-- Name: schools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anatoly
--

ALTER SEQUENCE public.schools_id_seq OWNED BY public.schools.id;


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: courses_pupils id; Type: DEFAULT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.courses_pupils ALTER COLUMN id SET DEFAULT nextval('public.courses_pupils_id_seq'::regclass);


--
-- Name: pupils id; Type: DEFAULT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.pupils ALTER COLUMN id SET DEFAULT nextval('public.pupils_id_seq'::regclass);


--
-- Name: schools id; Type: DEFAULT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.schools ALTER COLUMN id SET DEFAULT nextval('public.schools_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-02-13 00:12:55.845592	2019-02-13 00:12:55.845592
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.courses (id, title, school_id, created_at, updated_at) FROM stdin;
11	1-A	5	2019-02-13 01:11:48.154601	2019-02-13 01:11:48.154601
12	2-A	5	2019-02-13 01:11:48.156678	2019-02-13 01:11:48.156678
13	1-B	6	2019-02-13 01:11:48.158571	2019-02-13 01:11:48.158571
14	2-B	6	2019-02-13 01:11:48.160256	2019-02-13 01:11:48.160256
15	Mathematics	5	2019-02-13 01:11:48.162126	2019-02-13 01:11:48.162126
\.


--
-- Data for Name: courses_pupils; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.courses_pupils (id, pupil_id, course_id) FROM stdin;
10	9	11
11	9	15
12	10	11
13	11	12
14	12	12
15	13	13
16	14	13
17	15	14
18	16	14
\.


--
-- Data for Name: pupils; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.pupils (id, full_name, created_at, updated_at) FROM stdin;
9	Anatoly Stupin	2019-02-13 01:11:48.188264	2019-02-13 01:11:48.188264
10	Dmitry Kharchenko	2019-02-13 01:11:48.192237	2019-02-13 01:11:48.192237
11	Nikola Tesla	2019-02-13 01:11:48.195224	2019-02-13 01:11:48.195224
12	Albert Einstein	2019-02-13 01:11:48.198109	2019-02-13 01:11:48.198109
13	Hank Riarden	2019-02-13 01:11:48.201065	2019-02-13 01:11:48.201065
14	Dagni Taggert	2019-02-13 01:11:48.203975	2019-02-13 01:11:48.203975
15	Djon Golt	2019-02-13 01:11:48.206955	2019-02-13 01:11:48.206955
16	Francisko D'Ankonia	2019-02-13 01:11:48.209782	2019-02-13 01:11:48.209782
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.schema_migrations (version) FROM stdin;
20190213000342
20190213000544
20190213000552
20190213000733
\.


--
-- Data for Name: schools; Type: TABLE DATA; Schema: public; Owner: anatoly
--

COPY public.schools (id, title, created_at, updated_at) FROM stdin;
5	First School	2019-02-13 01:11:48.140388	2019-02-13 01:11:48.140388
6	Second School	2019-02-13 01:11:48.143966	2019-02-13 01:11:48.143966
\.


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anatoly
--

SELECT pg_catalog.setval('public.courses_id_seq', 15, true);


--
-- Name: courses_pupils_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anatoly
--

SELECT pg_catalog.setval('public.courses_pupils_id_seq', 18, true);


--
-- Name: pupils_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anatoly
--

SELECT pg_catalog.setval('public.pupils_id_seq', 16, true);


--
-- Name: schools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anatoly
--

SELECT pg_catalog.setval('public.schools_id_seq', 6, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: courses_pupils courses_pupils_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.courses_pupils
    ADD CONSTRAINT courses_pupils_pkey PRIMARY KEY (id);


--
-- Name: pupils pupils_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.pupils
    ADD CONSTRAINT pupils_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: schools schools_pkey; Type: CONSTRAINT; Schema: public; Owner: anatoly
--

ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);


--
-- Name: index_courses_on_school_id; Type: INDEX; Schema: public; Owner: anatoly
--

CREATE INDEX index_courses_on_school_id ON public.courses USING btree (school_id);


--
-- Name: index_courses_pupils_on_course_id; Type: INDEX; Schema: public; Owner: anatoly
--

CREATE INDEX index_courses_pupils_on_course_id ON public.courses_pupils USING btree (course_id);


--
-- Name: index_courses_pupils_on_pupil_id; Type: INDEX; Schema: public; Owner: anatoly
--

CREATE INDEX index_courses_pupils_on_pupil_id ON public.courses_pupils USING btree (pupil_id);


--
-- PostgreSQL database dump complete
--

