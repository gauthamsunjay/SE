PGDMP     "                    s            se3    9.1.14    9.1.14 �    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    19523    se3    DATABASE     u   CREATE DATABASE se3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE se3;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11681    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    200            �            1259    19524 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    6            �            1259    19527    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    6    161            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    162            �            1259    19529    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    6            �            1259    19532    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    6    163            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    164            �            1259    19534    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    6            �            1259    19537    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    6    165            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    166            �            1259    19539 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false    6            �            1259    19542    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    6            �            1259    19545    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    6    168            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    169            �            1259    19547    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    6    167            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    170            �            1259    19549    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    6            �            1259    19552 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    171    6            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    172            �            1259    19554    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    1924    6            �            1259    19561    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    173    6            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    174            �            1259    19563    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    6            �            1259    19566    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    175    6            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    176            �            1259    19568    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    6            �            1259    19574    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    177    6            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    178            �            1259    19576    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    6            �            1259    19582    professor_areaofinterest    TABLE     �   CREATE TABLE professor_areaofinterest (
    id integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    aoi character varying(100) NOT NULL
);
 ,   DROP TABLE public.professor_areaofinterest;
       public         postgres    false    6            �            1259    19585    professor_areaofinterest_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_areaofinterest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.professor_areaofinterest_id_seq;
       public       postgres    false    180    6            �           0    0    professor_areaofinterest_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE professor_areaofinterest_id_seq OWNED BY professor_areaofinterest.id;
            public       postgres    false    181            �            1259    19587    professor_deptseligible    TABLE     �   CREATE TABLE professor_deptseligible (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    "deptName" character varying(255) NOT NULL
);
 +   DROP TABLE public.professor_deptseligible;
       public         postgres    false    6            �            1259    19590    professor_deptseligible_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_deptseligible_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.professor_deptseligible_id_seq;
       public       postgres    false    6    182            �           0    0    professor_deptseligible_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE professor_deptseligible_id_seq OWNED BY professor_deptseligible.id;
            public       postgres    false    183            �            1259    19870    professor_gitlinks    TABLE     n   CREATE TABLE professor_gitlinks (
    "pId_id" integer NOT NULL,
    link character varying(2048) NOT NULL
);
 &   DROP TABLE public.professor_gitlinks;
       public         root    false    6            �            1259    19592    professor_projectmembers    TABLE     �   CREATE TABLE professor_projectmembers (
    id integer NOT NULL,
    "pId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL
);
 ,   DROP TABLE public.professor_projectmembers;
       public         postgres    false    6            �            1259    19595    professor_projectmembers_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_projectmembers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.professor_projectmembers_id_seq;
       public       postgres    false    6    184            �           0    0    professor_projectmembers_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE professor_projectmembers_id_seq OWNED BY professor_projectmembers.id;
            public       postgres    false    185            �            1259    19597    professor_projects    TABLE     ;  CREATE TABLE professor_projects (
    "pId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    status character varying(1) NOT NULL
);
 &   DROP TABLE public.professor_projects;
       public         postgres    false    6            �            1259    19603    professor_proposedproject    TABLE     O  CREATE TABLE professor_proposedproject (
    "ppId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    "choiceOfProposal" character varying(1) NOT NULL
);
 -   DROP TABLE public.professor_proposedproject;
       public         postgres    false    6            �            1259    19609 "   professor_proposedproject_ppId_seq    SEQUENCE     �   CREATE SEQUENCE "professor_proposedproject_ppId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."professor_proposedproject_ppId_seq";
       public       postgres    false    187    6            �           0    0 "   professor_proposedproject_ppId_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "professor_proposedproject_ppId_seq" OWNED BY professor_proposedproject."ppId";
            public       postgres    false    188            �            1259    19611    professor_studentsapplied    TABLE     �   CREATE TABLE professor_studentsapplied (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL,
    synopsis text NOT NULL
);
 -   DROP TABLE public.professor_studentsapplied;
       public         postgres    false    6            �            1259    19617     professor_studentsapplied_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_studentsapplied_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.professor_studentsapplied_id_seq;
       public       postgres    false    189    6            �           0    0     professor_studentsapplied_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE professor_studentsapplied_id_seq OWNED BY professor_studentsapplied.id;
            public       postgres    false    190            �            1259    19914    professor_studomainapp    TABLE     �   CREATE TABLE professor_studomainapp (
    id integer NOT NULL,
    usn_id character varying(10) NOT NULL,
    "domainName" character varying(255) NOT NULL
);
 *   DROP TABLE public.professor_studomainapp;
       public         root    false    6            �            1259    19912    professor_studomainapp_id_seq    SEQUENCE        CREATE SEQUENCE professor_studomainapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.professor_studomainapp_id_seq;
       public       root    false    6    199            �           0    0    professor_studomainapp_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE professor_studomainapp_id_seq OWNED BY professor_studomainapp.id;
            public       root    false    198            �            1259    19619    professor_teacher    TABLE     2  CREATE TABLE professor_teacher (
    "tId" character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    phone character varying(10) NOT NULL
);
 %   DROP TABLE public.professor_teacher;
       public         postgres    false    6            �            1259    19842 
   repo_files    TABLE     �   CREATE TABLE repo_files (
    id integer NOT NULL,
    "pId_id" integer NOT NULL,
    "filePath" character varying(512) NOT NULL
);
    DROP TABLE public.repo_files;
       public         root    false    6            �            1259    19840    repo_files_id_seq    SEQUENCE     s   CREATE SEQUENCE repo_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.repo_files_id_seq;
       public       root    false    195    6            �           0    0    repo_files_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE repo_files_id_seq OWNED BY repo_files.id;
            public       root    false    194            �            1259    19898    student_gitlinks    TABLE     {   CREATE TABLE student_gitlinks (
    email_id character varying(254) NOT NULL,
    link character varying(2048) NOT NULL
);
 $   DROP TABLE public.student_gitlinks;
       public         root    false    6            �            1259    19625    student_student    TABLE     =  CREATE TABLE student_student (
    usn character varying(10) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    sem integer NOT NULL,
    phone character varying(10) NOT NULL,
    cgpa character varying(6) NOT NULL
);
 #   DROP TABLE public.student_student;
       public         postgres    false    6            �            1259    19631    student_users    TABLE     �   CREATE TABLE student_users (
    email character varying(254) NOT NULL,
    password character varying(254) NOT NULL,
    "accountType" character varying(1) NOT NULL
);
 !   DROP TABLE public.student_users;
       public         postgres    false    6            }           2604    19637    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    162    161            ~           2604    19638    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    164    163                       2604    19639    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    166    165            �           2604    19640    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    170    167            �           2604    19641    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    169    168            �           2604    19642    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    171            �           2604    19643    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173            �           2604    19644    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    175            �           2604    19645    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    177            �           2604    19646    id    DEFAULT     |   ALTER TABLE ONLY professor_areaofinterest ALTER COLUMN id SET DEFAULT nextval('professor_areaofinterest_id_seq'::regclass);
 J   ALTER TABLE public.professor_areaofinterest ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    181    180            �           2604    19647    id    DEFAULT     z   ALTER TABLE ONLY professor_deptseligible ALTER COLUMN id SET DEFAULT nextval('professor_deptseligible_id_seq'::regclass);
 I   ALTER TABLE public.professor_deptseligible ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182            �           2604    19648    id    DEFAULT     |   ALTER TABLE ONLY professor_projectmembers ALTER COLUMN id SET DEFAULT nextval('professor_projectmembers_id_seq'::regclass);
 J   ALTER TABLE public.professor_projectmembers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    184            �           2604    19649    ppId    DEFAULT     �   ALTER TABLE ONLY professor_proposedproject ALTER COLUMN "ppId" SET DEFAULT nextval('"professor_proposedproject_ppId_seq"'::regclass);
 O   ALTER TABLE public.professor_proposedproject ALTER COLUMN "ppId" DROP DEFAULT;
       public       postgres    false    188    187            �           2604    19650    id    DEFAULT     ~   ALTER TABLE ONLY professor_studentsapplied ALTER COLUMN id SET DEFAULT nextval('professor_studentsapplied_id_seq'::regclass);
 K   ALTER TABLE public.professor_studentsapplied ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            �           2604    19917    id    DEFAULT     x   ALTER TABLE ONLY professor_studomainapp ALTER COLUMN id SET DEFAULT nextval('professor_studomainapp_id_seq'::regclass);
 H   ALTER TABLE public.professor_studomainapp ALTER COLUMN id DROP DEFAULT;
       public       root    false    199    198    199            �           2604    19845    id    DEFAULT     `   ALTER TABLE ONLY repo_files ALTER COLUMN id SET DEFAULT nextval('repo_files_id_seq'::regclass);
 <   ALTER TABLE public.repo_files ALTER COLUMN id DROP DEFAULT;
       public       root    false    194    195    195            h          0    19524 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    161    2191   ^      �           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    162            j          0    19529    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    163    2191   {      �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    164            l          0    19534    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    165    2191   �      �           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 60, true);
            public       postgres    false    166            n          0    19539 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    167    2191         o          0    19542    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    168    2191   �      �           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    169            �           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    170            r          0    19549    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    171    2191   �      �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    172            t          0    19554    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    173    2191   �      �           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public       postgres    false    174            v          0    19563    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       postgres    false    175    2191         �           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 20, true);
            public       postgres    false    176            x          0    19568    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    177    2191   6      �           0    0    django_migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_migrations_id_seq', 4, true);
            public       postgres    false    178            z          0    19576    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    179    2191   �      {          0    19582    professor_areaofinterest 
   TABLE DATA               >   COPY professor_areaofinterest (id, "tId_id", aoi) FROM stdin;
    public       postgres    false    180    2191   �	      �           0    0    professor_areaofinterest_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('professor_areaofinterest_id_seq', 54, true);
            public       postgres    false    181            }          0    19587    professor_deptseligible 
   TABLE DATA               E   COPY professor_deptseligible (id, "ppId_id", "deptName") FROM stdin;
    public       postgres    false    182    2191   �      �           0    0    professor_deptseligible_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('professor_deptseligible_id_seq', 18, true);
            public       postgres    false    183            �          0    19870    professor_gitlinks 
   TABLE DATA               5   COPY professor_gitlinks ("pId_id", link) FROM stdin;
    public       root    false    196    2191   �                0    19592    professor_projectmembers 
   TABLE DATA               A   COPY professor_projectmembers (id, "pId_id", usn_id) FROM stdin;
    public       postgres    false    184    2191   �      �           0    0    professor_projectmembers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('professor_projectmembers_id_seq', 29, true);
            public       postgres    false    185            �          0    19597    professor_projects 
   TABLE DATA               q   COPY professor_projects ("pId", "tId_id", "teamSize", "projectName", "domainName", synopsis, status) FROM stdin;
    public       postgres    false    186    2191         �          0    19603    professor_proposedproject 
   TABLE DATA               �   COPY professor_proposedproject ("ppId", "tId_id", "teamSize", "projectName", "domainName", synopsis, "choiceOfProposal") FROM stdin;
    public       postgres    false    187    2191   =      �           0    0 "   professor_proposedproject_ppId_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"professor_proposedproject_ppId_seq"', 1, false);
            public       postgres    false    188            �          0    19611    professor_studentsapplied 
   TABLE DATA               M   COPY professor_studentsapplied (id, "ppId_id", usn_id, synopsis) FROM stdin;
    public       postgres    false    189    2191   �      �           0    0     professor_studentsapplied_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('professor_studentsapplied_id_seq', 29, true);
            public       postgres    false    190            �          0    19914    professor_studomainapp 
   TABLE DATA               C   COPY professor_studomainapp (id, usn_id, "domainName") FROM stdin;
    public       root    false    199    2191   )      �           0    0    professor_studomainapp_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('professor_studomainapp_id_seq', 6, true);
            public       root    false    198            �          0    19619    professor_teacher 
   TABLE DATA               \   COPY professor_teacher ("tId", name, email_id, "domainName", "deptName", phone) FROM stdin;
    public       postgres    false    191    2191   �      �          0    19842 
   repo_files 
   TABLE DATA               7   COPY repo_files (id, "pId_id", "filePath") FROM stdin;
    public       root    false    195    2191         �           0    0    repo_files_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('repo_files_id_seq', 4, true);
            public       root    false    194            �          0    19898    student_gitlinks 
   TABLE DATA               3   COPY student_gitlinks (email_id, link) FROM stdin;
    public       root    false    197    2191   �      �          0    19625    student_student 
   TABLE DATA               U   COPY student_student (usn, name, email_id, "deptName", sem, phone, cgpa) FROM stdin;
    public       postgres    false    192    2191          �          0    19631    student_users 
   TABLE DATA               @   COPY student_users (email, password, "accountType") FROM stdin;
    public       postgres    false    193    2191   D5      �           2606    19652    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    161    161    2192            �           2606    19654 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    163    163    163    2192            �           2606    19656    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    163    163    2192            �           2606    19658    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    161    161    2192            �           2606    19660 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    165    165    165    2192            �           2606    19662    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    165    165    2192            �           2606    19664    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    168    168    2192            �           2606    19666 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    168    168    168    2192            �           2606    19668    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    167    167    2192            �           2606    19670    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    171    171    2192            �           2606    19672 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    171    171    171    2192            �           2606    19674    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    167    167    2192            �           2606    19676    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    173    173    2192            �           2606    19678 3   django_content_type_app_label_45f3b1d93ec8c61c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
       public         postgres    false    175    175    175    2192            �           2606    19680    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    175    175    2192            �           2606    19682    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    177    177    2192            �           2606    19684    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    179    179    2192            �           2606    19686    professor_areaofinterest_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT professor_areaofinterest_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.professor_areaofinterest DROP CONSTRAINT professor_areaofinterest_pkey;
       public         postgres    false    180    180    2192            �           2606    19688    professor_deptseligible_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT professor_deptseligible_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.professor_deptseligible DROP CONSTRAINT professor_deptseligible_pkey;
       public         postgres    false    182    182    2192            �           2606    19877    professor_gitlinks_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY professor_gitlinks
    ADD CONSTRAINT professor_gitlinks_pkey PRIMARY KEY ("pId_id");
 T   ALTER TABLE ONLY public.professor_gitlinks DROP CONSTRAINT professor_gitlinks_pkey;
       public         root    false    196    196    2192            �           2606    19690    professor_projectmembers_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT professor_projectmembers_pkey;
       public         postgres    false    184    184    2192            �           2606    19692    professor_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT professor_projects_pkey PRIMARY KEY ("pId");
 T   ALTER TABLE ONLY public.professor_projects DROP CONSTRAINT professor_projects_pkey;
       public         postgres    false    186    186    2192            �           2606    19694    professor_proposedproject_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT professor_proposedproject_pkey PRIMARY KEY ("ppId");
 b   ALTER TABLE ONLY public.professor_proposedproject DROP CONSTRAINT professor_proposedproject_pkey;
       public         postgres    false    187    187    2192            �           2606    19696    professor_studentsapplied_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT professor_studentsapplied_pkey;
       public         postgres    false    189    189    2192            �           2606    19919    professor_studomainapp_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY professor_studomainapp
    ADD CONSTRAINT professor_studomainapp_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.professor_studomainapp DROP CONSTRAINT professor_studomainapp_pkey;
       public         root    false    199    199    2192            �           2606    19698    professor_teacher_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_pkey PRIMARY KEY ("tId");
 R   ALTER TABLE ONLY public.professor_teacher DROP CONSTRAINT professor_teacher_pkey;
       public         postgres    false    191    191    2192            �           2606    19850    repo_files_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY repo_files
    ADD CONSTRAINT repo_files_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.repo_files DROP CONSTRAINT repo_files_pkey;
       public         root    false    195    195    2192            �           2606    19905    student_gitlinks_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY student_gitlinks
    ADD CONSTRAINT student_gitlinks_pkey PRIMARY KEY (email_id);
 P   ALTER TABLE ONLY public.student_gitlinks DROP CONSTRAINT student_gitlinks_pkey;
       public         root    false    197    197    2192            �           2606    19700    student_student_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY (usn);
 N   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_pkey;
       public         postgres    false    192    192    2192            �           2606    19702    student_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY student_users
    ADD CONSTRAINT student_users_pkey PRIMARY KEY (email);
 J   ALTER TABLE ONLY public.student_users DROP CONSTRAINT student_users_pkey;
       public         postgres    false    193    193    2192            �           1259    19703    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    163    2192            �           1259    19704    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    163    2192            �           1259    19705    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    165    2192            �           1259    19706    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    168    2192            �           1259    19707    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    168    2192            �           1259    19708 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    171    2192            �           1259    19709 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    171    2192            �           1259    19710    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    173    2192            �           1259    19711    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    173    2192            �           1259    19712    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    179    2192            �           1259    19713    professor_areaofinterest_tId_id    INDEX     c   CREATE INDEX "professor_areaofinterest_tId_id" ON professor_areaofinterest USING btree ("tId_id");
 5   DROP INDEX public."professor_areaofinterest_tId_id";
       public         postgres    false    180    2192            �           1259    19714 $   professor_areaofinterest_tId_id_like    INDEX     |   CREATE INDEX "professor_areaofinterest_tId_id_like" ON professor_areaofinterest USING btree ("tId_id" varchar_pattern_ops);
 :   DROP INDEX public."professor_areaofinterest_tId_id_like";
       public         postgres    false    180    2192            �           1259    19715    professor_deptseligible_ppId_id    INDEX     c   CREATE INDEX "professor_deptseligible_ppId_id" ON professor_deptseligible USING btree ("ppId_id");
 5   DROP INDEX public."professor_deptseligible_ppId_id";
       public         postgres    false    182    2192            �           1259    19716    professor_projectmembers_pId_id    INDEX     c   CREATE INDEX "professor_projectmembers_pId_id" ON professor_projectmembers USING btree ("pId_id");
 5   DROP INDEX public."professor_projectmembers_pId_id";
       public         postgres    false    184    2192            �           1259    19717    professor_projectmembers_usn_id    INDEX     _   CREATE INDEX professor_projectmembers_usn_id ON professor_projectmembers USING btree (usn_id);
 3   DROP INDEX public.professor_projectmembers_usn_id;
       public         postgres    false    184    2192            �           1259    19718 $   professor_projectmembers_usn_id_like    INDEX     x   CREATE INDEX professor_projectmembers_usn_id_like ON professor_projectmembers USING btree (usn_id varchar_pattern_ops);
 8   DROP INDEX public.professor_projectmembers_usn_id_like;
       public         postgres    false    184    2192            �           1259    19719    professor_projects_tId_id    INDEX     W   CREATE INDEX "professor_projects_tId_id" ON professor_projects USING btree ("tId_id");
 /   DROP INDEX public."professor_projects_tId_id";
       public         postgres    false    186    2192            �           1259    19720    professor_projects_tId_id_like    INDEX     p   CREATE INDEX "professor_projects_tId_id_like" ON professor_projects USING btree ("tId_id" varchar_pattern_ops);
 4   DROP INDEX public."professor_projects_tId_id_like";
       public         postgres    false    186    2192            �           1259    19721     professor_proposedproject_tId_id    INDEX     e   CREATE INDEX "professor_proposedproject_tId_id" ON professor_proposedproject USING btree ("tId_id");
 6   DROP INDEX public."professor_proposedproject_tId_id";
       public         postgres    false    187    2192            �           1259    19722 %   professor_proposedproject_tId_id_like    INDEX     ~   CREATE INDEX "professor_proposedproject_tId_id_like" ON professor_proposedproject USING btree ("tId_id" varchar_pattern_ops);
 ;   DROP INDEX public."professor_proposedproject_tId_id_like";
       public         postgres    false    187    2192            �           1259    19723 !   professor_studentsapplied_ppId_id    INDEX     g   CREATE INDEX "professor_studentsapplied_ppId_id" ON professor_studentsapplied USING btree ("ppId_id");
 7   DROP INDEX public."professor_studentsapplied_ppId_id";
       public         postgres    false    189    2192            �           1259    19724     professor_studentsapplied_usn_id    INDEX     a   CREATE INDEX professor_studentsapplied_usn_id ON professor_studentsapplied USING btree (usn_id);
 4   DROP INDEX public.professor_studentsapplied_usn_id;
       public         postgres    false    189    2192            �           1259    19725 %   professor_studentsapplied_usn_id_like    INDEX     z   CREATE INDEX professor_studentsapplied_usn_id_like ON professor_studentsapplied USING btree (usn_id varchar_pattern_ops);
 9   DROP INDEX public.professor_studentsapplied_usn_id_like;
       public         postgres    false    189    2192            �           1259    19925    professor_studomainapp_usn_id    INDEX     [   CREATE INDEX professor_studomainapp_usn_id ON professor_studomainapp USING btree (usn_id);
 1   DROP INDEX public.professor_studomainapp_usn_id;
       public         root    false    199    2192            �           1259    19926 "   professor_studomainapp_usn_id_like    INDEX     t   CREATE INDEX professor_studomainapp_usn_id_like ON professor_studomainapp USING btree (usn_id varchar_pattern_ops);
 6   DROP INDEX public.professor_studomainapp_usn_id_like;
       public         root    false    199    2192            �           1259    19726    professor_teacher_email_id    INDEX     U   CREATE INDEX professor_teacher_email_id ON professor_teacher USING btree (email_id);
 .   DROP INDEX public.professor_teacher_email_id;
       public         postgres    false    191    2192            �           1259    19727    professor_teacher_email_id_like    INDEX     n   CREATE INDEX professor_teacher_email_id_like ON professor_teacher USING btree (email_id varchar_pattern_ops);
 3   DROP INDEX public.professor_teacher_email_id_like;
       public         postgres    false    191    2192            �           1259    19728    professor_teacher_tId_like    INDEX     h   CREATE INDEX "professor_teacher_tId_like" ON professor_teacher USING btree ("tId" varchar_pattern_ops);
 0   DROP INDEX public."professor_teacher_tId_like";
       public         postgres    false    191    2192            �           1259    19856    repo_files_pId_id    INDEX     G   CREATE INDEX "repo_files_pId_id" ON repo_files USING btree ("pId_id");
 '   DROP INDEX public."repo_files_pId_id";
       public         root    false    195    2192            �           1259    19911    student_gitlinks_email_id_like    INDEX     l   CREATE INDEX student_gitlinks_email_id_like ON student_gitlinks USING btree (email_id varchar_pattern_ops);
 2   DROP INDEX public.student_gitlinks_email_id_like;
       public         root    false    197    2192            �           1259    19729    student_student_email_id    INDEX     Q   CREATE INDEX student_student_email_id ON student_student USING btree (email_id);
 ,   DROP INDEX public.student_student_email_id;
       public         postgres    false    192    2192            �           1259    19730    student_student_email_id_like    INDEX     j   CREATE INDEX student_student_email_id_like ON student_student USING btree (email_id varchar_pattern_ops);
 1   DROP INDEX public.student_student_email_id_like;
       public         postgres    false    192    2192            �           1259    19731    student_student_usn_like    INDEX     `   CREATE INDEX student_student_usn_like ON student_student USING btree (usn varchar_pattern_ops);
 ,   DROP INDEX public.student_student_usn_like;
       public         postgres    false    192    2192            �           1259    19732    student_users_email_like    INDEX     `   CREATE INDEX student_users_email_like ON student_users USING btree (email varchar_pattern_ops);
 ,   DROP INDEX public.student_users_email_like;
       public         postgres    false    193    2192            �           2606    19733 ?   auth_content_type_id_508cf46651277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
       public       postgres    false    1971    165    175    2192            �           2606    19738 ?   auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
       public       postgres    false    1936    163    161    2192            �           2606    19743 ?   auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
       public       postgres    false    163    165    1947    2192            �           2606    19748 ?   auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
       public       postgres    false    165    1947    171    2192            �           2606    19753 ;   auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
       public       postgres    false    168    161    1936    2192            �           2606    19758 9   auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
       public       postgres    false    1949    167    168    2192            �           2606    19763 ?   auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
       public       postgres    false    171    1949    167    2192            �           2606    19768 ?   djan_content_type_id_697914295151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
       public       postgres    false    173    175    1971    2192            �           2606    19773 9   django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
       public       postgres    false    173    167    1949    2192            �           2606    19778 $   professor_areaofinterest_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT "professor_areaofinterest_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_areaofinterest DROP CONSTRAINT "professor_areaofinterest_tId_id_fkey";
       public       postgres    false    180    191    2005    2192            �           2606    19783 $   professor_deptseligible_ppId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT "professor_deptseligible_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.professor_deptseligible DROP CONSTRAINT "professor_deptseligible_ppId_id_fkey";
       public       postgres    false    182    1994    187    2192                        2606    19878    professor_gitlinks_pId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_gitlinks
    ADD CONSTRAINT "professor_gitlinks_pId_id_fkey" FOREIGN KEY ("pId_id") REFERENCES professor_projects("pId") DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.professor_gitlinks DROP CONSTRAINT "professor_gitlinks_pId_id_fkey";
       public       root    false    186    1990    196    2192            �           2606    19788 $   professor_projectmembers_pId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT "professor_projectmembers_pId_id_fkey" FOREIGN KEY ("pId_id") REFERENCES professor_projects("pId") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT "professor_projectmembers_pId_id_fkey";
       public       postgres    false    184    186    1990    2192            �           2606    19793 $   professor_projectmembers_usn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT professor_projectmembers_usn_id_fkey;
       public       postgres    false    184    192    2010    2192            �           2606    19798    professor_projects_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT "professor_projects_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.professor_projects DROP CONSTRAINT "professor_projects_tId_id_fkey";
       public       postgres    false    186    2005    191    2192            �           2606    19803 %   professor_proposedproject_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT "professor_proposedproject_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.professor_proposedproject DROP CONSTRAINT "professor_proposedproject_tId_id_fkey";
       public       postgres    false    2005    191    187    2192            �           2606    19808 &   professor_studentsapplied_ppId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT "professor_studentsapplied_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT "professor_studentsapplied_ppId_id_fkey";
       public       postgres    false    189    1994    187    2192            �           2606    19813 %   professor_studentsapplied_usn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT professor_studentsapplied_usn_id_fkey;
       public       postgres    false    2010    192    189    2192                       2606    19920 "   professor_studomainapp_usn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_studomainapp
    ADD CONSTRAINT professor_studomainapp_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.professor_studomainapp DROP CONSTRAINT professor_studomainapp_usn_id_fkey;
       public       root    false    199    192    2010    2192            �           2606    19818    professor_teacher_email_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.professor_teacher DROP CONSTRAINT professor_teacher_email_id_fkey;
       public       postgres    false    2014    193    191    2192            �           2606    19851    repo_files_pId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY repo_files
    ADD CONSTRAINT "repo_files_pId_id_fkey" FOREIGN KEY ("pId_id") REFERENCES professor_projects("pId") DEFERRABLE INITIALLY DEFERRED;
 M   ALTER TABLE ONLY public.repo_files DROP CONSTRAINT "repo_files_pId_id_fkey";
       public       root    false    195    1990    186    2192                       2606    19906    student_gitlinks_email_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY student_gitlinks
    ADD CONSTRAINT student_gitlinks_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.student_gitlinks DROP CONSTRAINT student_gitlinks_email_id_fkey;
       public       root    false    197    2014    193    2192            �           2606    19823    student_student_email_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_email_id_fkey;
       public       postgres    false    192    2014    193    2192            h      x������ � �      j      x������ � �      l   u  x�m�ݒ� ���)|�-���}���rZ��][-�/��!��k�w8	����%�1��g��c�J���vKY8��=,O�(�`��Q���E�B�M�ɘi]D�\c@�ԗ�`L؆Z3�	ۢ�s_ߛ(���-;�>��'z�0����m�.*���S*E�����
�= ��J���.�=���ٴ��	�ΈT�J`�d|M�R`|���O�qI�J��&�F���K�zv�F�x�Fyz��wr�Q�ɞ9Z����=�BE�+�+Y��"dBE�XE���V�ݡ�Ƿ�����J���!�R���b]�}���������,z�s-�2gG��pH*껭FcB�����e��qQ�t��L��cv\GҨ��dz���笅�s�ECP�l6]�^"bC�*��Q��Z�ү�����^De��\!��DYs�TƯ5Ȫ<m��6Oz���c ,+u�DL��)
���bB�`Qg��![���α]�$��<��W�ʊ��;�����A��.���t���Ϟ���a-+6N)���d���
�8T��Y[�OU��5���0l�"F��7���������TW�������>�l\_ô��E9>M�1Y�ɻL�U��ɓ'�hȃD��/)�98]      n   �   x�3�,H�NI3�/�H425S14200P1�(IvKu5�LT��̯����)2Hs*��v3�+��O������,	��N�NNL2��4204�50�56T02�22�25׳0��46�60�26�,�LL������E��z���@����b���� K�/�      o      x������ � �      r      x������ � �      t      x������ � �      v     x�e�Mv� ���)8A_�os�n��Z<��} ���+f�H��'A.�(=W|���@q6��;PK�w0E���W�GX��J��ޥ|�H�@�ͽ�30�]����K=)���\�:�|����H�<F�~̇���]��4$�҆Pʢ�g�b��j�%(��)$d�dn���4���z���[�Ϳ�[���n�B�`鮸E[��*�~&�f$�'.�[���Iָ��C(/0�?&R�Dy�����a�+Lh?+�ʰo�V�1~} ����e      x   x   x���K
�  ��x��Cd>N���P$*���Y��ݸ� �q֞k�on���(�����H���B7����-ZP��aHW͐���t ����:Sj���~(-�V�:=�%�܀wk��]p7�      z     x����j�@��u���K����ȦJIIIJ7I4��Ơ��\}�H���Y>����A�n�&�k�H:0��wmy�*nW;o�]�c��mU��Cr�SR�-�&ۃ��ËM��,�����qy���f��@����'��rMT�8��g�!P>�b�#�
l�'�o�d��T~IQ�(�	�~fg�^ht+��H�z����^dU�%�|Q��B���|��N�tMW�1w�~p�@w�sZvSf1���).����3q��K��>��:����F,�SJS"2=��0�?Z��^      {   �  x�u�Ko�0���_�S����ut�C4DEr酖62Q�4Hʆ�}Gvm'pzg���)R�̑u����[�ݰK"��O9��j\��Q����,
*�~��l�7ZʖÎC%����|���q����^�n�:ȥ�c/������N:r*�9=�88�̝�I�;�
R3��D2�%B��&�3���SAEj��[���jR9-\�{N����G#����d�(�ih�7[���lF�\�B�W^}ܜ"����u`�e��r��+|5��YI��h*au�,�Q���j�[:q��Ҏ�;ɢ��!P�o"�Qv��+�=�j#/�rġ�jrB���䴛1M7�B�%p����Ơ����0��S�r��ؔ���(�9�9mb�8��Q����Ō�BH/�t�!7�!�7�L��%���:�� �c���oG���G�h�<�OS'�yEQ��&EM�eyX�-wc0� �9=��L�1.�)�#]S����/�$b      }   �   x�E���0kk�@�dY���j�ٿ� ��I���ͪm��.=�Z��uH���]FP#; �MH�3�3�
jl�':����9� Oe;2 �|3�	��xf�
*�0���,��~m�fY��f��ȳ�Y���a�l�*ȇɖ-����e��ARٲE�-O_�R�!�F�      �   5   x�340��())(���O�,�(M�K���OO,-�H�-.��J��v����� [�           x�U�;n1��sC��S�rg�m��������eyȐ�|ޢ��#XN���H`���!b'X]j���/�Q��1�<����M7�)H�@&I��J</�����.�����HD���&��ڗ�e�&�=]t,XNZ�9I�.3���we�v��s�k,hN�5����̢�mw��sHd�+��.�.YW��/mk��$q�A�&�2�;�<ku�g�T�O�+�w1�`q�t��?@e^�e,��]�~�2��f��"��Œs*��~f N�z�?O ��F��      �     x��U�R9}_��R�@H�ɒ�����e_䙶G�F=�46ޯ�Ӓ�[E����n����̧fn~؜]�tϽ��rqo�9s��i�$pω���C���5m��� �ze�.��ym�8f�-�%�݌��#��ئ��E�-�K߃����d#S�LC��!���uMv�K���.�67]~kn�tf��#��gCf��j8p�Y��˷�6M76�';ܢ��ކ�hw\�}2󉙙ol}��at-�~+	.K��t�-n��к�kG�O8mzw��#�ОK#3�N[I(�>c��,��$cl��^�q�@�6[��a����\� l`<Sc3����� 2����/���˲���2��Z�udx�g�;x���rvj���ڼp�t7f���њ��|�:L���*��Wk@g�,�K���ި���@z��w���P>U �!�QFJ�ɟO�e#�!hH{�`3�Ȭ]Ok������(��'�$[��jn���� �-WZ��msi{kT�/�q�4��2���)�oSr[w�
NШ�~����^�c��~��l��~��g�!ڡ��N��^��h\xW����`H��*\G)\O�:�}ghm��ڡP���G@����9��em�`w8b��g[�>��]�l,�ЧR�͛d{U0�(2%e	v{���X:D޹y�1q�2K���bo����2��]Cvۢk�I�+LU�Q`S�N4DSg�����Q��+��e����rM� - �AO'�>(u6* �[�#㴑���޷��sv�*�F��S���T��)�����' �8�4:����2��%ZA]hZjV`453��c�.0-�HK�V6 i�Y:/�R��M�3=}�������-dWl����?��l] 
�;T�h�F!�F����Cy�'T�K��Q�*������5-��@������ι�:��+o@�!�HENQ���)M?�T\�Y�q��Ue��F�?[HX�?���O�;W���ru�Y�ʁ:@�H�E�m�Z��j����\G!ñ��W��	�S      �   �  x��V�R#9<���`	l�0��2�{w.{���n����6ޯ�,���tt�^�Y)&�5�V3���L�6�����B{�e�>����#�I�>Ĭ-mB�u�XK�{��tL��Ūcڰ�C�;��`��5�1�M�-�Ȕ���'����TC����t�ǣ�h ]����r�fL��s6�������B���R&���Q�P����1��2�[���&x��[Z���oW����!�]�8���,��
�^V�#��M�U� j=��D8	tƗ�)�%K�b�ݩOr&9���ԾR�[�����Ro���������d+��c�ur'z|Y`�M���v<����$&�Ȇm:o4���r~ۤ]oY�z�	�� ����X2D��!�͐8VȮ��m���'���|j���l��[HZ��ʣrP/wA@�^��ύWF.���5�TS����=�/���b*]������A�*_�t���:��X
��#�2 :�Q���7
N�<�~��nJ����w�rd��fW⾢͙��phSb#_�'�w���:k�C��J���-���Fh��|��q����U �B�i�sl����� E��"%6-��wN��?��x,����pho����n��<_>H�H�G�5�h%[��\*�����ռ��܆��v����bBF��N��J]���s7��Jq�Ѫ���V�2�Zb T,U�KW%d��$���Y�&ZN����V����(�Ds�,X�m���� 0o���2�8B��a*�fj">�s�ga����m��}u��m���B�=EԤ�A[[s^U�~����pL�=`�lI:���������2�H� '�b�/�MIzd�e���8Zb=�Օ�����.G�8L������D�r]�t0�\�~QS���15c�>v�� ��4(Y�C/[�kb�=�]���E����Q�i��GP`�찇�|<RcuJF>�'Z/WK���>����T�Z5���/��1�jd.� WT1{(a��qw:���)K3'�hİ�Q�o�����>�Z�Z
�P��S�u���H�⸺v�;OP�V��Sb	�n��U��t��դ�Ǩ��Q���n�r�"G�OX�z��PD�0��J2 ����8;;�_�T      �   ;  x��VM��6=��b~@Z��������.�K.�4�	S�*R����]��M�5v/��y�Fz�fH��K�������zY��ƹ6��Oe�{��G�y�������]T����=��j�
A��w����5��I�,�hC�<�~��-��Z�����ō�R�H��!r� ���Hz�eW�q���"���E_O�e']��Y�����wƀ#|�����>C4	�j<Ed���G��;�<���*(��B
=�1$��z)^��y�:-T?@�Ba���Z|0nb�{���i}������uc/�&�j.�ʗq�\՗e��2��I�N�h��CK�Fl�l�l��G�gI*��ũy��3~qj�����R�e���$�����Nw��`�AG���'"�
�ٙ3�O궮�-�E^�%$���K�I	�z�l�<��v�Ӥ�0@ث {4�����c Cif�N4b�-����y����)�)��Z6{�&iD����[�=��V�/�!㐭`;�FGZQd	O�\˓'<uu-��y��k�uO��,����A�n�#���\��$-`����� �2f���j�*y&:r�fb�W��ۑ�Y�O:��!aFG>p�A؍����+j����b��/�o�|YV/�/ٽu���V��7��KG3�+�Fy���Y�g8>��τ�dm{�L�����bn�e���Ώ�Μ&Z��מ���N��Mg���{6�jg񺢹߸os-5�S�Vs|���u������<{�zeZ�x�z<m��,.t1<�� �颸cc�a�?o��2�4��/�LDY�|�|)��_���5�      �   H   x�3�4�44r604�tvvr�2����CD��"�&����%�o�+�\��9������B��?W� ��      �   t  x�mV�r�6<��Uă$p[�j���u��r�,F�$R*>��ߧA=�,�K3��4��?�j�j���ծ�U�6�y3�W=<�?�C�D��8��Q��W�^���(\���$�����|��ݪ���v�[�2$�>[����Д���xS��]CY���$�֥��Ǿ�
6I"�L�d��w�۹��]��ڭ��t�}�)Aie)ͤ!�����J�gx_T��V��ܲpT]�:�l�(i���X�;��p���y�ڂ��Bq�ǉP:�?S�s�YW���
/�llM���J�tD/��ZvM�;zNw�ǊB�؈���+������e�'����� %������9G�KpC�ȲOi�����;5E��|��N��o����ϧ��4J5Kh��Y��~]�!��3�oط?�&�6U,&�P��+�?���-AE"���VW�`�3�蹯�βs�FH%@�M���;����\�M�s����+����S�%����3����T����BfI*���������Ʒtq�!cb#i$�eh��*������G;�P&S)An�CQ��� c�NS�+�J���zg�r?ќv��2�!���LŔ�����>�n�_{Z'R��i����cP2�!��d���2����[w�|��h�:�&A��H�/��\U�:tm�]M����h�1SQ�Y��s�Ղ���sv�
JR�c�9�����1(��`	�yiD���KC��s�z��Nm�CF����U��	���j]��gײ_��AM�ds7�Z��m:���_|DFD�(&u��G�"/������B9bCh��26LJ��꟢����tA��e>�Gtd��-\���7��!��-�O�`)2
U��;�p}!_Q��
��P"�)Dx1X�"���_�k}��4a�m�	�-;\>(kٍ����d�|���i>ú�Z����Zں���ϩ��E=�)���G⚆&��:_��`�p�������O���o��Ə��L��
NU�a6[NE�g�v��El�`d?/�	�r�@�?^Vnѫ�R��0��	&�ͷ��`�wW{��tr������������
��H��&��~��.      �   �   x���A� E��)<XMY6��ĭ�R��A����[���dR(�c}��xve���v��T_�r(x�qr���8^�(&��O��Y���rgb��i�Ֆg��!h6	?x{Z9gLsl[)Vx�� �[�      �   n   x�}�9�0D��G�PQp�($ �ܞ��2���XSC�՞���#�s���b�p��~���T@��}�yPY�0:RkQfG�i!v�80�9���|�C� .gNr      �      x��[ے�8�|���_�u�����l{��}z%�q^�-R)-/��|��,��8-h��F��l�H������p���ja��L��`i��9(#���B�l3���1S����T�g��x2�P�� ��Pc�X'��f�����'1>�D-Ȑ C2!H���R�Ib~��"5������������#<�ܜ���L!�0���G�a�3&���D�K��{S�i�����l� N8q�3,�xćĜӽ�*��^���ޏ�퇜v�`��Gz0%��j�|f���BG��:�p��ɥ��UR�yz��x����n]��:a�G��x�C�ؤ����9�2��t�Rol��s��ذ�|9ڏj�j��]74�� ��� ���). c��8�d4wGx5|���A��G���c�����8��=���(�����b��C�:&<+CS�b�w�����`�B��bk�_��:��n�^0�����b_�u��|W�J@��{u���Yq���YCn��m0bq8�er0<xQ&0�ԙ�{��#<������ul��FEAj��ڠ�"K��G���J���㪷��T���Ev�&�W���o���w0uy�ǈv��;���ؽ�t��/���9=t�9��b�I�î� 1��"��W����7	yh[~�H塣2����WS�M �b��@��ދ|��Y�&� mm��"��C�`,�EX��&o 
1���8bA�ס�+� u<��EL���{k�߆l:�b�y]�m�f*�������^o3"i���X���x,p�=է
l-����;t�Ŋ/��@��g���<&s�*c��P���������#�Q���=3��o0��F��W�b���`U���+.�t�����y2&uGW/��ycG�*#}cp;Rv�(��Z\�~���Qi�������#�Z,⍂������<n�uOc�v�x��"�4��m������#GY,�#�b�=�y����j=v�1�� �ܑc.�1I�M�»�U4�uim?�;r�Ų	�6x0�/�scѶz����r٭V�s���~�@mĲ�<��2Y�z�x��l`V-��{O���1VP#P��`�B���Rx�(�u�L�de|�w�����4]�bN���$��Wg�3]/�٠CD�c2�(|�߄$;�c=?�gƔi�ۺd�A������I���w�bib��Ǔ�cGo��?ͯ_��OS�1��,�7�o�� �Q?屾�c�5�u����Dޏ��O&�]$ep4�{��nJ��s��.�]���Hk �C,�I	j��i���S��*X�'ScB��t�^p� O��.?�����Y�<uHw��)7��m
�Z������{a����)�H��g���[1� �������\8�6�H��&|P���}a|�
���qX����qL���~��$��qw�ԧ;ߖ;`�v ����0;%���b[���Gm��3'q38+�����<�8cbψ�����"F�|#���Oo�OW����W�f��c|���߷D����l����~�E$�ԑ�y�c������m[��$��3�i�p��M��5-?�;u��̞�a�ṫ8�c��M|{�ً5g��4�:c��q ���9ޤ��t�3S���$��n�0����&���ǘ���V�M�mK����:c.�� ]�#��+1� ���Qs���<đ�#F\T�mZ���x����>Ax�=�	�8��o�3���g�#׬Ɇb�t�;�Y9Vc�/���T�9��%������H��$pp�ۄ/����]~<�;9�����}���|٪:�Ԉ&������M�k�05�03p�4��w�Az��FZG6U�q�Kt�tdi�rۉ��u�AI�h�@#��O8���[�\~b�H�(r�gj��}U����u4s�je���
�.�d�F�DjG���_%>I}6����kvxa��|�z)�x���*sm�0%������^^DR0�lwG�Y1��x�o�CW��c`��L�4�����w��_k�M*���!��b,I�۔�i� g�b2���q�nf�3�Y�����P�m�/ӥk6�l���x��Y8���!N�{RN�eXY�+)�u�������[�2���/�V�ӷ��y�Ze�G��?ܨ/������E�h`g�:�q_Ƿb��3�+�N��ɨ������G��p��4j��l���8����Ԇ�^�����L�k����8��.�ٱ[����9����/�4�!�N��?�dM��t��
q�Y_6�x9�L����	 �@�r�i��x���R�<����b�,%`a_���^�	�PlU�&�A�c��e����yY 2a��[�}�����p0 �'KU-K�͖+�x�5f��Z����4�~��h�h���j���b������f�9]�r�$���!&��&����a�C'b�Af=�:���m�#�N�������@,�0�V�o�AO�1�״��П�	�Йt��G���\��ޫ�o�x�2������j�ӯC�S��9��YPy��f�ӯYW~M���Or�+����?�`�DlV��,�����?t��YC~3��xf����Y�VR��L��kV��$�������>38��>78QO�f���xܱ����:�е�̽�;�IجK}	��ٞ��+ն0�x͚0`�p�����7h{!���$lV�OD��/�C4�����j��u�J���'�͚��9��4T+�~�$`�)D0��t��Þ���0���$�&x��7*�-Ĩ�{�H�A�p��{:7��̶��>6������y�ߡ&=��Eb@��~"�8l��$�V���X;�ٶF�i�HQO�fuxɛ+��*t�,?̬�q���R���bQ1��۬/�g3I����Blm�>^()����r+�D��� Uamf���PaO�fu���8=l6|S/j{R6K�K#��S��p���~�K��I�,/�J�,�[1n��Ƹ'R���
����_�:���,�.�9m8��ϩ��K��}>�f#IX_�"ΰYT[�:il?R�ӜY^�['Vй�V�����Z����2����:��i띾��7 � ����H]kQ�
�AS��Rfu�3+��9�16�~��'<�vkA^F"$O(k:��U*�Nxf9`iH}�R���g��x pZ���{���d�S�Y�]���~a~�� �g�UH�6�I��$���j�{W�SԹ*�����Nz"5����T��_��쭞R!K�i�����4�+�I�N,Ar Zpa��(QO�f�w�(���:P�ٲ �+Y�7�����Y��0߂���{=)�:��eٕIc��Tn˶�M��)�:���X@6}�3b6s����]��:�
^K�%�:�}=���g�bW�z{����*�b�S�Y�]�\"EM��@�cK���Í{�4��+�-�&n/���v)�:����NE�-��9qĔO|�@� M�hV_Wp�\� !�;C��Nzf�u�\jx њ+k?դ��hUWI�S"$@@@��Y�m �=љ�S��k�  �;� �Q'5�X�ᇓ�X���deVE%��$�U2g��!�=�eQ	���N�wNl߂�]Ɂ�B����(!x���@�#��Y���)l@�Uڥۥ��1ݖ2蕤<P-��J�ֽ� �4f��FE��	s�((Ҿ!�́0	���7T_���R��q#���ᨽR혈�Y%���h��4�c�==�%�f,>a�-����b&*�!��^�j�n_���4�	���Z�����q{v ��@˒�*�lDgx����4�^���2-д'Ͳ�k���T���&u�電�E=���6H�sn	,i��΢�z�,��c����B��Zz]~r[{Y�y�V�rA�߶oP��{�)��+���������R.W�EpF�B������7�"�$�l_6n��v𸧳�,��w��t������?�)�,O�����R,_�����5�   \bͻ��gK�cTǞ�d{�pQ_c��1�m��cLnS���C����4��6�daj[. jzX�b����-�ȚmGY��ǝξ���+>a�w���'��ڛˎ���V���m����D�����~а/��C���˝������mٳ����P�0)��^�9[�wc��u���@�KxNEٽ���й�u�v�A�}}w>ha�Z�3�������iҗw�%�|ҳ��F�~����n̧�����i2�F�:�'<Z�'=����*�<�In�/)\'1�qf��������|��U�?�_��ؼɲ)��'��>�e��?�ք������I�����N/��:�P�i(��PY��/ԅ6�œ��PaO������"���.�[L^�Lۻ��G��1^��6d��y��4��AoTO;��ӈd��
�0�1��B�\G�i��ޮu�c��X=��F�jݶo���ĩ�1Q��=��؆��ӑ<m�i��H*�˙'~��i����9>�mӺ�fN��r_��0O%�8�^7o�O����U�K������2�-� F�������j�:}WpB���7��O�����ނvy�!����i�"�ʚ.j6x叹�mh�eB����o�2]Yg܉��hG�p�A���5�;�5q�@�H~�L�J ����vv�D<j�|��]��Ֆ�>>r�gmz+[kg^�Л�mlϽ��9ɗpCV����csۺ�=��+�C[|�щ�m�ML]�����X�B���^@X[x��\���Wmm�)��kh]�Go�E4?���6�̓�X⢵�ƿ����#�jM^ჾ槭���0,�j@|�R������˭�;)X�sP:�=������8�W �0�R7�l/���7�/uPS'�
%����!B�ָ9Q� #&H'�RLIK����W��A�.�&�}C�,�,ި=:�m�㇛w*�������n�FgM��$؛�](�c��=P�S ��Щ�a���M:񘘪:�$Z��R�B�{�w)�����?�:�w�����_�t`#'����gɅ)�ll�?���'�E�V-���Z��NduںB8���ۻ��j6V�V5��_�T�լ���t�S'p>���w����ȉ���;ʟ��1���8��Y�F����k��'�qh/;�"����>�0�	w��X��w�Γ[�ݛI4��1@��Hވ?�E��;�ǋf�8��;j.����ڝ����m�������Crf�q��I���ѧ�՟>}�����      �   	  x�}Y���:��_�/`�%�/tp�E��h�)���5'�5(�ڵl9q��!��F�~�Ѭe�俯6ۗ/�=�/�~�d�&���}��	˒6w��l����汄�M��$)~��|/��$��\:]7z	���쒵�.S�/�Y�u|뫓YNb�>�5I��Yn׃�X(z�� {��:'�g�>�e;䯿Z?�ǲ9�>?e����[7%?Iܜk�|��6�Q:�J����_�̳l2}�v��Tg�_��>��nm�esO�&��x�ɘ��>���iN����8�M�����4￞��Ք�p$�z-���X���<L˲"�wߦb�����Yf�=#�k�5'�łm(���ƭ�×�7�	�d;��3��u8l�5�ɨS�3�fq��{2?��%M�Guy��h�7ݟ�%i���������������j�ᐰ�����v3�$�$���7��A.w���`����s���ne7S	��� ���:���N0vp����l���?��pG�8��5�l?Xb�{�ɦ��)t�Ӣ�̷�¦���d:�td�d6yq��D�]$=ip���EǢEް1��	�^�d�CW����#;G�,�3�� ��q�gus����29p<ES���3��NسDܺ�d��iђ̄ŗ�r	)���˨1%+D.� �gJ�:Ӧ��ix* ^!d�m��*���@"N9J��)�L6���4�n�����5X�(�+����J�f,[v�����{kW��-~���+RE���C�f�#�
���gJ�J�8*9D�5�d���]���)?Q�2*�	`�lo�Z�L�v�� *@~���xr}�z7q<�+���)�%p�'��y}o�.�#�ŋ�f	.�NP�H�ǏKzk�u±�<%�Yɶ�*��*��Sw��IJ9P0��f�d��f�.A��Փ!�~A�#��I�j��M�LI�I��]3p����j��JjH�zK�d{V�_6Y��;��	�o������ .����M�<*���Ʈ_?l=�I��JHE�Rq�N�p��֤J�k�*�pD���>1W��Z�d�VU������:U�c����!����N}����A��$j!%;��c�job����@V��E�ea0�{W��%`{F�'��U�zu-wU旾!:���p�i�;�k�.������V��\e�w��hOi&ǒ�$f鍼[�~���q�o�_tZ�M�����N�`�	��*���@���#S�u>�4Hđ'�G��L�&,�7g5C�$[�=�+_� ͜7�0E��%J���C(��r��qz��:��T�]�v*Ԣ�A����&�vwbE�n���q=�G 9�H�����*���X������لm�6�[7`4���VuM���uy���=����*���8��T_:Cڕ������"�A�@��/�
�hS�`����ɜ�3sjqb�<���l��z1u���Ł82)�{��(X
���^ ɖ,��k�D*�ӹ���L~CL`�Ѱ��Ɛ�F�	 ��P�ͨ�U�a�����4p!��Ja`D�5�(�߳�%Ԑ��A\a3	_41\��*�����d�	o$S�x�׃*5��T��\F*aǴ�͚.Sm��ak�3nj2j���G��i<�A$����E5_]hǜ��O���"܍��k�ye�P�����b�<sP�@:Ag`��}�ʥ��v���I:$ύ�jm�{-�
uJ����\7����$���Nv�5�銧�P�.���l�d���ۻ��NC�����'��H���Z����-��YF}�����2-K�Uȹ���,=lmi��Q)�Yr�cC�	co�oק��M�G� ѣ�4�4���Y�m�=���������ߥ�z�����*I�V̰Ƹ����_�թ޺jŝ:Bϩݙ��ZO�pX��@�γ}>������=S���ѣȩ��U�Ae��~�z@�!"P_��uh�+�����/hؔ�n�x�$W�L(�~�|"��.e� KPh��b-t����D&<����O�f#�kV)�+����5��9	G����ر��%����5�+�i�㷸|L?��PkF&�����k��~o����q�Km���oL�ZTgE�sa�-�)����ֲ���	H8u��.l֜��U��ߴ�TΤehAY�@�0>�z�^��@�Y≓/��]�S�0��a�m[�JZ��Q���}lZ]�/�ʖ�����榔��܌����HG���t���&���@�`�^�����S���[=�z;^F��_���Ǽ������     