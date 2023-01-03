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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer DEFAULT 0 NOT NULL,
    opponent_goals integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 219, 220, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 221, 222, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 220, 222, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 219, 221, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 220, 228, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 222, 230, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 221, 232, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 219, 234, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 222, 236, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 230, 238, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 221, 240, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 232, 242, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 220, 244, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 228, 246, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 234, 248, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 219, 250, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 251, 250, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 253, 232, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 250, 253, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 251, 232, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 253, 260, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 250, 221, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 232, 236, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 251, 219, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 232, 268, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 236, 234, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 219, 272, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 251, 274, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 253, 242, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 260, 278, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 250, 238, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 221, 282, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (219, 'France');
INSERT INTO public.teams VALUES (220, 'Croatia');
INSERT INTO public.teams VALUES (221, 'Belgium');
INSERT INTO public.teams VALUES (222, 'England');
INSERT INTO public.teams VALUES (228, 'Russia');
INSERT INTO public.teams VALUES (230, 'Sweden');
INSERT INTO public.teams VALUES (232, 'Brazil');
INSERT INTO public.teams VALUES (234, 'Uruguay');
INSERT INTO public.teams VALUES (236, 'Colombia');
INSERT INTO public.teams VALUES (238, 'Switzerland');
INSERT INTO public.teams VALUES (240, 'Japan');
INSERT INTO public.teams VALUES (242, 'Mexico');
INSERT INTO public.teams VALUES (244, 'Denmark');
INSERT INTO public.teams VALUES (246, 'Spain');
INSERT INTO public.teams VALUES (248, 'Portugal');
INSERT INTO public.teams VALUES (250, 'Argentina');
INSERT INTO public.teams VALUES (251, 'Germany');
INSERT INTO public.teams VALUES (253, 'Netherlands');
INSERT INTO public.teams VALUES (260, 'Costa Rica');
INSERT INTO public.teams VALUES (268, 'Chile');
INSERT INTO public.teams VALUES (272, 'Nigeria');
INSERT INTO public.teams VALUES (274, 'Algeria');
INSERT INTO public.teams VALUES (278, 'Greece');
INSERT INTO public.teams VALUES (282, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 282, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: DATABASE worldcup; Type: ACL; Schema: -; Owner: freecodecamp
--

GRANT ALL ON DATABASE worldcup TO freecodecamp;


--
-- Name: TABLE games; Type: ACL; Schema: public; Owner: freecodecamp
--

GRANT ALL ON TABLE public.games TO freecodecamp;


--
-- Name: TABLE teams; Type: ACL; Schema: public; Owner: freecodecamp
--

GRANT ALL ON TABLE public.teams TO freecodecamp;


--
-- PostgreSQL database dump complete
--
