--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO root;

--
-- Name: professor_areaofinterest; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_areaofinterest (
    id integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    aoi character varying(100) NOT NULL
);


ALTER TABLE public.professor_areaofinterest OWNER TO root;

--
-- Name: professor_areaofinterest_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE professor_areaofinterest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_areaofinterest_id_seq OWNER TO root;

--
-- Name: professor_areaofinterest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE professor_areaofinterest_id_seq OWNED BY professor_areaofinterest.id;


--
-- Name: professor_deptseligible; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_deptseligible (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    "deptName" character varying(255) NOT NULL
);


ALTER TABLE public.professor_deptseligible OWNER TO root;

--
-- Name: professor_deptseligible_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE professor_deptseligible_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_deptseligible_id_seq OWNER TO root;

--
-- Name: professor_deptseligible_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE professor_deptseligible_id_seq OWNED BY professor_deptseligible.id;


--
-- Name: professor_projectmembers; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_projectmembers (
    id integer NOT NULL,
    "pId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL
);


ALTER TABLE public.professor_projectmembers OWNER TO root;

--
-- Name: professor_projectmembers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE professor_projectmembers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_projectmembers_id_seq OWNER TO root;

--
-- Name: professor_projectmembers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE professor_projectmembers_id_seq OWNED BY professor_projectmembers.id;


--
-- Name: professor_projects; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_projects (
    "pId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    status character varying(1) NOT NULL
);


ALTER TABLE public.professor_projects OWNER TO root;

--
-- Name: professor_proposedproject; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_proposedproject (
    "ppId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    "choiceOfProposal" character varying(1) NOT NULL
);


ALTER TABLE public.professor_proposedproject OWNER TO root;

--
-- Name: professor_proposedproject_ppId_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE "professor_proposedproject_ppId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."professor_proposedproject_ppId_seq" OWNER TO root;

--
-- Name: professor_proposedproject_ppId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE "professor_proposedproject_ppId_seq" OWNED BY professor_proposedproject."ppId";


--
-- Name: professor_studentsapplied; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_studentsapplied (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL,
    synopsis text NOT NULL
);


ALTER TABLE public.professor_studentsapplied OWNER TO root;

--
-- Name: professor_studentsapplied_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE professor_studentsapplied_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_studentsapplied_id_seq OWNER TO root;

--
-- Name: professor_studentsapplied_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE professor_studentsapplied_id_seq OWNED BY professor_studentsapplied.id;


--
-- Name: professor_teacher; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE professor_teacher (
    "tId" character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    phone character varying(10) NOT NULL
);


ALTER TABLE public.professor_teacher OWNER TO root;

--
-- Name: student_student; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE student_student (
    usn character varying(10) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    sem integer NOT NULL,
    phone character varying(10) NOT NULL,
    cgpa character varying(6) NOT NULL
);


ALTER TABLE public.student_student OWNER TO root;

--
-- Name: student_users; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE student_users (
    email character varying(254) NOT NULL,
    password character varying(254) NOT NULL,
    "accountType" character varying(1) NOT NULL
);


ALTER TABLE public.student_users OWNER TO root;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_areaofinterest ALTER COLUMN id SET DEFAULT nextval('professor_areaofinterest_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_deptseligible ALTER COLUMN id SET DEFAULT nextval('professor_deptseligible_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_projectmembers ALTER COLUMN id SET DEFAULT nextval('professor_projectmembers_id_seq'::regclass);


--
-- Name: ppId; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_proposedproject ALTER COLUMN "ppId" SET DEFAULT nextval('"professor_proposedproject_ppId_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_studentsapplied ALTER COLUMN id SET DEFAULT nextval('professor_studentsapplied_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add users	7	add_users
20	Can change users	7	change_users
21	Can delete users	7	delete_users
22	Can add student	8	add_student
23	Can change student	8	change_student
24	Can delete student	8	delete_student
25	Can add teacher	9	add_teacher
26	Can change teacher	9	change_teacher
27	Can delete teacher	9	delete_teacher
28	Can add projects	10	add_projects
29	Can change projects	10	change_projects
30	Can delete projects	10	delete_projects
31	Can add proposed project	11	add_proposedproject
32	Can change proposed project	11	change_proposedproject
33	Can delete proposed project	11	delete_proposedproject
34	Can add depts eligible	12	add_deptseligible
35	Can change depts eligible	12	change_deptseligible
36	Can delete depts eligible	12	delete_deptseligible
37	Can add project members	13	add_projectmembers
38	Can change project members	13	change_projectmembers
39	Can delete project members	13	delete_projectmembers
40	Can add students applied	14	add_studentsapplied
41	Can change students applied	14	change_studentsapplied
42	Can delete students applied	14	delete_studentsapplied
43	Can add area of interest	15	add_areaofinterest
44	Can change area of interest	15	change_areaofinterest
45	Can delete area of interest	15	delete_areaofinterest
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_permission_id_seq', 45, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$4xtcFaUE0Wia$89ozl+Jlr0fBqMmSF5TnuQzOgQhOMXzitSy+g+cafR4=	2015-03-31 21:23:57.848932+05:30	t	admin			admin@prms.com	t	t	2015-03-31 21:23:57.848932+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	users	student	users
8	student	student	student
9	teacher	professor	teacher
10	projects	professor	projects
11	proposed project	professor	proposedproject
12	depts eligible	professor	deptseligible
13	project members	professor	projectmembers
14	students applied	professor	studentsapplied
15	area of interest	professor	areaofinterest
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_content_type_id_seq', 15, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-03-31 21:23:43.699231+05:30
2	auth	0001_initial	2015-03-31 21:23:44.765395+05:30
3	admin	0001_initial	2015-03-31 21:23:45.010878+05:30
4	sessions	0001_initial	2015-03-31 21:23:45.188214+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_migrations_id_seq', 4, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: professor_areaofinterest; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_areaofinterest (id, "tId_id", aoi) FROM stdin;
0	1	NLP
1	1	ML
2	1	CN
\.


--
-- Name: professor_areaofinterest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('professor_areaofinterest_id_seq', 1, false);


--
-- Data for Name: professor_deptseligible; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_deptseligible (id, "ppId_id", "deptName") FROM stdin;
\.


--
-- Name: professor_deptseligible_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('professor_deptseligible_id_seq', 1, false);


--
-- Data for Name: professor_projectmembers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_projectmembers (id, "pId_id", usn_id) FROM stdin;
\.


--
-- Name: professor_projectmembers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('professor_projectmembers_id_seq', 1, false);


--
-- Data for Name: professor_projects; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_projects ("pId", "tId_id", "teamSize", "projectName", "domainName", synopsis, status) FROM stdin;
\.


--
-- Data for Name: professor_proposedproject; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_proposedproject ("ppId", "tId_id", "teamSize", "projectName", "domainName", synopsis, "choiceOfProposal") FROM stdin;
\.


--
-- Name: professor_proposedproject_ppId_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('"professor_proposedproject_ppId_seq"', 1, false);


--
-- Data for Name: professor_studentsapplied; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_studentsapplied (id, "ppId_id", usn_id, synopsis) FROM stdin;
\.


--
-- Name: professor_studentsapplied_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('professor_studentsapplied_id_seq', 1, false);


--
-- Data for Name: professor_teacher; Type: TABLE DATA; Schema: public; Owner: root
--

COPY professor_teacher ("tId", name, email_id, "domainName", "deptName", phone) FROM stdin;
1	Nagesh	t1@gmail.com	CCBD	CSE	12938129
\.


--
-- Data for Name: student_student; Type: TABLE DATA; Schema: public; Owner: root
--

COPY student_student (usn, name, email_id, "deptName", sem, phone, cgpa) FROM stdin;
\.


--
-- Data for Name: student_users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY student_users (email, password, "accountType") FROM stdin;
t1@gmail.com	abcd	T
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: professor_areaofinterest_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT professor_areaofinterest_pkey PRIMARY KEY (id);


--
-- Name: professor_deptseligible_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT professor_deptseligible_pkey PRIMARY KEY (id);


--
-- Name: professor_projectmembers_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_pkey PRIMARY KEY (id);


--
-- Name: professor_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT professor_projects_pkey PRIMARY KEY ("pId");


--
-- Name: professor_proposedproject_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT professor_proposedproject_pkey PRIMARY KEY ("ppId");


--
-- Name: professor_studentsapplied_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_pkey PRIMARY KEY (id);


--
-- Name: professor_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_pkey PRIMARY KEY ("tId");


--
-- Name: student_student_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY (usn);


--
-- Name: student_users_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY student_users
    ADD CONSTRAINT student_users_pkey PRIMARY KEY (email);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: professor_areaofinterest_tId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_areaofinterest_tId_id" ON professor_areaofinterest USING btree ("tId_id");


--
-- Name: professor_areaofinterest_tId_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_areaofinterest_tId_id_like" ON professor_areaofinterest USING btree ("tId_id" varchar_pattern_ops);


--
-- Name: professor_deptseligible_ppId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_deptseligible_ppId_id" ON professor_deptseligible USING btree ("ppId_id");


--
-- Name: professor_projectmembers_pId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_projectmembers_pId_id" ON professor_projectmembers USING btree ("pId_id");


--
-- Name: professor_projectmembers_usn_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_projectmembers_usn_id ON professor_projectmembers USING btree (usn_id);


--
-- Name: professor_projectmembers_usn_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_projectmembers_usn_id_like ON professor_projectmembers USING btree (usn_id varchar_pattern_ops);


--
-- Name: professor_projects_tId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_projects_tId_id" ON professor_projects USING btree ("tId_id");


--
-- Name: professor_projects_tId_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_projects_tId_id_like" ON professor_projects USING btree ("tId_id" varchar_pattern_ops);


--
-- Name: professor_proposedproject_tId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_proposedproject_tId_id" ON professor_proposedproject USING btree ("tId_id");


--
-- Name: professor_proposedproject_tId_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_proposedproject_tId_id_like" ON professor_proposedproject USING btree ("tId_id" varchar_pattern_ops);


--
-- Name: professor_studentsapplied_ppId_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_studentsapplied_ppId_id" ON professor_studentsapplied USING btree ("ppId_id");


--
-- Name: professor_studentsapplied_usn_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_studentsapplied_usn_id ON professor_studentsapplied USING btree (usn_id);


--
-- Name: professor_studentsapplied_usn_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_studentsapplied_usn_id_like ON professor_studentsapplied USING btree (usn_id varchar_pattern_ops);


--
-- Name: professor_teacher_email_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_teacher_email_id ON professor_teacher USING btree (email_id);


--
-- Name: professor_teacher_email_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX professor_teacher_email_id_like ON professor_teacher USING btree (email_id varchar_pattern_ops);


--
-- Name: professor_teacher_tId_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX "professor_teacher_tId_like" ON professor_teacher USING btree ("tId" varchar_pattern_ops);


--
-- Name: student_student_email_id; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX student_student_email_id ON student_student USING btree (email_id);


--
-- Name: student_student_email_id_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX student_student_email_id_like ON student_student USING btree (email_id varchar_pattern_ops);


--
-- Name: student_student_usn_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX student_student_usn_like ON student_student USING btree (usn varchar_pattern_ops);


--
-- Name: student_users_email_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX student_users_email_like ON student_users USING btree (email varchar_pattern_ops);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_areaofinterest_tId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT "professor_areaofinterest_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_deptseligible_ppId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT "professor_deptseligible_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_projectmembers_pId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT "professor_projectmembers_pId_id_fkey" FOREIGN KEY ("pId_id") REFERENCES professor_projects("pId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_projectmembers_usn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_projects_tId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT "professor_projects_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_proposedproject_tId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT "professor_proposedproject_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_studentsapplied_ppId_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT "professor_studentsapplied_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_studentsapplied_usn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: professor_teacher_email_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: student_student_email_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

