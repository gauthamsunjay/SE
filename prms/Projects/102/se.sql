PGDMP                         s            se    9.3.4    9.3.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    74349    se    DATABASE     �   CREATE DATABASE se WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE se;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11750    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    203            �            1259    74350 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    6            �            1259    74353    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    6    170            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    171            �            1259    74355    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    6            �            1259    74358    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    172    6            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    173            �            1259    74360    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    6            �            1259    74363    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    6    174            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    175            �            1259    74365 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         postgres    false    6            �            1259    74368    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    6            �            1259    74371    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    177    6            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    178            �            1259    74373    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    176    6            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    179            �            1259    74375    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    6            �            1259    74378 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    180    6            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    181            �            1259    74380    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    6            �            1259    74387    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    182    6            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    183            �            1259    74389    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    6            �            1259    74392    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    184    6            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    185            �            1259    74394    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    6            �            1259    74400    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    6    186            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    187            �            1259    74402    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    6            �            1259    74408    professor_areaofinterest    TABLE     �   CREATE TABLE professor_areaofinterest (
    id integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    aoi character varying(100) NOT NULL
);
 ,   DROP TABLE public.professor_areaofinterest;
       public         postgres    false    6            �            1259    74411    professor_areaofinterest_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_areaofinterest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.professor_areaofinterest_id_seq;
       public       postgres    false    6    189            �           0    0    professor_areaofinterest_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE professor_areaofinterest_id_seq OWNED BY professor_areaofinterest.id;
            public       postgres    false    190            �            1259    74413    professor_deptseligible    TABLE     �   CREATE TABLE professor_deptseligible (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    "deptName" character varying(255) NOT NULL
);
 +   DROP TABLE public.professor_deptseligible;
       public         postgres    false    6            �            1259    74416    professor_deptseligible_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_deptseligible_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.professor_deptseligible_id_seq;
       public       postgres    false    191    6            �           0    0    professor_deptseligible_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE professor_deptseligible_id_seq OWNED BY professor_deptseligible.id;
            public       postgres    false    192            �            1259    74418    professor_projectmembers    TABLE     �   CREATE TABLE professor_projectmembers (
    id integer NOT NULL,
    "pId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL
);
 ,   DROP TABLE public.professor_projectmembers;
       public         postgres    false    6            �            1259    74421    professor_projectmembers_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_projectmembers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.professor_projectmembers_id_seq;
       public       postgres    false    193    6            �           0    0    professor_projectmembers_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE professor_projectmembers_id_seq OWNED BY professor_projectmembers.id;
            public       postgres    false    194            �            1259    74423    professor_projects    TABLE     ;  CREATE TABLE professor_projects (
    "pId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    status character varying(1) NOT NULL
);
 &   DROP TABLE public.professor_projects;
       public         postgres    false    6            �            1259    74429    professor_proposedproject    TABLE     O  CREATE TABLE professor_proposedproject (
    "ppId" integer NOT NULL,
    "tId_id" character varying(255) NOT NULL,
    "teamSize" integer NOT NULL,
    "projectName" character varying(1024) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    synopsis text NOT NULL,
    "choiceOfProposal" character varying(1) NOT NULL
);
 -   DROP TABLE public.professor_proposedproject;
       public         postgres    false    6            �            1259    74435 "   professor_proposedproject_ppId_seq    SEQUENCE     �   CREATE SEQUENCE "professor_proposedproject_ppId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."professor_proposedproject_ppId_seq";
       public       postgres    false    196    6            �           0    0 "   professor_proposedproject_ppId_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "professor_proposedproject_ppId_seq" OWNED BY professor_proposedproject."ppId";
            public       postgres    false    197            �            1259    74437    professor_studentsapplied    TABLE     �   CREATE TABLE professor_studentsapplied (
    id integer NOT NULL,
    "ppId_id" integer NOT NULL,
    usn_id character varying(10) NOT NULL,
    synopsis text NOT NULL
);
 -   DROP TABLE public.professor_studentsapplied;
       public         postgres    false    6            �            1259    74443     professor_studentsapplied_id_seq    SEQUENCE     �   CREATE SEQUENCE professor_studentsapplied_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.professor_studentsapplied_id_seq;
       public       postgres    false    6    198            �           0    0     professor_studentsapplied_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE professor_studentsapplied_id_seq OWNED BY professor_studentsapplied.id;
            public       postgres    false    199            �            1259    74445    professor_teacher    TABLE     2  CREATE TABLE professor_teacher (
    "tId" character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "domainName" character varying(255) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    phone character varying(10) NOT NULL
);
 %   DROP TABLE public.professor_teacher;
       public         postgres    false    6            �            1259    74451    student_student    TABLE     =  CREATE TABLE student_student (
    usn character varying(10) NOT NULL,
    name character varying(255) NOT NULL,
    email_id character varying(254) NOT NULL,
    "deptName" character varying(255) NOT NULL,
    sem integer NOT NULL,
    phone character varying(10) NOT NULL,
    cgpa character varying(6) NOT NULL
);
 #   DROP TABLE public.student_student;
       public         postgres    false    6            �            1259    74457    student_users    TABLE     �   CREATE TABLE student_users (
    email character varying(254) NOT NULL,
    password character varying(254) NOT NULL,
    "accountType" character varying(1) NOT NULL
);
 !   DROP TABLE public.student_users;
       public         postgres    false    6            �           2604    74463    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    171    170            �           2604    74464    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    173    172            �           2604    74465    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    174            �           2604    74466    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    179    176            �           2604    74467    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    177            �           2604    74468    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    181    180            �           2604    74469    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182            �           2604    74470    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    184            �           2604    74471    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186            �           2604    74472    id    DEFAULT     |   ALTER TABLE ONLY professor_areaofinterest ALTER COLUMN id SET DEFAULT nextval('professor_areaofinterest_id_seq'::regclass);
 J   ALTER TABLE public.professor_areaofinterest ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            �           2604    74473    id    DEFAULT     z   ALTER TABLE ONLY professor_deptseligible ALTER COLUMN id SET DEFAULT nextval('professor_deptseligible_id_seq'::regclass);
 I   ALTER TABLE public.professor_deptseligible ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191            �           2604    74474    id    DEFAULT     |   ALTER TABLE ONLY professor_projectmembers ALTER COLUMN id SET DEFAULT nextval('professor_projectmembers_id_seq'::regclass);
 J   ALTER TABLE public.professor_projectmembers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193            �           2604    74475    ppId    DEFAULT     �   ALTER TABLE ONLY professor_proposedproject ALTER COLUMN "ppId" SET DEFAULT nextval('"professor_proposedproject_ppId_seq"'::regclass);
 O   ALTER TABLE public.professor_proposedproject ALTER COLUMN "ppId" DROP DEFAULT;
       public       postgres    false    197    196            �           2604    74476    id    DEFAULT     ~   ALTER TABLE ONLY professor_studentsapplied ALTER COLUMN id SET DEFAULT nextval('professor_studentsapplied_id_seq'::regclass);
 K   ALTER TABLE public.professor_studentsapplied ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            i          0    74350 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    170   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    171            k          0    74355    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    172   ��       �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    173            m          0    74360    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    174   �       �           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 45, true);
            public       postgres    false    175            o          0    74365 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    176   �       p          0    74368    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    177   ��       �           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    178            �           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    179            s          0    74375    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    180   ��       �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    181            u          0    74380    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    182   ��       �           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public       postgres    false    183            w          0    74389    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       postgres    false    184   �       �           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 15, true);
            public       postgres    false    185            y          0    74394    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   �       �           0    0    django_migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_migrations_id_seq', 4, true);
            public       postgres    false    187            {          0    74402    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    188   ��       |          0    74408    professor_areaofinterest 
   TABLE DATA               >   COPY professor_areaofinterest (id, "tId_id", aoi) FROM stdin;
    public       postgres    false    189   ��       �           0    0    professor_areaofinterest_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('professor_areaofinterest_id_seq', 54, true);
            public       postgres    false    190            ~          0    74413    professor_deptseligible 
   TABLE DATA               E   COPY professor_deptseligible (id, "ppId_id", "deptName") FROM stdin;
    public       postgres    false    191   ��       �           0    0    professor_deptseligible_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('professor_deptseligible_id_seq', 18, true);
            public       postgres    false    192            �          0    74418    professor_projectmembers 
   TABLE DATA               A   COPY professor_projectmembers (id, "pId_id", usn_id) FROM stdin;
    public       postgres    false    193   l�       �           0    0    professor_projectmembers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('professor_projectmembers_id_seq', 29, true);
            public       postgres    false    194            �          0    74423    professor_projects 
   TABLE DATA               q   COPY professor_projects ("pId", "tId_id", "teamSize", "projectName", "domainName", synopsis, status) FROM stdin;
    public       postgres    false    195   ��       �          0    74429    professor_proposedproject 
   TABLE DATA               �   COPY professor_proposedproject ("ppId", "tId_id", "teamSize", "projectName", "domainName", synopsis, "choiceOfProposal") FROM stdin;
    public       postgres    false    196   ��       �           0    0 "   professor_proposedproject_ppId_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"professor_proposedproject_ppId_seq"', 1, false);
            public       postgres    false    197            �          0    74437    professor_studentsapplied 
   TABLE DATA               M   COPY professor_studentsapplied (id, "ppId_id", usn_id, synopsis) FROM stdin;
    public       postgres    false    198   Z�       �           0    0     professor_studentsapplied_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('professor_studentsapplied_id_seq', 29, true);
            public       postgres    false    199            �          0    74445    professor_teacher 
   TABLE DATA               \   COPY professor_teacher ("tId", name, email_id, "domainName", "deptName", phone) FROM stdin;
    public       postgres    false    200   ��       �          0    74451    student_student 
   TABLE DATA               U   COPY student_student (usn, name, email_id, "deptName", sem, phone, cgpa) FROM stdin;
    public       postgres    false    201   )�       �          0    74457    student_users 
   TABLE DATA               @   COPY student_users (email, password, "accountType") FROM stdin;
    public       postgres    false    202   U      �           2606    74478    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    170    170            �           2606    74480 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    172    172    172            �           2606    74482    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    172    172            �           2606    74484    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    170    170            �           2606    74486 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    174    174    174            �           2606    74488    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    174    174            �           2606    74490    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    177    177            �           2606    74492 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    177    177    177            �           2606    74494    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    176    176            �           2606    74496    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    180    180            �           2606    74498 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    180    180    180            �           2606    74500    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    176    176            �           2606    74502    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    182    182            �           2606    74504 3   django_content_type_app_label_45f3b1d93ec8c61c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
       public         postgres    false    184    184    184            �           2606    74506    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    184    184            �           2606    74508    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �           2606    74510    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    188    188            �           2606    74512    professor_areaofinterest_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT professor_areaofinterest_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.professor_areaofinterest DROP CONSTRAINT professor_areaofinterest_pkey;
       public         postgres    false    189    189            �           2606    74514    professor_deptseligible_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT professor_deptseligible_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.professor_deptseligible DROP CONSTRAINT professor_deptseligible_pkey;
       public         postgres    false    191    191            �           2606    74516    professor_projectmembers_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT professor_projectmembers_pkey;
       public         postgres    false    193    193            �           2606    74518    professor_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT professor_projects_pkey PRIMARY KEY ("pId");
 T   ALTER TABLE ONLY public.professor_projects DROP CONSTRAINT professor_projects_pkey;
       public         postgres    false    195    195            �           2606    74520    professor_proposedproject_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT professor_proposedproject_pkey PRIMARY KEY ("ppId");
 b   ALTER TABLE ONLY public.professor_proposedproject DROP CONSTRAINT professor_proposedproject_pkey;
       public         postgres    false    196    196            �           2606    74522    professor_studentsapplied_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT professor_studentsapplied_pkey;
       public         postgres    false    198    198            �           2606    74524    professor_teacher_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_pkey PRIMARY KEY ("tId");
 R   ALTER TABLE ONLY public.professor_teacher DROP CONSTRAINT professor_teacher_pkey;
       public         postgres    false    200    200            �           2606    74526    student_student_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY (usn);
 N   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_pkey;
       public         postgres    false    201    201            �           2606    74528    student_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY student_users
    ADD CONSTRAINT student_users_pkey PRIMARY KEY (email);
 J   ALTER TABLE ONLY public.student_users DROP CONSTRAINT student_users_pkey;
       public         postgres    false    202    202            �           1259    74529    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    172            �           1259    74530    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    172            �           1259    74531    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    174            �           1259    74532    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    177            �           1259    74533    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    177            �           1259    74534 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    180            �           1259    74535 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    180            �           1259    74536    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    182            �           1259    74537    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    182            �           1259    74538    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    188            �           1259    74539    professor_areaofinterest_tId_id    INDEX     c   CREATE INDEX "professor_areaofinterest_tId_id" ON professor_areaofinterest USING btree ("tId_id");
 5   DROP INDEX public."professor_areaofinterest_tId_id";
       public         postgres    false    189            �           1259    74540 $   professor_areaofinterest_tId_id_like    INDEX     |   CREATE INDEX "professor_areaofinterest_tId_id_like" ON professor_areaofinterest USING btree ("tId_id" varchar_pattern_ops);
 :   DROP INDEX public."professor_areaofinterest_tId_id_like";
       public         postgres    false    189            �           1259    74541    professor_deptseligible_ppId_id    INDEX     c   CREATE INDEX "professor_deptseligible_ppId_id" ON professor_deptseligible USING btree ("ppId_id");
 5   DROP INDEX public."professor_deptseligible_ppId_id";
       public         postgres    false    191            �           1259    74542    professor_projectmembers_pId_id    INDEX     c   CREATE INDEX "professor_projectmembers_pId_id" ON professor_projectmembers USING btree ("pId_id");
 5   DROP INDEX public."professor_projectmembers_pId_id";
       public         postgres    false    193            �           1259    74543    professor_projectmembers_usn_id    INDEX     _   CREATE INDEX professor_projectmembers_usn_id ON professor_projectmembers USING btree (usn_id);
 3   DROP INDEX public.professor_projectmembers_usn_id;
       public         postgres    false    193            �           1259    74544 $   professor_projectmembers_usn_id_like    INDEX     x   CREATE INDEX professor_projectmembers_usn_id_like ON professor_projectmembers USING btree (usn_id varchar_pattern_ops);
 8   DROP INDEX public.professor_projectmembers_usn_id_like;
       public         postgres    false    193            �           1259    74545    professor_projects_tId_id    INDEX     W   CREATE INDEX "professor_projects_tId_id" ON professor_projects USING btree ("tId_id");
 /   DROP INDEX public."professor_projects_tId_id";
       public         postgres    false    195            �           1259    74546    professor_projects_tId_id_like    INDEX     p   CREATE INDEX "professor_projects_tId_id_like" ON professor_projects USING btree ("tId_id" varchar_pattern_ops);
 4   DROP INDEX public."professor_projects_tId_id_like";
       public         postgres    false    195            �           1259    74547     professor_proposedproject_tId_id    INDEX     e   CREATE INDEX "professor_proposedproject_tId_id" ON professor_proposedproject USING btree ("tId_id");
 6   DROP INDEX public."professor_proposedproject_tId_id";
       public         postgres    false    196            �           1259    74548 %   professor_proposedproject_tId_id_like    INDEX     ~   CREATE INDEX "professor_proposedproject_tId_id_like" ON professor_proposedproject USING btree ("tId_id" varchar_pattern_ops);
 ;   DROP INDEX public."professor_proposedproject_tId_id_like";
       public         postgres    false    196            �           1259    74549 !   professor_studentsapplied_ppId_id    INDEX     g   CREATE INDEX "professor_studentsapplied_ppId_id" ON professor_studentsapplied USING btree ("ppId_id");
 7   DROP INDEX public."professor_studentsapplied_ppId_id";
       public         postgres    false    198            �           1259    74550     professor_studentsapplied_usn_id    INDEX     a   CREATE INDEX professor_studentsapplied_usn_id ON professor_studentsapplied USING btree (usn_id);
 4   DROP INDEX public.professor_studentsapplied_usn_id;
       public         postgres    false    198            �           1259    74551 %   professor_studentsapplied_usn_id_like    INDEX     z   CREATE INDEX professor_studentsapplied_usn_id_like ON professor_studentsapplied USING btree (usn_id varchar_pattern_ops);
 9   DROP INDEX public.professor_studentsapplied_usn_id_like;
       public         postgres    false    198            �           1259    74552    professor_teacher_email_id    INDEX     U   CREATE INDEX professor_teacher_email_id ON professor_teacher USING btree (email_id);
 .   DROP INDEX public.professor_teacher_email_id;
       public         postgres    false    200            �           1259    74553    professor_teacher_email_id_like    INDEX     n   CREATE INDEX professor_teacher_email_id_like ON professor_teacher USING btree (email_id varchar_pattern_ops);
 3   DROP INDEX public.professor_teacher_email_id_like;
       public         postgres    false    200            �           1259    74554    professor_teacher_tId_like    INDEX     h   CREATE INDEX "professor_teacher_tId_like" ON professor_teacher USING btree ("tId" varchar_pattern_ops);
 0   DROP INDEX public."professor_teacher_tId_like";
       public         postgres    false    200            �           1259    74555    student_student_email_id    INDEX     Q   CREATE INDEX student_student_email_id ON student_student USING btree (email_id);
 ,   DROP INDEX public.student_student_email_id;
       public         postgres    false    201            �           1259    74556    student_student_email_id_like    INDEX     j   CREATE INDEX student_student_email_id_like ON student_student USING btree (email_id varchar_pattern_ops);
 1   DROP INDEX public.student_student_email_id_like;
       public         postgres    false    201            �           1259    74557    student_student_usn_like    INDEX     `   CREATE INDEX student_student_usn_like ON student_student USING btree (usn varchar_pattern_ops);
 ,   DROP INDEX public.student_student_usn_like;
       public         postgres    false    201            �           1259    74558    student_users_email_like    INDEX     `   CREATE INDEX student_users_email_like ON student_users USING btree (email varchar_pattern_ops);
 ,   DROP INDEX public.student_users_email_like;
       public         postgres    false    202            �           2606    74559 ?   auth_content_type_id_508cf46651277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
       public       postgres    false    184    174    1983            �           2606    74564 ?   auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
       public       postgres    false    1948    172    170            �           2606    74569 ?   auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
       public       postgres    false    1959    172    174            �           2606    74574 ?   auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
       public       postgres    false    180    1959    174            �           2606    74579 ;   auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
       public       postgres    false    177    170    1948            �           2606    74584 9   auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
       public       postgres    false    1961    176    177            �           2606    74589 ?   auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
       public       postgres    false    176    180    1961            �           2606    74594 ?   djan_content_type_id_697914295151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
       public       postgres    false    1983    184    182            �           2606    74599 9   django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
       public       postgres    false    1961    182    176            �           2606    74604 $   professor_areaofinterest_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_areaofinterest
    ADD CONSTRAINT "professor_areaofinterest_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_areaofinterest DROP CONSTRAINT "professor_areaofinterest_tId_id_fkey";
       public       postgres    false    2017    200    189            �           2606    74609 $   professor_deptseligible_ppId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_deptseligible
    ADD CONSTRAINT "professor_deptseligible_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.professor_deptseligible DROP CONSTRAINT "professor_deptseligible_ppId_id_fkey";
       public       postgres    false    2006    196    191            �           2606    74614 $   professor_projectmembers_pId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT "professor_projectmembers_pId_id_fkey" FOREIGN KEY ("pId_id") REFERENCES professor_projects("pId") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT "professor_projectmembers_pId_id_fkey";
       public       postgres    false    193    195    2002            �           2606    74619 $   professor_projectmembers_usn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projectmembers
    ADD CONSTRAINT professor_projectmembers_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.professor_projectmembers DROP CONSTRAINT professor_projectmembers_usn_id_fkey;
       public       postgres    false    193    201    2022            �           2606    74624    professor_projects_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_projects
    ADD CONSTRAINT "professor_projects_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.professor_projects DROP CONSTRAINT "professor_projects_tId_id_fkey";
       public       postgres    false    195    200    2017            �           2606    74629 %   professor_proposedproject_tId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_proposedproject
    ADD CONSTRAINT "professor_proposedproject_tId_id_fkey" FOREIGN KEY ("tId_id") REFERENCES professor_teacher("tId") DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.professor_proposedproject DROP CONSTRAINT "professor_proposedproject_tId_id_fkey";
       public       postgres    false    200    2017    196            �           2606    74634 &   professor_studentsapplied_ppId_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT "professor_studentsapplied_ppId_id_fkey" FOREIGN KEY ("ppId_id") REFERENCES professor_proposedproject("ppId") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT "professor_studentsapplied_ppId_id_fkey";
       public       postgres    false    2006    196    198            �           2606    74639 %   professor_studentsapplied_usn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_studentsapplied
    ADD CONSTRAINT professor_studentsapplied_usn_id_fkey FOREIGN KEY (usn_id) REFERENCES student_student(usn) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.professor_studentsapplied DROP CONSTRAINT professor_studentsapplied_usn_id_fkey;
       public       postgres    false    2022    201    198            �           2606    74644    professor_teacher_email_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY professor_teacher
    ADD CONSTRAINT professor_teacher_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.professor_teacher DROP CONSTRAINT professor_teacher_email_id_fkey;
       public       postgres    false    2026    202    200            �           2606    74649    student_student_email_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY student_student
    ADD CONSTRAINT student_student_email_id_fkey FOREIGN KEY (email_id) REFERENCES student_users(email) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_email_id_fkey;
       public       postgres    false    202    2026    201            i      x������ � �      k      x������ � �      m     x�m���� ���)|���V��[��L�S�Zb��!@B{����!�H���U?մ<*3�ۯ�­���_�������Q!�A���Lf�`e�N��ٞ���2�]s �ԗ�hL��f,z�I�my�B{c�-���h��:EM!/��e�&j��	R��q����#��@���˼�zV��j�՛`舀��W�'�Ժ�1��R&քj�|���2��	k�o��2a��M*�u)�z��:D��=RZ��|��5���6�(�@iv���E�f7JX�QĮ�n7��۽u��p�F�2�v	k�]��.am�m�1��
�����5����b�ER_X�26\"%�]kRB������4�T9.�EVo�4�u������9!�\���fӻ�+DlH��0�BԔ�V=����{����Q���R�$�Nޓ���FY})[�V��N���i�XC-O���x;e�:i+&���yf�����یu�D�G|��Q���<a�����3�X�����e���      o   �   x�3�,H�NI3�/�H425S14200P1�(IvKu5�LT��̯����)2Hs*��v3�+��O������,	��N�NNL2��4204�50�56T02�22�25׳0��46�60�26�,�LL������E��z���@����b���� K�/�      p      x������ � �      s      x������ � �      u      x������ � �      w   �   x�e�I�� E��)8A*d��.�!FvH���"�`H��+��O�3O���`�����x
�q�����x�)����H��&�$+���kL�T|zj&k�~��>���~�N��ͦ������y�"������ԄCKPs��!JG[�Zg�YȪ�.+��'��(���n3u�����P-�|Ϳ����KD�gG�+n��W0���Q������8#��"� ���      y   x   x���K
�  ��x��Cd>N���P$*���Y��ݸ� �q֞k�on���(�����H���B7����-ZP��aHW͐���t ����:Sj���~(-�V�:=�%�܀wk��]p7�      {      x������ � �      |   �  x�u�Ko�0���_�S����ut�C4DEr酖62Q�4Hʆ�}Gvm'pzg���)R�̑u����[�ݰK"��O9��j\��Q����,
*�~��l�7ZʖÎC%����|���q����^�n�:ȥ�c/������N:r*�9=�88�̝�I�;�
R3��D2�%B��&�3���SAEj��[���jR9-\�{N����G#����d�(�ih�7[���lF�\�B�W^}ܜ"����u`�e��r��+|5��YI��h*au�,�Q���j�[:q��Ҏ�;ɢ��!P�o"�Qv��+�=�j#/�rġ�jrB���䴛1M7�B�%p����Ơ����0��S�r��ؔ���(�9�9mb�8��Q����Ō�BH/�t�!7�!�7�L��%���:�� �c���oG���G�h�<�OS'�yEQ��&EM�eyX�-wc0� �9=��L�1.�)�#]S����/�$b      ~   �   x�E���0kk�@�dY���j�ٿ� ��I���ͪm��.=�Z��uH���]FP#; �MH�3�3�
jl�':����9� Oe;2 �|3�	��xf�
*�0���,��~m�fY��f��ȳ�Y���a�l�*ȇɖ-����e��ARٲE�-O_�R�!�F�      �     x�U�;n1��sC��S�rg�m��������eyȐ�|ޢ��#XN���H`���!b'X]j���/�Q��1�<����M7�)H�@&I��J</�����.�����HD���&��ڗ�e�&�=]t,XNZ�9I�.3���we�v��s�k,hN�5����̢�mw��sHd�+��.�.YW��/mk��$q�A�&�2�;�<ku�g�T�O�+�w1�`q�t��?@e^�e,��]�~�2��f��"��Œs*��~f N�z�?O ��F��      �     x��U�R9}_��R�@H�ɒ�����e_䙶G�F=�46ޯ�Ӓ�[E����n����̧fn~؜]�tϽ��rqo�9s��i�$pω���C���5m��� �ze�.��ym�8f�-�%�݌��#��ئ��E�-�K߃����d#S�LC��!���uMv�K���.�67]~kn�tf��#��gCf��j8p�Y��˷�6M76�';ܢ��ކ�hw\�}2󉙙ol}��at-�~+	.K��t�-n��к�kG�O8mzw��#�ОK#3�N[I(�>c��,��$cl��^�q�@�6[��a����\� l`<Sc3����� 2����/���˲���2��Z�udx�g�;x���rvj���ڼp�t7f���њ��|�:L���*��Wk@g�,�K���ި���@z��w���P>U �!�QFJ�ɟO�e#�!hH{�`3�Ȭ]Ok������(��'�$[��jn���� �-WZ��msi{kT�/�q�4��2���)�oSr[w�
NШ�~����^�c��~��l��~��g�!ڡ��N��^��h\xW����`H��*\G)\O�:�}ghm��ڡP���G@����9��em�`w8b��g[�>��]�l,�ЧR�͛d{U0�(2%e	v{���X:D޹y�1q�2K���bo����2��]Cvۢk�I�+LU�Q`S�N4DSg�����Q��+��e����rM� - �AO'�>(u6* �[�#㴑���޷��sv�*�F��S���T��)�����' �8�4:����2��%ZA]hZjV`453��c�.0-�HK�V6 i�Y:/�R��M�3=}�������-dWl����?��l] 
�;T�h�F!�F����Cy�'T�K��Q�*������5-��@������ι�:��+o@�!�HENQ���)M?�T\�Y�q��Ue��F�?[HX�?���O�;W���ru�Y�ʁ:@�H�E�m�Z��j����\G!ñ��W��	�S      �   �  x��V�R#9<���`	l�0��2�{w.{���n����6ޯ�,���tt�^�Y)&�5�V3���L�6�����B{�e�>����#�I�>Ĭ-mB�u�XK�{��tL��Ūcڰ�C�;��`��5�1�M�-�Ȕ���'����TC����t�ǣ�h ]����r�fL��s6�������B���R&���Q�P����1��2�[���&x��[Z���oW����!�]�8���,��
�^V�#��M�U� j=��D8	tƗ�)�%K�b�ݩOr&9���ԾR�[�����Ro���������d+��c�ur'z|Y`�M���v<����$&�Ȇm:o4���r~ۤ]oY�z�	�� ����X2D��!�͐8VȮ��m���'���|j���l��[HZ��ʣrP/wA@�^��ύWF.���5�TS����=�/���b*]������A�*_�t���:��X
��#�2 :�Q���7
N�<�~��nJ����w�rd��fW⾢͙��phSb#_�'�w���:k�C��J���-���Fh��|��q����U �B�i�sl����� E��"%6-��wN��?��x,����pho����n��<_>H�H�G�5�h%[��\*�����ռ��܆��v����bBF��N��J]���s7��Jq�Ѫ���V�2�Zb T,U�KW%d��$���Y�&ZN����V����(�Ds�,X�m���� 0o���2�8B��a*�fj">�s�ga����m��}u��m���B�=EԤ�A[[s^U�~����pL�=`�lI:���������2�H� '�b�/�MIzd�e���8Zb=�Օ�����.G�8L������D�r]�t0�\�~QS���15c�>v�� ��4(Y�C/[�kb�=�]���E����Q�i��GP`�찇�|<RcuJF>�'Z/WK���>����T�Z5���/��1�jd.� WT1{(a��qw:���)K3'�hİ�Q�o�����>�Z�Z
�P��S�u���H�⸺v�;OP�V��Sb	�n��U��t��դ�Ǩ��Q���n�r�"G�OX�z��PD�0��J2 ����8;;�_�T      �   ;  x��VM��6=��b~@Z��������.�K.�4�	S�*R����]��M�5v/��y�Fz�fH��K�������zY��ƹ6��Oe�{��G�y�������]T����=��j�
A��w����5��I�,�hC�<�~��-��Z�����ō�R�H��!r� ���Hz�eW�q���"���E_O�e']��Y�����wƀ#|�����>C4	�j<Ed���G��;�<���*(��B
=�1$��z)^��y�:-T?@�Ba���Z|0nb�{���i}������uc/�&�j.�ʗq�\՗e��2��I�N�h��CK�Fl�l�l��G�gI*��ũy��3~qj�����R�e���$�����Nw��`�AG���'"�
�ٙ3�O궮�-�E^�%$���K�I	�z�l�<��v�Ӥ�0@ث {4�����c Cif�N4b�-����y����)�)��Z6{�&iD����[�=��V�/�!㐭`;�FGZQd	O�\˓'<uu-��y��k�uO��,����A�n�#���\��$-`����� �2f���j�*y&:r�fb�W��ۑ�Y�O:��!aFG>p�A؍����+j����b��/�o�|YV/�/ٽu���V��7��KG3�+�Fy���Y�g8>��τ�dm{�L�����bn�e���Ώ�Μ&Z��מ���N��Mg���{6�jg񺢹߸os-5�S�Vs|���u������<{�zeZ�x�z<m��,.t1<�� �颸cc�a�?o��2�4��/�LDY�|�|)��_���5�      �   t  x�mV�r�6<��Uă$p[�j���u��r�,F�$R*>��ߧA=�,�K3��4��?�j�j���ծ�U�6�y3�W=<�?�C�D��8��Q��W�^���(\���$�����|��ݪ���v�[�2$�>[����Д���xS��]CY���$�֥��Ǿ�
6I"�L�d��w�۹��]��ڭ��t�}�)Aie)ͤ!�����J�gx_T��V��ܲpT]�:�l�(i���X�;��p���y�ڂ��Bq�ǉP:�?S�s�YW���
/�llM���J�tD/��ZvM�;zNw�ǊB�؈���+������e�'����� %������9G�KpC�ȲOi�����;5E��|��N��o����ϧ��4J5Kh��Y��~]�!��3�oط?�&�6U,&�P��+�?���-AE"���VW�`�3�蹯�βs�FH%@�M���;����\�M�s����+����S�%����3����T����BfI*���������Ʒtq�!cb#i$�eh��*������G;�P&S)An�CQ��� c�NS�+�J���zg�r?ќv��2�!���LŔ�����>�n�_{Z'R��i����cP2�!��d���2����[w�|��h�:�&A��H�/��\U�:tm�]M����h�1SQ�Y��s�Ղ���sv�
JR�c�9�����1(��`	�yiD���KC��s�z��Nm�CF����U��	���j]��gײ_��AM�ds7�Z��m:���_|DFD�(&u��G�"/������B9bCh��26LJ��꟢����tA��e>�Gtd��-\���7��!��-�O�`)2
U��;�p}!_Q��
��P"�)Dx1X�"���_�k}��4a�m�	�-;\>(kٍ����d�|���i>ú�Z����Zں���ϩ��E=�)���G⚆&��:_��`�p�������O���o��Ə��L��
NU�a6[NE�g�v��El�`d?/�	�r�@�?^Vnѫ�R��0��	&�ͷ��`�wW{��tr������������
��H��&��~��.      �      x��[ے�8�|���_�u�����l{��}z%�q^�-R)-/��|��,��8-h��F��l�H������p���ja��L��`i��9(#���B�l3���1S����T�g��x2�P�� ��Pc�X'��f�����'1>�D-Ȑ C2!H���R�Ib~��"5������������#<�ܜ���L!�0���G�a�3&���D�K��{S�i�����l� N8q�3,�xćĜӽ�*��^���ޏ�퇜v�`��Gz0%��j�|f���BG��:�p��ɥ��UR�yz��x����n]��:a�G��x�C�ؤ����9�2��t�Rol��s��ذ�|9ڏj�j��]74�� ��� ���). c��8�d4wGx5|���A��G���c�����8��=���(�����b��C�:&<+CS�b�w�����`�B��bk�_��:��n�^0�����b_�u��|W�J@��{u���Yq���YCn��m0bq8�er0<xQ&0�ԙ�{��#<������ul��FEAj��ڠ�"K��G���J���㪷��T���Ev�&�W���o���w0uy�ǈv��;���ؽ�t��/���9=t�9��b�I�î� 1��"��W����7	yh[~�H塣2����WS�M �b��@��ދ|��Y�&� mm��"��C�`,�EX��&o 
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