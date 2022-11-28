--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-28 15:11:55

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
-- TOC entry 247 (class 1259 OID 16520)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_prices money,
    stock integer,
    categoryid integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16530)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3420 (class 0 OID 16520)
-- Dependencies: 247
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, unit_prices, stock, categoryid) OVERRIDING SYSTEM VALUE VALUES (4, 'kulaklık', '£70.00', 10, NULL);
INSERT INTO public.products (id, name, unit_prices, stock, categoryid) OVERRIDING SYSTEM VALUE VALUES (6, 'Masaüstü', '£800.00', 15, NULL);
INSERT INTO public.products (id, name, unit_prices, stock, categoryid) OVERRIDING SYSTEM VALUE VALUES (7, 'Laptop', '£1,100.00', 8, NULL);
INSERT INTO public.products (id, name, unit_prices, stock, categoryid) OVERRIDING SYSTEM VALUE VALUES (8, 'telefon', '£950.00', 12, NULL);
INSERT INTO public.products (id, name, unit_prices, stock, categoryid) OVERRIDING SYSTEM VALUE VALUES (5, 'Tablet', '£500.00', 30, NULL);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 251
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 8, true);


--
-- TOC entry 3276 (class 2606 OID 16609)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 16709)
-- Name: products product_fk_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_fk_category FOREIGN KEY (categoryid) REFERENCES public.categories(id);


-- Completed on 2022-11-28 15:11:55

--
-- PostgreSQL database dump complete
--

