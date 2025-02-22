toc.dat                                                                                             0000600 0004000 0002000 00000021736 13647645500 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           $                x            Online Satis    11.5    11.5 "    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         8           1262    26154    Online Satis    DATABASE     �   CREATE DATABASE "Online Satis" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE "Online Satis";
             postgres    false         �            1259    26225    kargo    TABLE     �   CREATE TABLE public.kargo (
    "kAd" character varying,
    "kTeslimTarihi" date,
    "kTeslimDurumu" character(1),
    "kId" integer NOT NULL
);
    DROP TABLE public.kargo;
       public         postgres    false         �            1259    26238    kargo_Talep    TABLE     g   CREATE TABLE public."kargo_Talep" (
    "tId" integer,
    "kİd" integer,
    "gonderimTarih" date
);
 !   DROP TABLE public."kargo_Talep";
       public         postgres    false         �            1259    26249    kategory    TABLE     X   CREATE TABLE public.kategory (
    "katİd" integer NOT NULL,
    "kAd" character(1)
);
    DROP TABLE public.kategory;
       public         postgres    false         �            1259    26160    musteri    TABLE     �   CREATE TABLE public.musteri (
    m_id integer NOT NULL,
    m_ad character varying,
    m_soyad character varying,
    m_tel character varying
);
    DROP TABLE public.musteri;
       public         postgres    false         �            1259    26246    musteri_urun    TABLE     M   CREATE TABLE public.musteri_urun (
    "mİd" integer,
    "uİd" integer
);
     DROP TABLE public.musteri_urun;
       public         postgres    false         �            1259    26155    onlineSatısTakip    TABLE     �   CREATE TABLE public."onlineSatısTakip" (
    "Ad" character varying,
    "Adress" character varying,
    email character varying,
    tel bigint NOT NULL
);
 '   DROP TABLE public."onlineSatısTakip";
       public         postgres    false         �            1259    26222    talep    TABLE     �   CREATE TABLE public.talep (
    "urunSayisi" integer,
    "toplamFiyat" integer,
    "talepİd" integer NOT NULL,
    "Mİd" integer,
    "uİd" integer
);
    DROP TABLE public.talep;
       public         postgres    false         �            1259    26269 
   talep_urun    TABLE     a   CREATE TABLE public.talep_urun (
    "uId" integer,
    "tİd" integer,
    "talepTarih" date
);
    DROP TABLE public.talep_urun;
       public         postgres    false         �            1259    26165    urun    TABLE     �   CREATE TABLE public.urun (
    "uId" integer NOT NULL,
    "uAd" character varying,
    "uFiyat" integer,
    "uGaranti" integer,
    "uOzellik" json,
    "katİd" integer
);
    DROP TABLE public.urun;
       public         postgres    false         .          0    26225    kargo 
   TABLE DATA               O   COPY public.kargo ("kAd", "kTeslimTarihi", "kTeslimDurumu", "kId") FROM stdin;
    public       postgres    false    200       2862.dat /          0    26238    kargo_Talep 
   TABLE DATA               G   COPY public."kargo_Talep" ("tId", "kİd", "gonderimTarih") FROM stdin;
    public       postgres    false    201       2863.dat 1          0    26249    kategory 
   TABLE DATA               3   COPY public.kategory ("katİd", "kAd") FROM stdin;
    public       postgres    false    203       2865.dat +          0    26160    musteri 
   TABLE DATA               =   COPY public.musteri (m_id, m_ad, m_soyad, m_tel) FROM stdin;
    public       postgres    false    197       2859.dat 0          0    26246    musteri_urun 
   TABLE DATA               6   COPY public.musteri_urun ("mİd", "uİd") FROM stdin;
    public       postgres    false    202       2864.dat *          0    26155    onlineSatısTakip 
   TABLE DATA               I   COPY public."onlineSatısTakip" ("Ad", "Adress", email, tel) FROM stdin;
    public       postgres    false    196       2858.dat -          0    26222    talep 
   TABLE DATA               X   COPY public.talep ("urunSayisi", "toplamFiyat", "talepİd", "Mİd", "uİd") FROM stdin;
    public       postgres    false    199       2861.dat 2          0    26269 
   talep_urun 
   TABLE DATA               A   COPY public.talep_urun ("uId", "tİd", "talepTarih") FROM stdin;
    public       postgres    false    204       2866.dat ,          0    26165    urun 
   TABLE DATA               X   COPY public.urun ("uId", "uAd", "uFiyat", "uGaranti", "uOzellik", "katİd") FROM stdin;
    public       postgres    false    198       2860.dat �
           2606    26232    kargo Kargo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.kargo
    ADD CONSTRAINT "Kargo_pkey" PRIMARY KEY ("kId");
 <   ALTER TABLE ONLY public.kargo DROP CONSTRAINT "Kargo_pkey";
       public         postgres    false    200         �
           2606    26253    kategory Kategory_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.kategory
    ADD CONSTRAINT "Kategory_pkey" PRIMARY KEY ("katİd");
 B   ALTER TABLE ONLY public.kategory DROP CONSTRAINT "Kategory_pkey";
       public         postgres    false    203         �
           2606    26164    musteri Musteri_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT "Musteri_pkey" PRIMARY KEY (m_id);
 @   ALTER TABLE ONLY public.musteri DROP CONSTRAINT "Musteri_pkey";
       public         postgres    false    197         �
           2606    26237    talep Talep_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.talep
    ADD CONSTRAINT "Talep_pkey" PRIMARY KEY ("talepİd");
 <   ALTER TABLE ONLY public.talep DROP CONSTRAINT "Talep_pkey";
       public         postgres    false    199         �
           2606    26172    urun Urun_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.urun
    ADD CONSTRAINT "Urun_pkey" PRIMARY KEY ("uId");
 :   ALTER TABLE ONLY public.urun DROP CONSTRAINT "Urun_pkey";
       public         postgres    false    198         �
           2606    26159 (   onlineSatısTakip onlineSatısTakip_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."onlineSatısTakip"
    ADD CONSTRAINT "onlineSatısTakip_pkey" PRIMARY KEY (tel);
 V   ALTER TABLE ONLY public."onlineSatısTakip" DROP CONSTRAINT "onlineSatısTakip_pkey";
       public         postgres    false    196         �
           2606    26292    kargo_Talep kargo_talep    FK CONSTRAINT     �   ALTER TABLE ONLY public."kargo_Talep"
    ADD CONSTRAINT kargo_talep FOREIGN KEY ("tId") REFERENCES public.talep("talepİd") NOT VALID;
 C   ALTER TABLE ONLY public."kargo_Talep" DROP CONSTRAINT kargo_talep;
       public       postgres    false    2726    201    199         �
           2606    26259    urun kat_urun    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun
    ADD CONSTRAINT kat_urun FOREIGN KEY ("katİd") REFERENCES public.kategory("katİd") NOT VALID;
 7   ALTER TABLE ONLY public.urun DROP CONSTRAINT kat_urun;
       public       postgres    false    2730    198    203         �
           2606    26287    kargo_Talep talep_kargo    FK CONSTRAINT     �   ALTER TABLE ONLY public."kargo_Talep"
    ADD CONSTRAINT talep_kargo FOREIGN KEY ("kİd") REFERENCES public.kargo("kId") NOT VALID;
 C   ALTER TABLE ONLY public."kargo_Talep" DROP CONSTRAINT talep_kargo;
       public       postgres    false    200    201    2728         �
           2606    26254    talep talep_mus    FK CONSTRAINT     {   ALTER TABLE ONLY public.talep
    ADD CONSTRAINT talep_mus FOREIGN KEY ("Mİd") REFERENCES public.musteri(m_id) NOT VALID;
 9   ALTER TABLE ONLY public.talep DROP CONSTRAINT talep_mus;
       public       postgres    false    197    2722    199         �
           2606    26272    talep_urun talep_urun    FK CONSTRAINT     �   ALTER TABLE ONLY public.talep_urun
    ADD CONSTRAINT talep_urun FOREIGN KEY ("tİd") REFERENCES public.talep("talepİd") NOT VALID;
 ?   ALTER TABLE ONLY public.talep_urun DROP CONSTRAINT talep_urun;
       public       postgres    false    204    199    2726         �
           2606    26277    talep_urun urun_talep    FK CONSTRAINT     ~   ALTER TABLE ONLY public.talep_urun
    ADD CONSTRAINT urun_talep FOREIGN KEY ("uId") REFERENCES public.urun("uId") NOT VALID;
 ?   ALTER TABLE ONLY public.talep_urun DROP CONSTRAINT urun_talep;
       public       postgres    false    198    204    2724                                          2862.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2863.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2865.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2859.dat                                                                                            0000600 0004000 0002000 00000000074 13647645500 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	malik	kassum 	05392398881
3	malik	kassum 	8888888888
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2864.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2858.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2861.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2866.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2860.dat                                                                                            0000600 0004000 0002000 00000000005 13647645500 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000020113 13647645500 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

DROP DATABASE "Online Satis";
--
-- Name: Online Satis; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Online Satis" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';


ALTER DATABASE "Online Satis" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Online Satis'"

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
-- Name: kargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kargo (
    "kAd" character varying,
    "kTeslimTarihi" date,
    "kTeslimDurumu" character(1),
    "kId" integer NOT NULL
);


ALTER TABLE public.kargo OWNER TO postgres;

--
-- Name: kargo_Talep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."kargo_Talep" (
    "tId" integer,
    "kİd" integer,
    "gonderimTarih" date
);


ALTER TABLE public."kargo_Talep" OWNER TO postgres;

--
-- Name: kategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategory (
    "katİd" integer NOT NULL,
    "kAd" character(1)
);


ALTER TABLE public.kategory OWNER TO postgres;

--
-- Name: musteri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.musteri (
    m_id integer NOT NULL,
    m_ad character varying,
    m_soyad character varying,
    m_tel character varying
);


ALTER TABLE public.musteri OWNER TO postgres;

--
-- Name: musteri_urun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.musteri_urun (
    "mİd" integer,
    "uİd" integer
);


ALTER TABLE public.musteri_urun OWNER TO postgres;

--
-- Name: onlineSatısTakip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."onlineSatısTakip" (
    "Ad" character varying,
    "Adress" character varying,
    email character varying,
    tel bigint NOT NULL
);


ALTER TABLE public."onlineSatısTakip" OWNER TO postgres;

--
-- Name: talep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talep (
    "urunSayisi" integer,
    "toplamFiyat" integer,
    "talepİd" integer NOT NULL,
    "Mİd" integer,
    "uİd" integer
);


ALTER TABLE public.talep OWNER TO postgres;

--
-- Name: talep_urun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talep_urun (
    "uId" integer,
    "tİd" integer,
    "talepTarih" date
);


ALTER TABLE public.talep_urun OWNER TO postgres;

--
-- Name: urun; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.urun (
    "uId" integer NOT NULL,
    "uAd" character varying,
    "uFiyat" integer,
    "uGaranti" integer,
    "uOzellik" json,
    "katİd" integer
);


ALTER TABLE public.urun OWNER TO postgres;

--
-- Data for Name: kargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kargo ("kAd", "kTeslimTarihi", "kTeslimDurumu", "kId") FROM stdin;
\.
COPY public.kargo ("kAd", "kTeslimTarihi", "kTeslimDurumu", "kId") FROM '$$PATH$$/2862.dat';

--
-- Data for Name: kargo_Talep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."kargo_Talep" ("tId", "kİd", "gonderimTarih") FROM stdin;
\.
COPY public."kargo_Talep" ("tId", "kİd", "gonderimTarih") FROM '$$PATH$$/2863.dat';

--
-- Data for Name: kategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategory ("katİd", "kAd") FROM stdin;
\.
COPY public.kategory ("katİd", "kAd") FROM '$$PATH$$/2865.dat';

--
-- Data for Name: musteri; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.musteri (m_id, m_ad, m_soyad, m_tel) FROM stdin;
\.
COPY public.musteri (m_id, m_ad, m_soyad, m_tel) FROM '$$PATH$$/2859.dat';

--
-- Data for Name: musteri_urun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.musteri_urun ("mİd", "uİd") FROM stdin;
\.
COPY public.musteri_urun ("mİd", "uİd") FROM '$$PATH$$/2864.dat';

--
-- Data for Name: onlineSatısTakip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."onlineSatısTakip" ("Ad", "Adress", email, tel) FROM stdin;
\.
COPY public."onlineSatısTakip" ("Ad", "Adress", email, tel) FROM '$$PATH$$/2858.dat';

--
-- Data for Name: talep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talep ("urunSayisi", "toplamFiyat", "talepİd", "Mİd", "uİd") FROM stdin;
\.
COPY public.talep ("urunSayisi", "toplamFiyat", "talepİd", "Mİd", "uİd") FROM '$$PATH$$/2861.dat';

--
-- Data for Name: talep_urun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talep_urun ("uId", "tİd", "talepTarih") FROM stdin;
\.
COPY public.talep_urun ("uId", "tİd", "talepTarih") FROM '$$PATH$$/2866.dat';

--
-- Data for Name: urun; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.urun ("uId", "uAd", "uFiyat", "uGaranti", "uOzellik", "katİd") FROM stdin;
\.
COPY public.urun ("uId", "uAd", "uFiyat", "uGaranti", "uOzellik", "katİd") FROM '$$PATH$$/2860.dat';

--
-- Name: kargo Kargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kargo
    ADD CONSTRAINT "Kargo_pkey" PRIMARY KEY ("kId");


--
-- Name: kategory Kategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategory
    ADD CONSTRAINT "Kategory_pkey" PRIMARY KEY ("katİd");


--
-- Name: musteri Musteri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT "Musteri_pkey" PRIMARY KEY (m_id);


--
-- Name: talep Talep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talep
    ADD CONSTRAINT "Talep_pkey" PRIMARY KEY ("talepİd");


--
-- Name: urun Urun_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.urun
    ADD CONSTRAINT "Urun_pkey" PRIMARY KEY ("uId");


--
-- Name: onlineSatısTakip onlineSatısTakip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."onlineSatısTakip"
    ADD CONSTRAINT "onlineSatısTakip_pkey" PRIMARY KEY (tel);


--
-- Name: kargo_Talep kargo_talep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kargo_Talep"
    ADD CONSTRAINT kargo_talep FOREIGN KEY ("tId") REFERENCES public.talep("talepİd") NOT VALID;


--
-- Name: urun kat_urun; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.urun
    ADD CONSTRAINT kat_urun FOREIGN KEY ("katİd") REFERENCES public.kategory("katİd") NOT VALID;


--
-- Name: kargo_Talep talep_kargo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kargo_Talep"
    ADD CONSTRAINT talep_kargo FOREIGN KEY ("kİd") REFERENCES public.kargo("kId") NOT VALID;


--
-- Name: talep talep_mus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talep
    ADD CONSTRAINT talep_mus FOREIGN KEY ("Mİd") REFERENCES public.musteri(m_id) NOT VALID;


--
-- Name: talep_urun talep_urun; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talep_urun
    ADD CONSTRAINT talep_urun FOREIGN KEY ("tİd") REFERENCES public.talep("talepİd") NOT VALID;


--
-- Name: talep_urun urun_talep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talep_urun
    ADD CONSTRAINT urun_talep FOREIGN KEY ("uId") REFERENCES public.urun("uId") NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     