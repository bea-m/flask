Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
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
-- Name: ab_permission; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ab_permission OWNER TO hello_flask;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_id_seq OWNER TO hello_flask;

--
-- Name: ab_permission_view; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);


ALTER TABLE public.ab_permission_view OWNER TO hello_flask;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_permission_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_view_id_seq OWNER TO hello_flask;

--
-- Name: ab_permission_view_role; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);


ALTER TABLE public.ab_permission_view_role OWNER TO hello_flask;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_permission_view_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_view_role_id_seq OWNER TO hello_flask;

--
-- Name: ab_register_user; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_register_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    email character varying(64) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);


ALTER TABLE public.ab_register_user OWNER TO hello_flask;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_register_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_register_user_id_seq OWNER TO hello_flask;

--
-- Name: ab_role; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.ab_role OWNER TO hello_flask;

--
-- Name: ab_role_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_role_id_seq OWNER TO hello_flask;

--
-- Name: ab_user; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(64) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.ab_user OWNER TO hello_flask;

--
-- Name: ab_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_user_id_seq OWNER TO hello_flask;

--
-- Name: ab_user_role; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.ab_user_role OWNER TO hello_flask;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_user_role_id_seq OWNER TO hello_flask;

--
-- Name: ab_view_menu; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.ab_view_menu (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.ab_view_menu OWNER TO hello_flask;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.ab_view_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_view_menu_id_seq OWNER TO hello_flask;

--
-- Name: dyte; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.dyte (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    rodic_id character varying(50) NOT NULL
);


ALTER TABLE public.dyte OWNER TO hello_flask;

--
-- Name: dyte_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.dyte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dyte_id_seq OWNER TO hello_flask;

--
-- Name: dyte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hello_flask
--

ALTER SEQUENCE public.dyte_id_seq OWNED BY public.dyte.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    price double precision NOT NULL,
    photo text,
    description text,
    product_type_id integer NOT NULL
);


ALTER TABLE public.product OWNER TO hello_flask;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO hello_flask;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hello_flask
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_type; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.product_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.product_type OWNER TO hello_flask;

--
-- Name: product_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.product_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_type_id_seq OWNER TO hello_flask;

--
-- Name: product_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hello_flask
--

ALTER SEQUENCE public.product_type_id_seq OWNED BY public.product_type.id;


--
-- Name: rodic; Type: TABLE; Schema: public; Owner: hello_flask
--

CREATE TABLE public.rodic (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.rodic OWNER TO hello_flask;

--
-- Name: rodic_id_seq; Type: SEQUENCE; Schema: public; Owner: hello_flask
--

CREATE SEQUENCE public.rodic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rodic_id_seq OWNER TO hello_flask;

--
-- Name: rodic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hello_flask
--

ALTER SEQUENCE public.rodic_id_seq OWNED BY public.rodic.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.dyte ALTER COLUMN id SET DEFAULT nextval('public.dyte_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product_type ALTER COLUMN id SET DEFAULT nextval('public.product_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.rodic ALTER COLUMN id SET DEFAULT nextval('public.rodic_id_seq'::regclass);


--
-- Data for Name: ab_permission; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_permission (id, name) FROM stdin;
1	can_this_form_post
2	can_this_form_get
3	can_show
4	can_edit
5	can_userinfo
6	can_delete
7	can_add
8	can_download
9	can_list
10	resetmypassword
11	resetpasswords
12	userinfoedit
13	menu_access
14	copyrole
15	can_chart
16	can_get
\.


--
-- Name: ab_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_permission_id_seq', 16, true);


--
-- Data for Name: ab_permission_view; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
1	1	5
2	2	5
3	1	6
4	2	6
5	1	7
6	2	7
7	3	9
8	4	9
9	5	9
10	6	9
11	7	9
12	8	9
13	9	9
14	10	9
15	11	9
16	12	9
17	13	10
18	13	11
19	3	12
20	4	12
21	6	12
22	7	12
23	8	12
24	9	12
25	14	12
26	13	13
27	15	14
28	13	15
29	9	16
30	13	17
31	9	18
32	13	19
33	9	20
34	13	21
35	16	22
36	9	23
37	3	23
38	13	24
39	3	25
40	4	25
41	6	25
42	7	25
43	8	25
44	9	25
45	13	26
46	13	27
47	3	28
48	4	28
49	6	28
50	7	28
51	8	28
52	9	28
53	13	29
54	3	30
55	4	30
56	6	30
57	7	30
58	8	30
59	9	30
60	13	31
61	3	32
62	4	32
63	6	32
64	7	32
65	8	32
66	9	32
67	13	33
\.


--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_permission_view_id_seq', 67, true);


--
-- Data for Name: ab_permission_view_role; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
21	21	1
22	22	1
23	23	1
24	24	1
25	25	1
26	26	1
27	27	1
28	28	1
29	29	1
30	30	1
31	31	1
32	32	1
33	33	1
34	34	1
35	35	1
36	36	1
37	37	1
38	38	1
39	39	1
40	40	1
41	41	1
42	42	1
43	43	1
44	44	1
45	45	1
46	46	1
47	47	1
48	48	1
49	49	1
50	50	1
51	51	1
52	52	1
53	53	1
54	54	1
55	55	1
56	56	1
57	57	1
58	58	1
59	59	1
60	60	1
61	61	1
62	62	1
63	63	1
64	64	1
65	65	1
66	66	1
67	67	1
\.


--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_permission_view_role_id_seq', 67, true);


--
-- Data for Name: ab_register_user; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
\.


--
-- Name: ab_register_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_register_user_id_seq', 1, false);


--
-- Data for Name: ab_role; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_role (id, name) FROM stdin;
1	Admin
2	Public
\.


--
-- Name: ab_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_role_id_seq', 2, true);


--
-- Data for Name: ab_user; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
\.


--
-- Name: ab_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_user_id_seq', 1, false);


--
-- Data for Name: ab_user_role; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_user_role (id, user_id, role_id) FROM stdin;
\.


--
-- Name: ab_user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_user_role_id_seq', 1, false);


--
-- Data for Name: ab_view_menu; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.ab_view_menu (id, name) FROM stdin;
1	IndexView
2	UtilView
3	LocaleView
4	SecurityApi
5	ResetPasswordView
6	ResetMyPasswordView
7	UserInfoEditView
8	AuthDBView
9	UserDBModelView
10	List Users
11	Security
12	RoleModelView
13	List Roles
14	UserStatsChartView
15	User's Statistics
16	PermissionModelView
17	Base Permissions
18	ViewMenuModelView
19	Views/Menus
20	PermissionViewModelView
21	Permission on Views/Menus
22	MenuApi
23	ProductPubView
24	Our Products
25	ProductView
26	List Products
27	Management
28	ProductTypeView
29	List Product Types
30	ProductPubRodic
31	List rodicu
32	ProductPubDyte
33	List dety
\.


--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.ab_view_menu_id_seq', 33, true);


--
-- Data for Name: dyte; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.dyte (id, name, description, rodic_id) FROM stdin;
\.


--
-- Name: dyte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.dyte_id_seq', 1, false);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.product (id, name, price, photo, description, product_type_id) FROM stdin;
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- Data for Name: product_type; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.product_type (id, name) FROM stdin;
\.


--
-- Name: product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.product_type_id_seq', 1, false);


--
-- Data for Name: rodic; Type: TABLE DATA; Schema: public; Owner: hello_flask
--

COPY public.rodic (id, name, description) FROM stdin;
\.


--
-- Name: rodic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hello_flask
--

SELECT pg_catalog.setval('public.rodic_id_seq', 1, false);


--
-- Name: ab_permission_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_name_key UNIQUE (name);


--
-- Name: ab_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_permission_id_view_menu_id_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_key UNIQUE (permission_id, view_menu_id);


--
-- Name: ab_permission_view_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_role_permission_view_id_role_id_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_key UNIQUE (permission_view_id, role_id);


--
-- Name: ab_permission_view_role_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_username_key UNIQUE (username);


--
-- Name: ab_role_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_name_key UNIQUE (name);


--
-- Name: ab_role_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user_email_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_email_key UNIQUE (email);


--
-- Name: ab_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role_user_id_role_id_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_key UNIQUE (user_id, role_id);


--
-- Name: ab_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_username_key UNIQUE (username);


--
-- Name: ab_view_menu_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_key UNIQUE (name);


--
-- Name: ab_view_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);


--
-- Name: dyte_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.dyte
    ADD CONSTRAINT dyte_name_key UNIQUE (name);


--
-- Name: dyte_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.dyte
    ADD CONSTRAINT dyte_pkey PRIMARY KEY (id);


--
-- Name: product_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_name_key UNIQUE (name);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_type_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_name_key UNIQUE (name);


--
-- Name: product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- Name: rodic_name_key; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.rodic
    ADD CONSTRAINT rodic_name_key UNIQUE (name);


--
-- Name: rodic_pkey; Type: CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.rodic
    ADD CONSTRAINT rodic_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.ab_permission(id);


--
-- Name: ab_permission_view_role_permission_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES public.ab_permission_view(id);


--
-- Name: ab_permission_view_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_permission_view_view_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES public.ab_view_menu(id);


--
-- Name: ab_user_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_user_role_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: dyte_rodic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.dyte
    ADD CONSTRAINT dyte_rodic_id_fkey FOREIGN KEY (rodic_id) REFERENCES public.rodic(name);


--
-- Name: product_product_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hello_flask
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_product_type_id_fkey FOREIGN KEY (product_type_id) REFERENCES public.product_type(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: hello_flask
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM hello_flask;
GRANT ALL ON SCHEMA public TO hello_flask;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

