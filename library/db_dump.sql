Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO francisco_elisea;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO francisco_elisea;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO francisco_elisea;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO francisco_elisea;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO francisco_elisea;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO francisco_elisea;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO francisco_elisea;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO francisco_elisea;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO francisco_elisea;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO francisco_elisea;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO francisco_elisea;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO francisco_elisea;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO francisco_elisea;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_general; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_general (
    id bigint NOT NULL,
    language character varying(256) NOT NULL,
    subject character varying(256) NOT NULL,
    downloads smallint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_general OWNER TO francisco_elisea;

--
-- Name: books_general_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_general_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_general_id_seq OWNER TO francisco_elisea;

--
-- Name: books_general_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_general_id_seq OWNED BY public.books_general.id;


--
-- Name: books_illustrator; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_illustrator (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_illustrator OWNER TO francisco_elisea;

--
-- Name: books_illustrator_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_illustrator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_illustrator_id_seq OWNER TO francisco_elisea;

--
-- Name: books_illustrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_illustrator_id_seq OWNED BY public.books_illustrator.id;


--
-- Name: books_illustratorgeneral; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.books_illustratorgeneral (
    id bigint NOT NULL,
    general_id bigint NOT NULL,
    illustrator_id bigint NOT NULL
);


ALTER TABLE public.books_illustratorgeneral OWNER TO francisco_elisea;

--
-- Name: books_illustratorgeneral_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.books_illustratorgeneral_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_illustratorgeneral_id_seq OWNER TO francisco_elisea;

--
-- Name: books_illustratorgeneral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.books_illustratorgeneral_id_seq OWNED BY public.books_illustratorgeneral.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO francisco_elisea;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO francisco_elisea;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO francisco_elisea;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO francisco_elisea;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO francisco_elisea;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO francisco_elisea;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO francisco_elisea;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO francisco_elisea;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO francisco_elisea;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: francisco_elisea
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO francisco_elisea;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: francisco_elisea
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO francisco_elisea;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: francisco_elisea
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_general id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_general ALTER COLUMN id SET DEFAULT nextval('public.books_general_id_seq'::regclass);


--
-- Name: books_illustrator id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustrator ALTER COLUMN id SET DEFAULT nextval('public.books_illustrator_id_seq'::regclass);


--
-- Name: books_illustratorgeneral id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustratorgeneral ALTER COLUMN id SET DEFAULT nextval('public.books_illustratorgeneral_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add general	10	add_general
38	Can change general	10	change_general
39	Can delete general	10	delete_general
40	Can view general	10	view_general
41	Can add illustrator	11	add_illustrator
42	Can change illustrator	11	change_illustrator
43	Can delete illustrator	11	delete_illustrator
44	Can view illustrator	11	view_illustrator
45	Can add illustrator general	12	add_illustratorgeneral
46	Can change illustrator general	12	change_illustratorgeneral
47	Can delete illustrator general	12	delete_illustratorgeneral
48	Can view illustrator general	12	view_illustratorgeneral
49	Can add blacklisted token	13	add_blacklistedtoken
50	Can change blacklisted token	13	change_blacklistedtoken
51	Can delete blacklisted token	13	delete_blacklistedtoken
52	Can view blacklisted token	13	view_blacklistedtoken
53	Can add outstanding token	14	add_outstandingtoken
54	Can change outstanding token	14	change_outstandingtoken
55	Can delete outstanding token	14	delete_outstandingtoken
56	Can view outstanding token	14	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$c17arxiaetfeZJcPnbivOE$5DSXXldhBpNnesGeIa1h3xW29/Gfo5nnsXISVV9lCQk=	\N	f	admin1			admin1@gmail.com	f	t	2022-04-12 22:15:41.038387+00
2	pbkdf2_sha256$320000$lKwPeWCzBx5cabcfgnXTtp$Kr9EwI0fitJSLqZMJMMHkAZ6/CDiyyKT9m/2LfjZVu4=	\N	t	admin10			admin10@users.com	t	t	2022-04-12 22:27:37.303857+00
3	pbkdf2_sha256$320000$EcvGTSzhyRkm70mO1xaepZ$YfqpWguxKOHTDXrbGfzkRiXAhpTQW5AeGp2Fesq4UFQ=	\N	t	admin2			admin2@gmail.com	t	t	2022-04-13 03:07:01.679624+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_general; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_general (id, language, subject, downloads, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_illustrator; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_illustrator (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_illustratorgeneral; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.books_illustratorgeneral (id, general_id, illustrator_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	general
11	books	illustrator
12	books	illustratorgeneral
13	token_blacklist	blacklistedtoken
14	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:31:14.674717+00
2	auth	0001_initial	2022-04-12 20:31:14.743142+00
3	admin	0001_initial	2022-04-12 20:31:14.762062+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:31:14.767986+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:31:14.773723+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:31:14.785904+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:31:14.79185+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:31:14.798201+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:31:14.803875+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:31:14.809601+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:31:14.811111+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:31:14.816716+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:31:14.826098+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:31:14.833107+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:31:14.84002+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:31:14.845599+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:31:14.851569+00
18	books	0001_initial	2022-04-12 20:31:14.879251+00
19	books	0002_general_illustrator_illustratorgeneral_and_more	2022-04-12 20:31:14.906503+00
20	sessions	0001_initial	2022-04-12 20:31:14.918484+00
21	token_blacklist	0001_initial	2022-04-12 20:31:14.949992+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:31:14.956571+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:31:14.966857+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:31:14.978272+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:31:14.986335+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:31:14.994079+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:31:15.015769+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:31:15.055099+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:31:15.068259+00
30	token_blacklist	0011_linearizes_history	2022-04-12 20:31:15.070363+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:31:15.07734+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: francisco_elisea
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTU1MiwiaWF0IjoxNjQ5ODAzMTUyLCJqdGkiOiIzNGQ1MDcyN2Y4NDU0MWNiOWYxMGRiYzM5OWY3ZmEwYyIsInVzZXJfaWQiOjF9.pweiES1UP1VhoZiW1BEVzYsi8fap-mH--czhrUaqDGc	2022-04-12 22:39:12.153535+00	2022-04-13 22:39:12+00	1	34d50727f84541cb9f10dbc399f7fa0c
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTYyNiwiaWF0IjoxNjQ5ODE5MjI2LCJqdGkiOiIyZDIxYjI1MjExNjY0YjEwOTBlNjUwNjhmMjY4YWUxNCIsInVzZXJfaWQiOjN9.5EJqdjFdiF46wBjkUqfYysbAySVxZuhQDDs_0dd-x74	2022-04-13 03:07:06.112264+00	2022-04-14 03:07:06+00	3	2d21b25211664b1090e65068f268ae14
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0NDY1NiwiaWF0IjoxNjQ5ODU4MjU2LCJqdGkiOiI1NjQyMGQ0YTY5N2M0YTFhOWEzMGE4MjZiZjIxOTY1YyIsInVzZXJfaWQiOjN9.EjH4h6oDMchZA1cQBkwgLM8GVr2ld86wfrUU3HDwEqY	2022-04-13 13:57:36.999414+00	2022-04-14 13:57:36+00	3	56420d4a697c4a1a9a30a826bf21965c
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTk0OTM3NCwiaWF0IjoxNjQ5ODYyOTc0LCJqdGkiOiJkNWU1MGUxMzVjMTg0YjYzODFlNTU2ZDg0Njc3OThjMCIsInVzZXJfaWQiOjN9.s_9vpIPxvBaurRD9c2NhwFGRIxZl3nQLhG_QNWkEMWs	2022-04-13 15:16:14.093769+00	2022-04-14 15:16:14+00	3	d5e50e135c184b6381e556d8467798c0
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_general_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_general_id_seq', 1, false);


--
-- Name: books_illustrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_illustrator_id_seq', 1, false);


--
-- Name: books_illustratorgeneral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.books_illustratorgeneral_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: francisco_elisea
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_general books_general_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_general
    ADD CONSTRAINT books_general_pkey PRIMARY KEY (id);


--
-- Name: books_illustrator books_illustrator_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustrator
    ADD CONSTRAINT books_illustrator_pkey PRIMARY KEY (id);


--
-- Name: books_illustratorgeneral books_illustratorgeneral_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustratorgeneral
    ADD CONSTRAINT books_illustratorgeneral_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_illustratorgeneral_general_id_95ba23a2; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX books_illustratorgeneral_general_id_95ba23a2 ON public.books_illustratorgeneral USING btree (general_id);


--
-- Name: books_illustratorgeneral_illustrator_id_7c5a1678; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX books_illustratorgeneral_illustrator_id_7c5a1678 ON public.books_illustratorgeneral USING btree (illustrator_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: francisco_elisea
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_illustratorgeneral books_illustratorgen_general_id_95ba23a2_fk_books_gen; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustratorgeneral
    ADD CONSTRAINT books_illustratorgen_general_id_95ba23a2_fk_books_gen FOREIGN KEY (general_id) REFERENCES public.books_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_illustratorgeneral books_illustratorgen_illustrator_id_7c5a1678_fk_books_ill; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.books_illustratorgeneral
    ADD CONSTRAINT books_illustratorgen_illustrator_id_7c5a1678_fk_books_ill FOREIGN KEY (illustrator_id) REFERENCES public.books_illustrator(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: francisco_elisea
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

