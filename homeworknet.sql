--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 10.17

-- Started on 2021-08-11 15:55:04 MSK

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

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 24704)
-- Name: album; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.album (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.album OWNER TO user1;

--
-- TOC entry 186 (class 1259 OID 24702)
-- Name: album_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_id_seq OWNER TO user1;

--
-- TOC entry 2458 (class 0 OID 0)
-- Dependencies: 186
-- Name: album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.album_id_seq OWNED BY public.album.id;


--
-- TOC entry 184 (class 1259 OID 24683)
-- Name: artist; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.artist (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.artist OWNER TO user1;

--
-- TOC entry 183 (class 1259 OID 24681)
-- Name: artist_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_id_seq OWNER TO user1;

--
-- TOC entry 2459 (class 0 OID 0)
-- Dependencies: 183
-- Name: artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.artist_id_seq OWNED BY public.artist.id;


--
-- TOC entry 188 (class 1259 OID 24710)
-- Name: artistalbum; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.artistalbum (
    artist_id integer NOT NULL,
    album_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.artistalbum OWNER TO user1;

--
-- TOC entry 196 (class 1259 OID 32786)
-- Name: artistalbum_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.artistalbum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artistalbum_id_seq OWNER TO user1;

--
-- TOC entry 2460 (class 0 OID 0)
-- Dependencies: 196
-- Name: artistalbum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.artistalbum_id_seq OWNED BY public.artistalbum.id;


--
-- TOC entry 192 (class 1259 OID 24741)
-- Name: collection; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.collection (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.collection OWNER TO user1;

--
-- TOC entry 191 (class 1259 OID 24739)
-- Name: collection_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collection_id_seq OWNER TO user1;

--
-- TOC entry 2461 (class 0 OID 0)
-- Dependencies: 191
-- Name: collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;


--
-- TOC entry 193 (class 1259 OID 24747)
-- Name: collectiontrack; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.collectiontrack (
    collection_id integer NOT NULL,
    track_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.collectiontrack OWNER TO user1;

--
-- TOC entry 195 (class 1259 OID 32777)
-- Name: collectiontrack_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.collectiontrack_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collectiontrack_id_seq OWNER TO user1;

--
-- TOC entry 2462 (class 0 OID 0)
-- Dependencies: 195
-- Name: collectiontrack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.collectiontrack_id_seq OWNED BY public.collectiontrack.id;


--
-- TOC entry 182 (class 1259 OID 24672)
-- Name: genre; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(25) NOT NULL
);


ALTER TABLE public.genre OWNER TO user1;

--
-- TOC entry 181 (class 1259 OID 24670)
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_seq OWNER TO user1;

--
-- TOC entry 2463 (class 0 OID 0)
-- Dependencies: 181
-- Name: genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;


--
-- TOC entry 185 (class 1259 OID 24689)
-- Name: genreartist; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.genreartist (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.genreartist OWNER TO user1;

--
-- TOC entry 194 (class 1259 OID 32768)
-- Name: genreartist_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.genreartist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genreartist_id_seq OWNER TO user1;

--
-- TOC entry 2464 (class 0 OID 0)
-- Dependencies: 194
-- Name: genreartist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.genreartist_id_seq OWNED BY public.genreartist.id;


--
-- TOC entry 190 (class 1259 OID 24725)
-- Name: track; Type: TABLE; Schema: public; Owner: user1
--

CREATE TABLE public.track (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    length numeric NOT NULL,
    album_id integer NOT NULL
);


ALTER TABLE public.track OWNER TO user1;

--
-- TOC entry 189 (class 1259 OID 24723)
-- Name: track_id_seq; Type: SEQUENCE; Schema: public; Owner: user1
--

CREATE SEQUENCE public.track_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.track_id_seq OWNER TO user1;

--
-- TOC entry 2465 (class 0 OID 0)
-- Dependencies: 189
-- Name: track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user1
--

ALTER SEQUENCE public.track_id_seq OWNED BY public.track.id;


--
-- TOC entry 2293 (class 2604 OID 24707)
-- Name: album id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.album ALTER COLUMN id SET DEFAULT nextval('public.album_id_seq'::regclass);


--
-- TOC entry 2291 (class 2604 OID 24686)
-- Name: artist id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artist ALTER COLUMN id SET DEFAULT nextval('public.artist_id_seq'::regclass);


--
-- TOC entry 2294 (class 2604 OID 32788)
-- Name: artistalbum id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artistalbum ALTER COLUMN id SET DEFAULT nextval('public.artistalbum_id_seq'::regclass);


--
-- TOC entry 2296 (class 2604 OID 24744)
-- Name: collection id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);


--
-- TOC entry 2297 (class 2604 OID 32779)
-- Name: collectiontrack id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collectiontrack ALTER COLUMN id SET DEFAULT nextval('public.collectiontrack_id_seq'::regclass);


--
-- TOC entry 2290 (class 2604 OID 24675)
-- Name: genre id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);


--
-- TOC entry 2292 (class 2604 OID 32770)
-- Name: genreartist id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genreartist ALTER COLUMN id SET DEFAULT nextval('public.genreartist_id_seq'::regclass);


--
-- TOC entry 2295 (class 2604 OID 24728)
-- Name: track id; Type: DEFAULT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.track ALTER COLUMN id SET DEFAULT nextval('public.track_id_seq'::regclass);


--
-- TOC entry 2441 (class 0 OID 24704)
-- Dependencies: 187
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.album (id, name, year) FROM stdin;
1	Lets talk about love	1997
2	Circus	2008
3	Back in Black	1980
4	Dynasty	1979
5	Ace	2016
6	The fat of the Land	1997
7	Shut em Down	1998
8	Me Against the World	1995
9	Encore	2004
10	Iron Flag	2001
\.


--
-- TOC entry 2438 (class 0 OID 24683)
-- Dependencies: 184
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.artist (id, name) FROM stdin;
1	Celine Dion
2	Britney Spears
3	AC/DC
4	KISS
5	Scooter
6	Prodigy
7	Onyx
8	2pac
9	Eminem
10	Wu-Tang
\.


--
-- TOC entry 2442 (class 0 OID 24710)
-- Dependencies: 188
-- Data for Name: artistalbum; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.artistalbum (artist_id, album_id, id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	6	6
7	7	7
8	8	8
9	9	9
10	10	10
\.


--
-- TOC entry 2446 (class 0 OID 24741)
-- Dependencies: 192
-- Data for Name: collection; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.collection (id, name, year) FROM stdin;
1	Pop Music	2010
2	Techno Music	2015
3	Rock Music	2017
4	Hip-Hop Music	2016
5	Old collection	2019
6	Best collection	2018
7	Hits	2016
8	Dance collection	2020
\.


--
-- TOC entry 2447 (class 0 OID 24747)
-- Dependencies: 193
-- Data for Name: collectiontrack; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.collectiontrack (collection_id, track_id, id) FROM stdin;
1	1	1
3	1	2
2	11	3
2	9	4
3	6	5
3	7	6
4	17	7
4	15	8
5	13	9
5	14	10
6	12	11
6	10	12
7	1	13
7	4	14
8	4	15
8	11	16
\.


--
-- TOC entry 2436 (class 0 OID 24672)
-- Dependencies: 182
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.genre (id, name) FROM stdin;
1	pop
2	hip-hop
3	techno
4	rock
5	old school
\.


--
-- TOC entry 2439 (class 0 OID 24689)
-- Dependencies: 185
-- Data for Name: genreartist; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.genreartist (artist_id, genre_id, id) FROM stdin;
1	1	1
2	1	2
3	4	3
4	4	4
5	3	5
6	3	6
7	5	7
8	5	8
9	2	9
10	2	10
7	2	11
8	2	12
\.


--
-- TOC entry 2444 (class 0 OID 24725)
-- Dependencies: 190
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: user1
--

COPY public.track (id, name, length, album_id) FROM stdin;
1	My Heart will go on	4.05	1
2	Tell Him	3.15	1
3	Circus	2.55	2
4	Womanizer	3.05	2
5	Back in Black	4.00	3
6	Hells Bells	3.58	3
7	I Was Made for lovin you	3.20	4
8	Man	3.15	4
9	Wolga	3.25	5
10	Crazy	4.18	5
11	Breathe	3.10	6
12	Firestarter	4.00	6
13	Street Nigguz	3.12	7
14	Raze it Up	3.30	7
15	Dear Mama	2.50	8
16	Outlaw	3.13	8
17	Mosh	4.10	9
18	Rain Man	3.15	9
19	Rules	4.20	10
20	Yall Been Warned	3.41	10
\.


--
-- TOC entry 2466 (class 0 OID 0)
-- Dependencies: 186
-- Name: album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.album_id_seq', 1, false);


--
-- TOC entry 2467 (class 0 OID 0)
-- Dependencies: 183
-- Name: artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.artist_id_seq', 1, false);


--
-- TOC entry 2468 (class 0 OID 0)
-- Dependencies: 196
-- Name: artistalbum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.artistalbum_id_seq', 1, false);


--
-- TOC entry 2469 (class 0 OID 0)
-- Dependencies: 191
-- Name: collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.collection_id_seq', 1, false);


--
-- TOC entry 2470 (class 0 OID 0)
-- Dependencies: 195
-- Name: collectiontrack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.collectiontrack_id_seq', 1, false);


--
-- TOC entry 2471 (class 0 OID 0)
-- Dependencies: 181
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.genre_id_seq', 1, false);


--
-- TOC entry 2472 (class 0 OID 0)
-- Dependencies: 194
-- Name: genreartist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.genreartist_id_seq', 1, false);


--
-- TOC entry 2473 (class 0 OID 0)
-- Dependencies: 189
-- Name: track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user1
--

SELECT pg_catalog.setval('public.track_id_seq', 1, false);


--
-- TOC entry 2305 (class 2606 OID 24709)
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (id);


--
-- TOC entry 2301 (class 2606 OID 24688)
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (id);


--
-- TOC entry 2307 (class 2606 OID 32790)
-- Name: artistalbum artistalbum_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artistalbum
    ADD CONSTRAINT artistalbum_pkey PRIMARY KEY (id);


--
-- TOC entry 2311 (class 2606 OID 24746)
-- Name: collection collection_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collection
    ADD CONSTRAINT collection_pkey PRIMARY KEY (id);


--
-- TOC entry 2313 (class 2606 OID 32781)
-- Name: collectiontrack collectiontrack_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collectiontrack
    ADD CONSTRAINT collectiontrack_pkey PRIMARY KEY (id);


--
-- TOC entry 2299 (class 2606 OID 24677)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- TOC entry 2303 (class 2606 OID 32772)
-- Name: genreartist genreartist_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genreartist
    ADD CONSTRAINT genreartist_pkey PRIMARY KEY (id);


--
-- TOC entry 2309 (class 2606 OID 24733)
-- Name: track track_pkey; Type: CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (id);


--
-- TOC entry 2317 (class 2606 OID 24718)
-- Name: artistalbum artistalbum_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artistalbum
    ADD CONSTRAINT artistalbum_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(id);


--
-- TOC entry 2316 (class 2606 OID 24713)
-- Name: artistalbum artistalbum_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.artistalbum
    ADD CONSTRAINT artistalbum_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(id);


--
-- TOC entry 2319 (class 2606 OID 24750)
-- Name: collectiontrack collectiontrack_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collectiontrack
    ADD CONSTRAINT collectiontrack_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collection(id);


--
-- TOC entry 2320 (class 2606 OID 24755)
-- Name: collectiontrack collectiontrack_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.collectiontrack
    ADD CONSTRAINT collectiontrack_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.track(id);


--
-- TOC entry 2314 (class 2606 OID 24692)
-- Name: genreartist genreartist_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genreartist
    ADD CONSTRAINT genreartist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(id);


--
-- TOC entry 2315 (class 2606 OID 24697)
-- Name: genreartist genreartist_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.genreartist
    ADD CONSTRAINT genreartist_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id);


--
-- TOC entry 2318 (class 2606 OID 24734)
-- Name: track track_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user1
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(id);


--
-- TOC entry 2457 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2021-08-11 15:55:05 MSK

--
-- PostgreSQL database dump complete
--

