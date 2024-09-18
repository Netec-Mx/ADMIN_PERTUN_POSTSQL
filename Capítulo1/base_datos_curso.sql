--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-01 20:47:48

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
-- TOC entry 214 (class 1259 OID 232307)
-- Name: barrios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barrios (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public.barrios OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 232312)
-- Name: barrios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barrios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.barrios_id_seq OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 215
-- Name: barrios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barrios_id_seq OWNED BY public.barrios.id;


--
-- TOC entry 231 (class 1259 OID 232413)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    id integer NOT NULL,
    nomb_cat text NOT NULL
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 232412)
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_id_seq OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 230
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;


--
-- TOC entry 216 (class 1259 OID 232313)
-- Name: ciudades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudades (
    id integer NOT NULL,
    nombre text NOT NULL,
    estado integer NOT NULL,
    departamento_codigo integer NOT NULL
);


ALTER TABLE public.ciudades OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 232318)
-- Name: ciudades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciudades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciudades_id_seq OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 217
-- Name: ciudades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciudades_id_seq OWNED BY public.ciudades.id;


--
-- TOC entry 218 (class 1259 OID 232319)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id bigint NOT NULL,
    identificacion text NOT NULL,
    nombres text NOT NULL,
    apellidos text NOT NULL,
    direccion text,
    ciudad_id bigint
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 232324)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 234 (class 1259 OID 232457)
-- Name: clientes_simplificado; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.clientes_simplificado AS
 SELECT clientes.nombres,
    clientes.apellidos
   FROM public.clientes;


ALTER VIEW public.clientes_simplificado OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 232325)
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    id integer NOT NULL,
    nombre text NOT NULL,
    codigo integer NOT NULL,
    paises_id integer
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 232330)
-- Name: departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamentos_id_seq OWNER TO postgres;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 221
-- Name: departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;


--
-- TOC entry 238 (class 1259 OID 240668)
-- Name: dummy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dummy (
    campo1 integer,
    campo2 text
);


ALTER TABLE public.dummy OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 232476)
-- Name: dummy2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dummy2 (
    intervalo interval(2),
    hora time without time zone,
    fecha date,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.dummy2 OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 232331)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas (
    id bigint NOT NULL,
    cliente_id bigint NOT NULL,
    fecha date NOT NULL,
    impuestos numeric(12,2) NOT NULL,
    total numeric(12,2) NOT NULL,
    numero text
);


ALTER TABLE public.facturas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 232336)
-- Name: facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.facturas_id_seq OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 223
-- Name: facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facturas_id_seq OWNED BY public.facturas.id;


--
-- TOC entry 224 (class 1259 OID 232337)
-- Name: facturas_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas_item (
    id bigint NOT NULL,
    factura_id bigint,
    producto_id bigint NOT NULL,
    cantidad numeric(12,2) NOT NULL,
    valor_unitario numeric(12,2) NOT NULL,
    subtotal numeric(12,2) NOT NULL
);


ALTER TABLE public.facturas_item OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 232340)
-- Name: facturas_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facturas_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.facturas_item_id_seq OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 225
-- Name: facturas_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facturas_item_id_seq OWNED BY public.facturas_item.id;


--
-- TOC entry 232 (class 1259 OID 232451)
-- Name: fechas1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fechas1 (
    fecha date
);


ALTER TABLE public.fechas1 OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 232454)
-- Name: fechas2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fechas2 (
    fecha date
);


ALTER TABLE public.fechas2 OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 232341)
-- Name: paises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paises (
    id integer NOT NULL,
    iso3166a1 character(2) DEFAULT NULL::bpchar,
    nombre text
);


ALTER TABLE public.paises OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 232347)
-- Name: paises_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.paises_id_seq OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 227
-- Name: paises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paises_id_seq OWNED BY public.paises.id;


--
-- TOC entry 228 (class 1259 OID 232348)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id bigint NOT NULL,
    nombre text NOT NULL,
    saldo numeric(12,2) NOT NULL,
    precio numeric(12,2),
    descripcion text,
    categoria_id integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 232479)
-- Name: productos2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos2 (
    id bigint,
    nombre text,
    saldo numeric(12,2),
    precio numeric(12,2),
    descripcion text,
    categoria_id integer
);


ALTER TABLE public.productos2 OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 232353)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 229
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 235 (class 1259 OID 232465)
-- Name: ventas_por_fecha; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.ventas_por_fecha AS
 SELECT facturas.fecha,
    sum(facturas.total) AS sum
   FROM public.facturas
  GROUP BY facturas.fecha
  ORDER BY facturas.fecha DESC
  WITH NO DATA;


ALTER MATERIALIZED VIEW public.ventas_por_fecha OWNER TO postgres;

--
-- TOC entry 3241 (class 2604 OID 232354)
-- Name: barrios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barrios ALTER COLUMN id SET DEFAULT nextval('public.barrios_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 232416)
-- Name: categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 232355)
-- Name: ciudades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades ALTER COLUMN id SET DEFAULT nextval('public.ciudades_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 232356)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 232357)
-- Name: departamentos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 232358)
-- Name: facturas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas ALTER COLUMN id SET DEFAULT nextval('public.facturas_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 232359)
-- Name: facturas_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas_item ALTER COLUMN id SET DEFAULT nextval('public.facturas_item_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 232360)
-- Name: paises id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises ALTER COLUMN id SET DEFAULT nextval('public.paises_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 232361)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 3421 (class 0 OID 232307)
-- Dependencies: 214
-- Data for Name: barrios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.barrios VALUES (1, 'Usaquén');
INSERT INTO public.barrios VALUES (2, 'Chapinero');
INSERT INTO public.barrios VALUES (3, 'Santa Fe');
INSERT INTO public.barrios VALUES (4, 'San Cristóbal');
INSERT INTO public.barrios VALUES (5, 'Usme');
INSERT INTO public.barrios VALUES (6, 'Tunjuelito');
INSERT INTO public.barrios VALUES (7, 'Bosa');
INSERT INTO public.barrios VALUES (8, 'Kennedy');
INSERT INTO public.barrios VALUES (9, 'Fontibón');
INSERT INTO public.barrios VALUES (10, 'Engativá');
INSERT INTO public.barrios VALUES (11, 'Suba');
INSERT INTO public.barrios VALUES (12, 'Barrios Unidos');
INSERT INTO public.barrios VALUES (13, 'Teusaquillo');
INSERT INTO public.barrios VALUES (14, 'Los Mártires');
INSERT INTO public.barrios VALUES (15, 'Antonio Nariño');
INSERT INTO public.barrios VALUES (16, 'Puente Aranda');
INSERT INTO public.barrios VALUES (17, 'La Candelaria');
INSERT INTO public.barrios VALUES (18, 'Rafael Uribe Uribe');
INSERT INTO public.barrios VALUES (19, 'Ciudad Bolívar');
INSERT INTO public.barrios VALUES (20, 'Sumapaz');


--
-- TOC entry 3438 (class 0 OID 232413)
-- Dependencies: 231
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorias VALUES (1, 'A');
INSERT INTO public.categorias VALUES (2, 'B');
INSERT INTO public.categorias VALUES (3, 'C');
INSERT INTO public.categorias VALUES (4, 'D');
INSERT INTO public.categorias VALUES (5, 'E');


--
-- TOC entry 3423 (class 0 OID 232313)
-- Dependencies: 216
-- Data for Name: ciudades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ciudades VALUES (1, 'Abriaquí', 1, 5);
INSERT INTO public.ciudades VALUES (2, 'Acacías', 1, 50);
INSERT INTO public.ciudades VALUES (3, 'Acandí', 1, 27);
INSERT INTO public.ciudades VALUES (4, 'Acevedo', 1, 41);
INSERT INTO public.ciudades VALUES (5, 'Achí', 1, 13);
INSERT INTO public.ciudades VALUES (6, 'Agrado', 1, 41);
INSERT INTO public.ciudades VALUES (7, 'Agua de Dios', 1, 25);
INSERT INTO public.ciudades VALUES (8, 'Aguachica', 1, 20);
INSERT INTO public.ciudades VALUES (9, 'Aguada', 1, 68);
INSERT INTO public.ciudades VALUES (10, 'Aguadas', 1, 17);
INSERT INTO public.ciudades VALUES (11, 'Aguazul', 1, 85);
INSERT INTO public.ciudades VALUES (12, 'Agustín Codazzi', 1, 20);
INSERT INTO public.ciudades VALUES (13, 'Aipe', 1, 41);
INSERT INTO public.ciudades VALUES (14, 'Albania', 1, 18);
INSERT INTO public.ciudades VALUES (15, 'Albania', 1, 44);
INSERT INTO public.ciudades VALUES (16, 'Albania', 1, 68);
INSERT INTO public.ciudades VALUES (17, 'Albán', 1, 25);
INSERT INTO public.ciudades VALUES (18, 'Albán (San José)', 1, 52);
INSERT INTO public.ciudades VALUES (19, 'Alcalá', 1, 76);
INSERT INTO public.ciudades VALUES (20, 'Alejandria', 1, 5);
INSERT INTO public.ciudades VALUES (21, 'Algarrobo', 1, 47);
INSERT INTO public.ciudades VALUES (22, 'Algeciras', 1, 41);
INSERT INTO public.ciudades VALUES (23, 'Almaguer', 1, 19);
INSERT INTO public.ciudades VALUES (24, 'Almeida', 1, 15);
INSERT INTO public.ciudades VALUES (25, 'Alpujarra', 1, 73);
INSERT INTO public.ciudades VALUES (26, 'Altamira', 1, 41);
INSERT INTO public.ciudades VALUES (27, 'Alto Baudó (Pie de Pato)', 1, 27);
INSERT INTO public.ciudades VALUES (28, 'Altos del Rosario', 1, 13);
INSERT INTO public.ciudades VALUES (29, 'Alvarado', 1, 73);
INSERT INTO public.ciudades VALUES (30, 'Amagá', 1, 5);
INSERT INTO public.ciudades VALUES (31, 'Amalfi', 1, 5);
INSERT INTO public.ciudades VALUES (32, 'Ambalema', 1, 73);
INSERT INTO public.ciudades VALUES (33, 'Anapoima', 1, 25);
INSERT INTO public.ciudades VALUES (34, 'Ancuya', 1, 52);
INSERT INTO public.ciudades VALUES (35, 'Andalucía', 1, 76);
INSERT INTO public.ciudades VALUES (36, 'Andes', 1, 5);
INSERT INTO public.ciudades VALUES (37, 'Angelópolis', 1, 5);
INSERT INTO public.ciudades VALUES (38, 'Angostura', 1, 5);
INSERT INTO public.ciudades VALUES (39, 'Anolaima', 1, 25);
INSERT INTO public.ciudades VALUES (40, 'Anorí', 1, 5);
INSERT INTO public.ciudades VALUES (41, 'Anserma', 1, 17);
INSERT INTO public.ciudades VALUES (42, 'Ansermanuevo', 1, 76);
INSERT INTO public.ciudades VALUES (43, 'Anzoátegui', 1, 73);
INSERT INTO public.ciudades VALUES (44, 'Anzá', 1, 5);
INSERT INTO public.ciudades VALUES (45, 'Apartadó', 1, 5);
INSERT INTO public.ciudades VALUES (46, 'Apulo', 1, 25);
INSERT INTO public.ciudades VALUES (47, 'Apía', 1, 66);
INSERT INTO public.ciudades VALUES (48, 'Aquitania', 1, 15);
INSERT INTO public.ciudades VALUES (49, 'Aracataca', 1, 47);
INSERT INTO public.ciudades VALUES (50, 'Aranzazu', 1, 17);
INSERT INTO public.ciudades VALUES (51, 'Aratoca', 1, 68);
INSERT INTO public.ciudades VALUES (52, 'Arauca', 1, 81);
INSERT INTO public.ciudades VALUES (53, 'Arauquita', 1, 81);
INSERT INTO public.ciudades VALUES (54, 'Arbeláez', 1, 25);
INSERT INTO public.ciudades VALUES (55, 'Arboleda (Berruecos)', 1, 52);
INSERT INTO public.ciudades VALUES (56, 'Arboledas', 1, 54);
INSERT INTO public.ciudades VALUES (57, 'Arboletes', 1, 5);
INSERT INTO public.ciudades VALUES (58, 'Arcabuco', 1, 15);
INSERT INTO public.ciudades VALUES (59, 'Arenal', 1, 13);
INSERT INTO public.ciudades VALUES (60, 'Argelia', 1, 5);
INSERT INTO public.ciudades VALUES (61, 'Argelia', 1, 19);
INSERT INTO public.ciudades VALUES (62, 'Argelia', 1, 76);
INSERT INTO public.ciudades VALUES (63, 'Ariguaní (El Difícil)', 1, 47);
INSERT INTO public.ciudades VALUES (64, 'Arjona', 1, 13);
INSERT INTO public.ciudades VALUES (65, 'Armenia', 1, 5);
INSERT INTO public.ciudades VALUES (66, 'Armenia', 1, 63);
INSERT INTO public.ciudades VALUES (67, 'Armero (Guayabal)', 1, 73);
INSERT INTO public.ciudades VALUES (68, 'Arroyohondo', 1, 13);
INSERT INTO public.ciudades VALUES (69, 'Astrea', 1, 20);
INSERT INTO public.ciudades VALUES (70, 'Ataco', 1, 73);
INSERT INTO public.ciudades VALUES (71, 'Atrato (Yuto)', 1, 27);
INSERT INTO public.ciudades VALUES (72, 'Ayapel', 1, 23);
INSERT INTO public.ciudades VALUES (73, 'Bagadó', 1, 27);
INSERT INTO public.ciudades VALUES (74, 'Bahía Solano (Mútis)', 1, 27);
INSERT INTO public.ciudades VALUES (75, 'Bajo Baudó (Pizarro)', 1, 27);
INSERT INTO public.ciudades VALUES (76, 'Balboa', 1, 19);
INSERT INTO public.ciudades VALUES (77, 'Balboa', 1, 66);
INSERT INTO public.ciudades VALUES (78, 'Baranoa', 1, 8);
INSERT INTO public.ciudades VALUES (79, 'Baraya', 1, 41);
INSERT INTO public.ciudades VALUES (80, 'Barbacoas', 1, 52);
INSERT INTO public.ciudades VALUES (81, 'Barbosa', 1, 5);
INSERT INTO public.ciudades VALUES (82, 'Barbosa', 1, 68);
INSERT INTO public.ciudades VALUES (83, 'Barichara', 1, 68);
INSERT INTO public.ciudades VALUES (84, 'Barranca de Upía', 1, 50);
INSERT INTO public.ciudades VALUES (85, 'Barrancabermeja', 1, 68);
INSERT INTO public.ciudades VALUES (86, 'Barrancas', 1, 44);
INSERT INTO public.ciudades VALUES (87, 'Barranco de Loba', 1, 13);
INSERT INTO public.ciudades VALUES (88, 'Barranquilla', 1, 8);
INSERT INTO public.ciudades VALUES (89, 'Becerríl', 1, 20);
INSERT INTO public.ciudades VALUES (90, 'Belalcázar', 1, 17);
INSERT INTO public.ciudades VALUES (91, 'Bello', 1, 5);
INSERT INTO public.ciudades VALUES (92, 'Belmira', 1, 5);
INSERT INTO public.ciudades VALUES (93, 'Beltrán', 1, 25);
INSERT INTO public.ciudades VALUES (94, 'Belén', 1, 15);
INSERT INTO public.ciudades VALUES (95, 'Belén', 1, 52);
INSERT INTO public.ciudades VALUES (96, 'Belén de Bajirá', 1, 27);
INSERT INTO public.ciudades VALUES (97, 'Belén de Umbría', 1, 66);
INSERT INTO public.ciudades VALUES (98, 'Belén de los Andaquíes', 1, 18);
INSERT INTO public.ciudades VALUES (99, 'Berbeo', 1, 15);
INSERT INTO public.ciudades VALUES (100, 'Betania', 1, 5);
INSERT INTO public.ciudades VALUES (101, 'Beteitiva', 1, 15);
INSERT INTO public.ciudades VALUES (102, 'Betulia', 1, 5);
INSERT INTO public.ciudades VALUES (103, 'Betulia', 1, 68);
INSERT INTO public.ciudades VALUES (104, 'Bituima', 1, 25);
INSERT INTO public.ciudades VALUES (105, 'Boavita', 1, 15);
INSERT INTO public.ciudades VALUES (106, 'Bochalema', 1, 54);
INSERT INTO public.ciudades VALUES (107, 'Bogotá D.C.', 1, 11);
INSERT INTO public.ciudades VALUES (108, 'Bojacá', 1, 25);
INSERT INTO public.ciudades VALUES (109, 'Bojayá (Bellavista)', 1, 27);
INSERT INTO public.ciudades VALUES (110, 'Bolívar', 1, 5);
INSERT INTO public.ciudades VALUES (111, 'Bolívar', 1, 19);
INSERT INTO public.ciudades VALUES (112, 'Bolívar', 1, 68);
INSERT INTO public.ciudades VALUES (113, 'Bolívar', 1, 76);
INSERT INTO public.ciudades VALUES (114, 'Bosconia', 1, 20);
INSERT INTO public.ciudades VALUES (115, 'Boyacá', 1, 15);
INSERT INTO public.ciudades VALUES (116, 'Briceño', 1, 5);
INSERT INTO public.ciudades VALUES (117, 'Briceño', 1, 15);
INSERT INTO public.ciudades VALUES (118, 'Bucaramanga', 1, 68);
INSERT INTO public.ciudades VALUES (119, 'Bucarasica', 1, 54);
INSERT INTO public.ciudades VALUES (120, 'Buenaventura', 1, 76);
INSERT INTO public.ciudades VALUES (121, 'Buenavista', 1, 15);
INSERT INTO public.ciudades VALUES (122, 'Buenavista', 1, 23);
INSERT INTO public.ciudades VALUES (123, 'Buenavista', 1, 63);
INSERT INTO public.ciudades VALUES (124, 'Buenavista', 1, 70);
INSERT INTO public.ciudades VALUES (125, 'Buenos Aires', 1, 19);
INSERT INTO public.ciudades VALUES (126, 'Buesaco', 1, 52);
INSERT INTO public.ciudades VALUES (127, 'Buga', 1, 76);
INSERT INTO public.ciudades VALUES (128, 'Bugalagrande', 1, 76);
INSERT INTO public.ciudades VALUES (129, 'Burítica', 1, 5);
INSERT INTO public.ciudades VALUES (130, 'Busbanza', 1, 15);
INSERT INTO public.ciudades VALUES (131, 'Cabrera', 1, 25);
INSERT INTO public.ciudades VALUES (132, 'Cabrera', 1, 68);
INSERT INTO public.ciudades VALUES (133, 'Cabuyaro', 1, 50);
INSERT INTO public.ciudades VALUES (134, 'Cachipay', 1, 25);
INSERT INTO public.ciudades VALUES (135, 'Caicedo', 1, 5);
INSERT INTO public.ciudades VALUES (136, 'Caicedonia', 1, 76);
INSERT INTO public.ciudades VALUES (137, 'Caimito', 1, 70);
INSERT INTO public.ciudades VALUES (138, 'Cajamarca', 1, 73);
INSERT INTO public.ciudades VALUES (139, 'Cajibío', 1, 19);
INSERT INTO public.ciudades VALUES (140, 'Cajicá', 1, 25);
INSERT INTO public.ciudades VALUES (141, 'Calamar', 1, 13);
INSERT INTO public.ciudades VALUES (142, 'Calamar', 1, 95);
INSERT INTO public.ciudades VALUES (143, 'Calarcá', 1, 63);
INSERT INTO public.ciudades VALUES (144, 'Caldas', 1, 5);
INSERT INTO public.ciudades VALUES (145, 'Caldas', 1, 15);
INSERT INTO public.ciudades VALUES (146, 'Caldono', 1, 19);
INSERT INTO public.ciudades VALUES (147, 'California', 1, 68);
INSERT INTO public.ciudades VALUES (148, 'Calima (Darién)', 1, 76);
INSERT INTO public.ciudades VALUES (149, 'Caloto', 1, 19);
INSERT INTO public.ciudades VALUES (150, 'Calí', 1, 76);
INSERT INTO public.ciudades VALUES (151, 'Campamento', 1, 5);
INSERT INTO public.ciudades VALUES (152, 'Campo de la Cruz', 1, 8);
INSERT INTO public.ciudades VALUES (153, 'Campoalegre', 1, 41);
INSERT INTO public.ciudades VALUES (154, 'Campohermoso', 1, 15);
INSERT INTO public.ciudades VALUES (155, 'Canalete', 1, 23);
INSERT INTO public.ciudades VALUES (156, 'Candelaria', 1, 8);
INSERT INTO public.ciudades VALUES (157, 'Candelaria', 1, 76);
INSERT INTO public.ciudades VALUES (158, 'Cantagallo', 1, 13);
INSERT INTO public.ciudades VALUES (159, 'Cantón de San Pablo', 1, 27);
INSERT INTO public.ciudades VALUES (160, 'Caparrapí', 1, 25);
INSERT INTO public.ciudades VALUES (161, 'Capitanejo', 1, 68);
INSERT INTO public.ciudades VALUES (162, 'Caracolí', 1, 5);
INSERT INTO public.ciudades VALUES (163, 'Caramanta', 1, 5);
INSERT INTO public.ciudades VALUES (164, 'Carcasí', 1, 68);
INSERT INTO public.ciudades VALUES (165, 'Carepa', 1, 5);
INSERT INTO public.ciudades VALUES (166, 'Carmen de Apicalá', 1, 73);
INSERT INTO public.ciudades VALUES (167, 'Carmen de Carupa', 1, 25);
INSERT INTO public.ciudades VALUES (168, 'Carmen de Viboral', 1, 5);
INSERT INTO public.ciudades VALUES (169, 'Carmen del Darién (CURBARADÓ)', 1, 27);
INSERT INTO public.ciudades VALUES (170, 'Carolina', 1, 5);
INSERT INTO public.ciudades VALUES (171, 'Cartagena', 1, 13);
INSERT INTO public.ciudades VALUES (172, 'Cartagena del Chairá', 1, 18);
INSERT INTO public.ciudades VALUES (173, 'Cartago', 1, 76);
INSERT INTO public.ciudades VALUES (174, 'Carurú', 1, 97);
INSERT INTO public.ciudades VALUES (175, 'Casabianca', 1, 73);
INSERT INTO public.ciudades VALUES (176, 'Castilla la Nueva', 1, 50);
INSERT INTO public.ciudades VALUES (177, 'Caucasia', 1, 5);
INSERT INTO public.ciudades VALUES (178, 'Cañasgordas', 1, 5);
INSERT INTO public.ciudades VALUES (179, 'Cepita', 1, 68);
INSERT INTO public.ciudades VALUES (180, 'Cereté', 1, 23);
INSERT INTO public.ciudades VALUES (181, 'Cerinza', 1, 15);
INSERT INTO public.ciudades VALUES (182, 'Cerrito', 1, 68);
INSERT INTO public.ciudades VALUES (183, 'Cerro San Antonio', 1, 47);
INSERT INTO public.ciudades VALUES (184, 'Chachaguí', 1, 52);
INSERT INTO public.ciudades VALUES (185, 'Chaguaní', 1, 25);
INSERT INTO public.ciudades VALUES (186, 'Chalán', 1, 70);
INSERT INTO public.ciudades VALUES (187, 'Chaparral', 1, 73);
INSERT INTO public.ciudades VALUES (188, 'Charalá', 1, 68);
INSERT INTO public.ciudades VALUES (189, 'Charta', 1, 68);
INSERT INTO public.ciudades VALUES (190, 'Chigorodó', 1, 5);
INSERT INTO public.ciudades VALUES (191, 'Chima', 1, 68);
INSERT INTO public.ciudades VALUES (192, 'Chimichagua', 1, 20);
INSERT INTO public.ciudades VALUES (193, 'Chimá', 1, 23);
INSERT INTO public.ciudades VALUES (194, 'Chinavita', 1, 15);
INSERT INTO public.ciudades VALUES (195, 'Chinchiná', 1, 17);
INSERT INTO public.ciudades VALUES (196, 'Chinácota', 1, 54);
INSERT INTO public.ciudades VALUES (197, 'Chinú', 1, 23);
INSERT INTO public.ciudades VALUES (198, 'Chipaque', 1, 25);
INSERT INTO public.ciudades VALUES (199, 'Chipatá', 1, 68);
INSERT INTO public.ciudades VALUES (200, 'Chiquinquirá', 1, 15);
INSERT INTO public.ciudades VALUES (201, 'Chiriguaná', 1, 20);
INSERT INTO public.ciudades VALUES (202, 'Chiscas', 1, 15);
INSERT INTO public.ciudades VALUES (203, 'Chita', 1, 15);
INSERT INTO public.ciudades VALUES (204, 'Chitagá', 1, 54);
INSERT INTO public.ciudades VALUES (205, 'Chitaraque', 1, 15);
INSERT INTO public.ciudades VALUES (206, 'Chivatá', 1, 15);
INSERT INTO public.ciudades VALUES (207, 'Chivolo', 1, 47);
INSERT INTO public.ciudades VALUES (208, 'Choachí', 1, 25);
INSERT INTO public.ciudades VALUES (209, 'Chocontá', 1, 25);
INSERT INTO public.ciudades VALUES (210, 'Chámeza', 1, 85);
INSERT INTO public.ciudades VALUES (211, 'Chía', 1, 25);
INSERT INTO public.ciudades VALUES (212, 'Chíquiza', 1, 15);
INSERT INTO public.ciudades VALUES (213, 'Chívor', 1, 15);
INSERT INTO public.ciudades VALUES (214, 'Cicuco', 1, 13);
INSERT INTO public.ciudades VALUES (215, 'Cimitarra', 1, 68);
INSERT INTO public.ciudades VALUES (216, 'Circasia', 1, 63);
INSERT INTO public.ciudades VALUES (217, 'Cisneros', 1, 5);
INSERT INTO public.ciudades VALUES (218, 'Ciénaga', 1, 15);
INSERT INTO public.ciudades VALUES (219, 'Ciénaga', 1, 47);
INSERT INTO public.ciudades VALUES (220, 'Ciénaga de Oro', 1, 23);
INSERT INTO public.ciudades VALUES (221, 'Clemencia', 1, 13);
INSERT INTO public.ciudades VALUES (222, 'Cocorná', 1, 5);
INSERT INTO public.ciudades VALUES (223, 'Coello', 1, 73);
INSERT INTO public.ciudades VALUES (224, 'Cogua', 1, 25);
INSERT INTO public.ciudades VALUES (225, 'Colombia', 1, 41);
INSERT INTO public.ciudades VALUES (226, 'Colosó (Ricaurte)', 1, 70);
INSERT INTO public.ciudades VALUES (227, 'Colón', 1, 86);
INSERT INTO public.ciudades VALUES (228, 'Colón (Génova)', 1, 52);
INSERT INTO public.ciudades VALUES (229, 'Concepción', 1, 5);
INSERT INTO public.ciudades VALUES (230, 'Concepción', 1, 68);
INSERT INTO public.ciudades VALUES (231, 'Concordia', 1, 5);
INSERT INTO public.ciudades VALUES (232, 'Concordia', 1, 47);
INSERT INTO public.ciudades VALUES (233, 'Condoto', 1, 27);
INSERT INTO public.ciudades VALUES (234, 'Confines', 1, 68);
INSERT INTO public.ciudades VALUES (235, 'Consaca', 1, 52);
INSERT INTO public.ciudades VALUES (236, 'Contadero', 1, 52);
INSERT INTO public.ciudades VALUES (237, 'Contratación', 1, 68);
INSERT INTO public.ciudades VALUES (238, 'Convención', 1, 54);
INSERT INTO public.ciudades VALUES (239, 'Copacabana', 1, 5);
INSERT INTO public.ciudades VALUES (240, 'Coper', 1, 15);
INSERT INTO public.ciudades VALUES (241, 'Cordobá', 1, 63);
INSERT INTO public.ciudades VALUES (242, 'Corinto', 1, 19);
INSERT INTO public.ciudades VALUES (243, 'Coromoro', 1, 68);
INSERT INTO public.ciudades VALUES (244, 'Corozal', 1, 70);
INSERT INTO public.ciudades VALUES (245, 'Corrales', 1, 15);
INSERT INTO public.ciudades VALUES (246, 'Cota', 1, 25);
INSERT INTO public.ciudades VALUES (247, 'Cotorra', 1, 23);
INSERT INTO public.ciudades VALUES (248, 'Covarachía', 1, 15);
INSERT INTO public.ciudades VALUES (249, 'Coveñas', 1, 70);
INSERT INTO public.ciudades VALUES (250, 'Coyaima', 1, 73);
INSERT INTO public.ciudades VALUES (251, 'Cravo Norte', 1, 81);
INSERT INTO public.ciudades VALUES (252, 'Cuaspud (Carlosama)', 1, 52);
INSERT INTO public.ciudades VALUES (253, 'Cubarral', 1, 50);
INSERT INTO public.ciudades VALUES (254, 'Cubará', 1, 15);
INSERT INTO public.ciudades VALUES (255, 'Cucaita', 1, 15);
INSERT INTO public.ciudades VALUES (256, 'Cucunubá', 1, 25);
INSERT INTO public.ciudades VALUES (257, 'Cucutilla', 1, 54);
INSERT INTO public.ciudades VALUES (258, 'Cuitiva', 1, 15);
INSERT INTO public.ciudades VALUES (259, 'Cumaral', 1, 50);
INSERT INTO public.ciudades VALUES (260, 'Cumaribo', 1, 99);
INSERT INTO public.ciudades VALUES (261, 'Cumbal', 1, 52);
INSERT INTO public.ciudades VALUES (262, 'Cumbitara', 1, 52);
INSERT INTO public.ciudades VALUES (263, 'Cunday', 1, 73);
INSERT INTO public.ciudades VALUES (264, 'Curillo', 1, 18);
INSERT INTO public.ciudades VALUES (265, 'Curití', 1, 68);
INSERT INTO public.ciudades VALUES (266, 'Curumaní', 1, 20);
INSERT INTO public.ciudades VALUES (267, 'Cáceres', 1, 5);
INSERT INTO public.ciudades VALUES (268, 'Cáchira', 1, 54);
INSERT INTO public.ciudades VALUES (269, 'Cácota', 1, 54);
INSERT INTO public.ciudades VALUES (270, 'Cáqueza', 1, 25);
INSERT INTO public.ciudades VALUES (271, 'Cértegui', 1, 27);
INSERT INTO public.ciudades VALUES (272, 'Cómbita', 1, 15);
INSERT INTO public.ciudades VALUES (273, 'Córdoba', 1, 13);
INSERT INTO public.ciudades VALUES (274, 'Córdoba', 1, 52);
INSERT INTO public.ciudades VALUES (275, 'Cúcuta', 1, 54);
INSERT INTO public.ciudades VALUES (276, 'Dabeiba', 1, 5);
INSERT INTO public.ciudades VALUES (277, 'Dagua', 1, 76);
INSERT INTO public.ciudades VALUES (278, 'Dibulla', 1, 44);
INSERT INTO public.ciudades VALUES (279, 'Distracción', 1, 44);
INSERT INTO public.ciudades VALUES (280, 'Dolores', 1, 73);
INSERT INTO public.ciudades VALUES (281, 'Don Matías', 1, 5);
INSERT INTO public.ciudades VALUES (282, 'Dos Quebradas', 1, 66);
INSERT INTO public.ciudades VALUES (283, 'Duitama', 1, 15);
INSERT INTO public.ciudades VALUES (284, 'Durania', 1, 54);
INSERT INTO public.ciudades VALUES (285, 'Ebéjico', 1, 5);
INSERT INTO public.ciudades VALUES (286, 'El Bagre', 1, 5);
INSERT INTO public.ciudades VALUES (287, 'El Banco', 1, 47);
INSERT INTO public.ciudades VALUES (288, 'El Cairo', 1, 76);
INSERT INTO public.ciudades VALUES (289, 'El Calvario', 1, 50);
INSERT INTO public.ciudades VALUES (290, 'El Carmen', 1, 54);
INSERT INTO public.ciudades VALUES (291, 'El Carmen', 1, 68);
INSERT INTO public.ciudades VALUES (292, 'El Carmen de Atrato', 1, 27);
INSERT INTO public.ciudades VALUES (293, 'El Carmen de Bolívar', 1, 13);
INSERT INTO public.ciudades VALUES (294, 'El Castillo', 1, 50);
INSERT INTO public.ciudades VALUES (295, 'El Cerrito', 1, 76);
INSERT INTO public.ciudades VALUES (296, 'El Charco', 1, 52);
INSERT INTO public.ciudades VALUES (297, 'El Cocuy', 1, 15);
INSERT INTO public.ciudades VALUES (298, 'El Colegio', 1, 25);
INSERT INTO public.ciudades VALUES (299, 'El Copey', 1, 20);
INSERT INTO public.ciudades VALUES (300, 'El Doncello', 1, 18);
INSERT INTO public.ciudades VALUES (301, 'El Dorado', 1, 50);
INSERT INTO public.ciudades VALUES (302, 'El Dovio', 1, 76);
INSERT INTO public.ciudades VALUES (303, 'El Espino', 1, 15);
INSERT INTO public.ciudades VALUES (304, 'El Guacamayo', 1, 68);
INSERT INTO public.ciudades VALUES (305, 'El Guamo', 1, 13);
INSERT INTO public.ciudades VALUES (306, 'El Molino', 1, 44);
INSERT INTO public.ciudades VALUES (307, 'El Paso', 1, 20);
INSERT INTO public.ciudades VALUES (308, 'El Paujil', 1, 18);
INSERT INTO public.ciudades VALUES (309, 'El Peñol', 1, 52);
INSERT INTO public.ciudades VALUES (310, 'El Peñon', 1, 13);
INSERT INTO public.ciudades VALUES (311, 'El Peñon', 1, 68);
INSERT INTO public.ciudades VALUES (312, 'El Peñón', 1, 25);
INSERT INTO public.ciudades VALUES (313, 'El Piñon', 1, 47);
INSERT INTO public.ciudades VALUES (314, 'El Playón', 1, 68);
INSERT INTO public.ciudades VALUES (315, 'El Retorno', 1, 95);
INSERT INTO public.ciudades VALUES (316, 'El Retén', 1, 47);
INSERT INTO public.ciudades VALUES (317, 'El Roble', 1, 70);
INSERT INTO public.ciudades VALUES (318, 'El Rosal', 1, 25);
INSERT INTO public.ciudades VALUES (319, 'El Rosario', 1, 52);
INSERT INTO public.ciudades VALUES (320, 'El Tablón de Gómez', 1, 52);
INSERT INTO public.ciudades VALUES (321, 'El Tambo', 1, 19);
INSERT INTO public.ciudades VALUES (322, 'El Tambo', 1, 52);
INSERT INTO public.ciudades VALUES (323, 'El Tarra', 1, 54);
INSERT INTO public.ciudades VALUES (324, 'El Zulia', 1, 54);
INSERT INTO public.ciudades VALUES (325, 'El Águila', 1, 76);
INSERT INTO public.ciudades VALUES (326, 'Elías', 1, 41);
INSERT INTO public.ciudades VALUES (327, 'Encino', 1, 68);
INSERT INTO public.ciudades VALUES (328, 'Enciso', 1, 68);
INSERT INTO public.ciudades VALUES (329, 'Entrerríos', 1, 5);
INSERT INTO public.ciudades VALUES (330, 'Envigado', 1, 5);
INSERT INTO public.ciudades VALUES (331, 'Espinal', 1, 73);
INSERT INTO public.ciudades VALUES (332, 'Facatativá', 1, 25);
INSERT INTO public.ciudades VALUES (333, 'Falan', 1, 73);
INSERT INTO public.ciudades VALUES (334, 'Filadelfia', 1, 17);
INSERT INTO public.ciudades VALUES (335, 'Filandia', 1, 63);
INSERT INTO public.ciudades VALUES (336, 'Firavitoba', 1, 15);
INSERT INTO public.ciudades VALUES (337, 'Flandes', 1, 73);
INSERT INTO public.ciudades VALUES (338, 'Florencia', 1, 18);
INSERT INTO public.ciudades VALUES (339, 'Florencia', 1, 19);
INSERT INTO public.ciudades VALUES (340, 'Floresta', 1, 15);
INSERT INTO public.ciudades VALUES (341, 'Florida', 1, 76);
INSERT INTO public.ciudades VALUES (342, 'Floridablanca', 1, 68);
INSERT INTO public.ciudades VALUES (343, 'Florián', 1, 68);
INSERT INTO public.ciudades VALUES (344, 'Fonseca', 1, 44);
INSERT INTO public.ciudades VALUES (345, 'Fortúl', 1, 81);
INSERT INTO public.ciudades VALUES (346, 'Fosca', 1, 25);
INSERT INTO public.ciudades VALUES (347, 'Francisco Pizarro', 1, 52);
INSERT INTO public.ciudades VALUES (348, 'Fredonia', 1, 5);
INSERT INTO public.ciudades VALUES (349, 'Fresno', 1, 73);
INSERT INTO public.ciudades VALUES (350, 'Frontino', 1, 5);
INSERT INTO public.ciudades VALUES (351, 'Fuente de Oro', 1, 50);
INSERT INTO public.ciudades VALUES (352, 'Fundación', 1, 47);
INSERT INTO public.ciudades VALUES (353, 'Funes', 1, 52);
INSERT INTO public.ciudades VALUES (354, 'Funza', 1, 25);
INSERT INTO public.ciudades VALUES (355, 'Fusagasugá', 1, 25);
INSERT INTO public.ciudades VALUES (356, 'Fómeque', 1, 25);
INSERT INTO public.ciudades VALUES (357, 'Fúquene', 1, 25);
INSERT INTO public.ciudades VALUES (358, 'Gachalá', 1, 25);
INSERT INTO public.ciudades VALUES (359, 'Gachancipá', 1, 25);
INSERT INTO public.ciudades VALUES (360, 'Gachantivá', 1, 15);
INSERT INTO public.ciudades VALUES (361, 'Gachetá', 1, 25);
INSERT INTO public.ciudades VALUES (362, 'Galapa', 1, 8);
INSERT INTO public.ciudades VALUES (363, 'Galeras (Nueva Granada)', 1, 70);
INSERT INTO public.ciudades VALUES (364, 'Galán', 1, 68);
INSERT INTO public.ciudades VALUES (365, 'Gama', 1, 25);
INSERT INTO public.ciudades VALUES (366, 'Gamarra', 1, 20);
INSERT INTO public.ciudades VALUES (367, 'Garagoa', 1, 15);
INSERT INTO public.ciudades VALUES (368, 'Garzón', 1, 41);
INSERT INTO public.ciudades VALUES (369, 'Gigante', 1, 41);
INSERT INTO public.ciudades VALUES (370, 'Ginebra', 1, 76);
INSERT INTO public.ciudades VALUES (371, 'Giraldo', 1, 5);
INSERT INTO public.ciudades VALUES (372, 'Girardot', 1, 25);
INSERT INTO public.ciudades VALUES (373, 'Girardota', 1, 5);
INSERT INTO public.ciudades VALUES (374, 'Girón', 1, 68);
INSERT INTO public.ciudades VALUES (375, 'Gonzalez', 1, 20);
INSERT INTO public.ciudades VALUES (376, 'Gramalote', 1, 54);
INSERT INTO public.ciudades VALUES (377, 'Granada', 1, 5);
INSERT INTO public.ciudades VALUES (378, 'Granada', 1, 25);
INSERT INTO public.ciudades VALUES (379, 'Granada', 1, 50);
INSERT INTO public.ciudades VALUES (380, 'Guaca', 1, 68);
INSERT INTO public.ciudades VALUES (381, 'Guacamayas', 1, 15);
INSERT INTO public.ciudades VALUES (382, 'Guacarí', 1, 76);
INSERT INTO public.ciudades VALUES (383, 'Guachavés', 1, 52);
INSERT INTO public.ciudades VALUES (384, 'Guachené', 1, 19);
INSERT INTO public.ciudades VALUES (385, 'Guachetá', 1, 25);
INSERT INTO public.ciudades VALUES (386, 'Guachucal', 1, 52);
INSERT INTO public.ciudades VALUES (387, 'Guadalupe', 1, 5);
INSERT INTO public.ciudades VALUES (388, 'Guadalupe', 1, 41);
INSERT INTO public.ciudades VALUES (389, 'Guadalupe', 1, 68);
INSERT INTO public.ciudades VALUES (390, 'Guaduas', 1, 25);
INSERT INTO public.ciudades VALUES (391, 'Guaitarilla', 1, 52);
INSERT INTO public.ciudades VALUES (392, 'Gualmatán', 1, 52);
INSERT INTO public.ciudades VALUES (393, 'Guamal', 1, 47);
INSERT INTO public.ciudades VALUES (394, 'Guamal', 1, 50);
INSERT INTO public.ciudades VALUES (395, 'Guamo', 1, 73);
INSERT INTO public.ciudades VALUES (396, 'Guapota', 1, 68);
INSERT INTO public.ciudades VALUES (397, 'Guapí', 1, 19);
INSERT INTO public.ciudades VALUES (398, 'Guaranda', 1, 70);
INSERT INTO public.ciudades VALUES (399, 'Guarne', 1, 5);
INSERT INTO public.ciudades VALUES (400, 'Guasca', 1, 25);
INSERT INTO public.ciudades VALUES (401, 'Guatapé', 1, 5);
INSERT INTO public.ciudades VALUES (402, 'Guataquí', 1, 25);
INSERT INTO public.ciudades VALUES (403, 'Guatavita', 1, 25);
INSERT INTO public.ciudades VALUES (404, 'Guateque', 1, 15);
INSERT INTO public.ciudades VALUES (405, 'Guavatá', 1, 68);
INSERT INTO public.ciudades VALUES (406, 'Guayabal de Siquima', 1, 25);
INSERT INTO public.ciudades VALUES (407, 'Guayabetal', 1, 25);
INSERT INTO public.ciudades VALUES (408, 'Guayatá', 1, 15);
INSERT INTO public.ciudades VALUES (409, 'Guepsa', 1, 68);
INSERT INTO public.ciudades VALUES (410, 'Guicán', 1, 15);
INSERT INTO public.ciudades VALUES (411, 'Gutiérrez', 1, 25);
INSERT INTO public.ciudades VALUES (412, 'Guática', 1, 66);
INSERT INTO public.ciudades VALUES (413, 'Gámbita', 1, 68);
INSERT INTO public.ciudades VALUES (414, 'Gámeza', 1, 15);
INSERT INTO public.ciudades VALUES (415, 'Génova', 1, 63);
INSERT INTO public.ciudades VALUES (416, 'Gómez Plata', 1, 5);
INSERT INTO public.ciudades VALUES (417, 'Hacarí', 1, 54);
INSERT INTO public.ciudades VALUES (418, 'Hatillo de Loba', 1, 13);
INSERT INTO public.ciudades VALUES (419, 'Hato', 1, 68);
INSERT INTO public.ciudades VALUES (420, 'Hato Corozal', 1, 85);
INSERT INTO public.ciudades VALUES (421, 'Hatonuevo', 1, 44);
INSERT INTO public.ciudades VALUES (422, 'Heliconia', 1, 5);
INSERT INTO public.ciudades VALUES (423, 'Herrán', 1, 54);
INSERT INTO public.ciudades VALUES (424, 'Herveo', 1, 73);
INSERT INTO public.ciudades VALUES (425, 'Hispania', 1, 5);
INSERT INTO public.ciudades VALUES (426, 'Hobo', 1, 41);
INSERT INTO public.ciudades VALUES (427, 'Honda', 1, 73);
INSERT INTO public.ciudades VALUES (428, 'Ibagué', 1, 73);
INSERT INTO public.ciudades VALUES (429, 'Icononzo', 1, 73);
INSERT INTO public.ciudades VALUES (430, 'Iles', 1, 52);
INSERT INTO public.ciudades VALUES (431, 'Imúes', 1, 52);
INSERT INTO public.ciudades VALUES (432, 'Inzá', 1, 19);
INSERT INTO public.ciudades VALUES (433, 'Inírida', 1, 94);
INSERT INTO public.ciudades VALUES (434, 'Ipiales', 1, 52);
INSERT INTO public.ciudades VALUES (435, 'Isnos', 1, 41);
INSERT INTO public.ciudades VALUES (436, 'Istmina', 1, 27);
INSERT INTO public.ciudades VALUES (437, 'Itagüí', 1, 5);
INSERT INTO public.ciudades VALUES (438, 'Ituango', 1, 5);
INSERT INTO public.ciudades VALUES (439, 'Izá', 1, 15);
INSERT INTO public.ciudades VALUES (440, 'Jambaló', 1, 19);
INSERT INTO public.ciudades VALUES (441, 'Jamundí', 1, 76);
INSERT INTO public.ciudades VALUES (442, 'Jardín', 1, 5);
INSERT INTO public.ciudades VALUES (443, 'Jenesano', 1, 15);
INSERT INTO public.ciudades VALUES (444, 'Jericó', 1, 5);
INSERT INTO public.ciudades VALUES (445, 'Jericó', 1, 15);
INSERT INTO public.ciudades VALUES (446, 'Jerusalén', 1, 25);
INSERT INTO public.ciudades VALUES (447, 'Jesús María', 1, 68);
INSERT INTO public.ciudades VALUES (448, 'Jordán', 1, 68);
INSERT INTO public.ciudades VALUES (449, 'Juan de Acosta', 1, 8);
INSERT INTO public.ciudades VALUES (450, 'Junín', 1, 25);
INSERT INTO public.ciudades VALUES (451, 'Juradó', 1, 27);
INSERT INTO public.ciudades VALUES (452, 'La Apartada y La Frontera', 1, 23);
INSERT INTO public.ciudades VALUES (453, 'La Argentina', 1, 41);
INSERT INTO public.ciudades VALUES (454, 'La Belleza', 1, 68);
INSERT INTO public.ciudades VALUES (455, 'La Calera', 1, 25);
INSERT INTO public.ciudades VALUES (456, 'La Capilla', 1, 15);
INSERT INTO public.ciudades VALUES (457, 'La Ceja', 1, 5);
INSERT INTO public.ciudades VALUES (458, 'La Celia', 1, 66);
INSERT INTO public.ciudades VALUES (459, 'La Cruz', 1, 52);
INSERT INTO public.ciudades VALUES (460, 'La Cumbre', 1, 76);
INSERT INTO public.ciudades VALUES (461, 'La Dorada', 1, 17);
INSERT INTO public.ciudades VALUES (462, 'La Esperanza', 1, 54);
INSERT INTO public.ciudades VALUES (463, 'La Estrella', 1, 5);
INSERT INTO public.ciudades VALUES (464, 'La Florida', 1, 52);
INSERT INTO public.ciudades VALUES (465, 'La Gloria', 1, 20);
INSERT INTO public.ciudades VALUES (466, 'La Jagua de Ibirico', 1, 20);
INSERT INTO public.ciudades VALUES (467, 'La Jagua del Pilar', 1, 44);
INSERT INTO public.ciudades VALUES (468, 'La Llanada', 1, 52);
INSERT INTO public.ciudades VALUES (469, 'La Macarena', 1, 50);
INSERT INTO public.ciudades VALUES (470, 'La Merced', 1, 17);
INSERT INTO public.ciudades VALUES (471, 'La Mesa', 1, 25);
INSERT INTO public.ciudades VALUES (472, 'La Montañita', 1, 18);
INSERT INTO public.ciudades VALUES (473, 'La Palma', 1, 25);
INSERT INTO public.ciudades VALUES (474, 'La Paz', 1, 68);
INSERT INTO public.ciudades VALUES (475, 'La Paz (Robles)', 1, 20);
INSERT INTO public.ciudades VALUES (476, 'La Peña', 1, 25);
INSERT INTO public.ciudades VALUES (477, 'La Pintada', 1, 5);
INSERT INTO public.ciudades VALUES (478, 'La Plata', 1, 41);
INSERT INTO public.ciudades VALUES (479, 'La Playa', 1, 54);
INSERT INTO public.ciudades VALUES (480, 'La Primavera', 1, 99);
INSERT INTO public.ciudades VALUES (481, 'La Salina', 1, 85);
INSERT INTO public.ciudades VALUES (482, 'La Sierra', 1, 19);
INSERT INTO public.ciudades VALUES (483, 'La Tebaida', 1, 63);
INSERT INTO public.ciudades VALUES (484, 'La Tola', 1, 52);
INSERT INTO public.ciudades VALUES (485, 'La Unión', 1, 5);
INSERT INTO public.ciudades VALUES (486, 'La Unión', 1, 52);
INSERT INTO public.ciudades VALUES (487, 'La Unión', 1, 70);
INSERT INTO public.ciudades VALUES (488, 'La Unión', 1, 76);
INSERT INTO public.ciudades VALUES (489, 'La Uvita', 1, 15);
INSERT INTO public.ciudades VALUES (490, 'La Vega', 1, 19);
INSERT INTO public.ciudades VALUES (491, 'La Vega', 1, 25);
INSERT INTO public.ciudades VALUES (492, 'La Victoria', 1, 15);
INSERT INTO public.ciudades VALUES (493, 'La Victoria', 1, 17);
INSERT INTO public.ciudades VALUES (494, 'La Victoria', 1, 76);
INSERT INTO public.ciudades VALUES (495, 'La Virginia', 1, 66);
INSERT INTO public.ciudades VALUES (496, 'Labateca', 1, 54);
INSERT INTO public.ciudades VALUES (497, 'Labranzagrande', 1, 15);
INSERT INTO public.ciudades VALUES (498, 'Landázuri', 1, 68);
INSERT INTO public.ciudades VALUES (499, 'Lebrija', 1, 68);
INSERT INTO public.ciudades VALUES (500, 'Leiva', 1, 52);
INSERT INTO public.ciudades VALUES (501, 'Lejanías', 1, 50);
INSERT INTO public.ciudades VALUES (502, 'Lenguazaque', 1, 25);
INSERT INTO public.ciudades VALUES (503, 'Leticia', 1, 91);
INSERT INTO public.ciudades VALUES (504, 'Liborina', 1, 5);
INSERT INTO public.ciudades VALUES (505, 'Linares', 1, 52);
INSERT INTO public.ciudades VALUES (506, 'Lloró', 1, 27);
INSERT INTO public.ciudades VALUES (507, 'Lorica', 1, 23);
INSERT INTO public.ciudades VALUES (508, 'Los Córdobas', 1, 23);
INSERT INTO public.ciudades VALUES (509, 'Los Palmitos', 1, 70);
INSERT INTO public.ciudades VALUES (510, 'Los Patios', 1, 54);
INSERT INTO public.ciudades VALUES (511, 'Los Santos', 1, 68);
INSERT INTO public.ciudades VALUES (512, 'Lourdes', 1, 54);
INSERT INTO public.ciudades VALUES (513, 'Luruaco', 1, 8);
INSERT INTO public.ciudades VALUES (514, 'Lérida', 1, 73);
INSERT INTO public.ciudades VALUES (515, 'Líbano', 1, 73);
INSERT INTO public.ciudades VALUES (516, 'López (Micay)', 1, 19);
INSERT INTO public.ciudades VALUES (517, 'Macanal', 1, 15);
INSERT INTO public.ciudades VALUES (518, 'Macaravita', 1, 68);
INSERT INTO public.ciudades VALUES (519, 'Maceo', 1, 5);
INSERT INTO public.ciudades VALUES (520, 'Machetá', 1, 25);
INSERT INTO public.ciudades VALUES (521, 'Madrid', 1, 25);
INSERT INTO public.ciudades VALUES (522, 'Magangué', 1, 13);
INSERT INTO public.ciudades VALUES (523, 'Magüi (Payán)', 1, 52);
INSERT INTO public.ciudades VALUES (524, 'Mahates', 1, 13);
INSERT INTO public.ciudades VALUES (525, 'Maicao', 1, 44);
INSERT INTO public.ciudades VALUES (526, 'Majagual', 1, 70);
INSERT INTO public.ciudades VALUES (527, 'Malambo', 1, 8);
INSERT INTO public.ciudades VALUES (528, 'Mallama (Piedrancha)', 1, 52);
INSERT INTO public.ciudades VALUES (529, 'Manatí', 1, 8);
INSERT INTO public.ciudades VALUES (530, 'Manaure', 1, 44);
INSERT INTO public.ciudades VALUES (531, 'Manaure Balcón del Cesar', 1, 20);
INSERT INTO public.ciudades VALUES (532, 'Manizales', 1, 17);
INSERT INTO public.ciudades VALUES (533, 'Manta', 1, 25);
INSERT INTO public.ciudades VALUES (534, 'Manzanares', 1, 17);
INSERT INTO public.ciudades VALUES (535, 'Maní', 1, 85);
INSERT INTO public.ciudades VALUES (536, 'Mapiripan', 1, 50);
INSERT INTO public.ciudades VALUES (537, 'Margarita', 1, 13);
INSERT INTO public.ciudades VALUES (538, 'Marinilla', 1, 5);
INSERT INTO public.ciudades VALUES (539, 'Maripí', 1, 15);
INSERT INTO public.ciudades VALUES (540, 'Mariquita', 1, 73);
INSERT INTO public.ciudades VALUES (541, 'Marmato', 1, 17);
INSERT INTO public.ciudades VALUES (542, 'Marquetalia', 1, 17);
INSERT INTO public.ciudades VALUES (543, 'Marsella', 1, 66);
INSERT INTO public.ciudades VALUES (544, 'Marulanda', 1, 17);
INSERT INTO public.ciudades VALUES (545, 'María la Baja', 1, 13);
INSERT INTO public.ciudades VALUES (546, 'Matanza', 1, 68);
INSERT INTO public.ciudades VALUES (547, 'Medellín', 1, 5);
INSERT INTO public.ciudades VALUES (548, 'Medina', 1, 25);
INSERT INTO public.ciudades VALUES (549, 'Medio Atrato', 1, 27);
INSERT INTO public.ciudades VALUES (550, 'Medio Baudó', 1, 27);
INSERT INTO public.ciudades VALUES (551, 'Medio San Juan (ANDAGOYA)', 1, 27);
INSERT INTO public.ciudades VALUES (552, 'Melgar', 1, 73);
INSERT INTO public.ciudades VALUES (553, 'Mercaderes', 1, 19);
INSERT INTO public.ciudades VALUES (554, 'Mesetas', 1, 50);
INSERT INTO public.ciudades VALUES (555, 'Milán', 1, 18);
INSERT INTO public.ciudades VALUES (556, 'Miraflores', 1, 15);
INSERT INTO public.ciudades VALUES (557, 'Miraflores', 1, 95);
INSERT INTO public.ciudades VALUES (558, 'Miranda', 1, 19);
INSERT INTO public.ciudades VALUES (559, 'Mistrató', 1, 66);
INSERT INTO public.ciudades VALUES (560, 'Mitú', 1, 97);
INSERT INTO public.ciudades VALUES (561, 'Mocoa', 1, 86);
INSERT INTO public.ciudades VALUES (562, 'Mogotes', 1, 68);
INSERT INTO public.ciudades VALUES (563, 'Molagavita', 1, 68);
INSERT INTO public.ciudades VALUES (564, 'Momil', 1, 23);
INSERT INTO public.ciudades VALUES (565, 'Mompós', 1, 13);
INSERT INTO public.ciudades VALUES (566, 'Mongua', 1, 15);
INSERT INTO public.ciudades VALUES (567, 'Monguí', 1, 15);
INSERT INTO public.ciudades VALUES (568, 'Moniquirá', 1, 15);
INSERT INTO public.ciudades VALUES (569, 'Montebello', 1, 5);
INSERT INTO public.ciudades VALUES (570, 'Montecristo', 1, 13);
INSERT INTO public.ciudades VALUES (571, 'Montelíbano', 1, 23);
INSERT INTO public.ciudades VALUES (572, 'Montenegro', 1, 63);
INSERT INTO public.ciudades VALUES (573, 'Monteria', 1, 23);
INSERT INTO public.ciudades VALUES (574, 'Monterrey', 1, 85);
INSERT INTO public.ciudades VALUES (575, 'Morales', 1, 13);
INSERT INTO public.ciudades VALUES (576, 'Morales', 1, 19);
INSERT INTO public.ciudades VALUES (577, 'Morelia', 1, 18);
INSERT INTO public.ciudades VALUES (578, 'Morroa', 1, 70);
INSERT INTO public.ciudades VALUES (579, 'Mosquera', 1, 25);
INSERT INTO public.ciudades VALUES (580, 'Mosquera', 1, 52);
INSERT INTO public.ciudades VALUES (581, 'Motavita', 1, 15);
INSERT INTO public.ciudades VALUES (582, 'Moñitos', 1, 23);
INSERT INTO public.ciudades VALUES (583, 'Murillo', 1, 73);
INSERT INTO public.ciudades VALUES (584, 'Murindó', 1, 5);
INSERT INTO public.ciudades VALUES (585, 'Mutatá', 1, 5);
INSERT INTO public.ciudades VALUES (586, 'Mutiscua', 1, 54);
INSERT INTO public.ciudades VALUES (587, 'Muzo', 1, 15);
INSERT INTO public.ciudades VALUES (588, 'Málaga', 1, 68);
INSERT INTO public.ciudades VALUES (589, 'Nariño', 1, 5);
INSERT INTO public.ciudades VALUES (590, 'Nariño', 1, 25);
INSERT INTO public.ciudades VALUES (591, 'Nariño', 1, 52);
INSERT INTO public.ciudades VALUES (592, 'Natagaima', 1, 73);
INSERT INTO public.ciudades VALUES (593, 'Nechí', 1, 5);
INSERT INTO public.ciudades VALUES (594, 'Necoclí', 1, 5);
INSERT INTO public.ciudades VALUES (595, 'Neira', 1, 17);
INSERT INTO public.ciudades VALUES (596, 'Neiva', 1, 41);
INSERT INTO public.ciudades VALUES (597, 'Nemocón', 1, 25);
INSERT INTO public.ciudades VALUES (598, 'Nilo', 1, 25);
INSERT INTO public.ciudades VALUES (599, 'Nimaima', 1, 25);
INSERT INTO public.ciudades VALUES (600, 'Nobsa', 1, 15);
INSERT INTO public.ciudades VALUES (601, 'Nocaima', 1, 25);
INSERT INTO public.ciudades VALUES (602, 'Norcasia', 1, 17);
INSERT INTO public.ciudades VALUES (603, 'Norosí', 1, 13);
INSERT INTO public.ciudades VALUES (604, 'Novita', 1, 27);
INSERT INTO public.ciudades VALUES (605, 'Nueva Granada', 1, 47);
INSERT INTO public.ciudades VALUES (606, 'Nuevo Colón', 1, 15);
INSERT INTO public.ciudades VALUES (607, 'Nunchía', 1, 85);
INSERT INTO public.ciudades VALUES (608, 'Nuquí', 1, 27);
INSERT INTO public.ciudades VALUES (609, 'Nátaga', 1, 41);
INSERT INTO public.ciudades VALUES (610, 'Obando', 1, 76);
INSERT INTO public.ciudades VALUES (611, 'Ocamonte', 1, 68);
INSERT INTO public.ciudades VALUES (612, 'Ocaña', 1, 54);
INSERT INTO public.ciudades VALUES (613, 'Oiba', 1, 68);
INSERT INTO public.ciudades VALUES (614, 'Oicatá', 1, 15);
INSERT INTO public.ciudades VALUES (615, 'Olaya', 1, 5);
INSERT INTO public.ciudades VALUES (616, 'Olaya Herrera', 1, 52);
INSERT INTO public.ciudades VALUES (617, 'Onzaga', 1, 68);
INSERT INTO public.ciudades VALUES (618, 'Oporapa', 1, 41);
INSERT INTO public.ciudades VALUES (619, 'Orito', 1, 86);
INSERT INTO public.ciudades VALUES (620, 'Orocué', 1, 85);
INSERT INTO public.ciudades VALUES (621, 'Ortega', 1, 73);
INSERT INTO public.ciudades VALUES (622, 'Ospina', 1, 52);
INSERT INTO public.ciudades VALUES (623, 'Otanche', 1, 15);
INSERT INTO public.ciudades VALUES (624, 'Ovejas', 1, 70);
INSERT INTO public.ciudades VALUES (625, 'Pachavita', 1, 15);
INSERT INTO public.ciudades VALUES (626, 'Pacho', 1, 25);
INSERT INTO public.ciudades VALUES (627, 'Padilla', 1, 19);
INSERT INTO public.ciudades VALUES (628, 'Paicol', 1, 41);
INSERT INTO public.ciudades VALUES (629, 'Pailitas', 1, 20);
INSERT INTO public.ciudades VALUES (630, 'Paime', 1, 25);
INSERT INTO public.ciudades VALUES (631, 'Paipa', 1, 15);
INSERT INTO public.ciudades VALUES (632, 'Pajarito', 1, 15);
INSERT INTO public.ciudades VALUES (633, 'Palermo', 1, 41);
INSERT INTO public.ciudades VALUES (634, 'Palestina', 1, 17);
INSERT INTO public.ciudades VALUES (635, 'Palestina', 1, 41);
INSERT INTO public.ciudades VALUES (636, 'Palmar', 1, 68);
INSERT INTO public.ciudades VALUES (637, 'Palmar de Varela', 1, 8);
INSERT INTO public.ciudades VALUES (638, 'Palmas del Socorro', 1, 68);
INSERT INTO public.ciudades VALUES (639, 'Palmira', 1, 76);
INSERT INTO public.ciudades VALUES (640, 'Palmito', 1, 70);
INSERT INTO public.ciudades VALUES (641, 'Palocabildo', 1, 73);
INSERT INTO public.ciudades VALUES (642, 'Pamplona', 1, 54);
INSERT INTO public.ciudades VALUES (643, 'Pamplonita', 1, 54);
INSERT INTO public.ciudades VALUES (644, 'Pandi', 1, 25);
INSERT INTO public.ciudades VALUES (645, 'Panqueba', 1, 15);
INSERT INTO public.ciudades VALUES (646, 'Paratebueno', 1, 25);
INSERT INTO public.ciudades VALUES (647, 'Pasca', 1, 25);
INSERT INTO public.ciudades VALUES (648, 'Patía (El Bordo)', 1, 19);
INSERT INTO public.ciudades VALUES (649, 'Pauna', 1, 15);
INSERT INTO public.ciudades VALUES (650, 'Paya', 1, 15);
INSERT INTO public.ciudades VALUES (651, 'Paz de Ariporo', 1, 85);
INSERT INTO public.ciudades VALUES (652, 'Paz de Río', 1, 15);
INSERT INTO public.ciudades VALUES (653, 'Pedraza', 1, 47);
INSERT INTO public.ciudades VALUES (654, 'Pelaya', 1, 20);
INSERT INTO public.ciudades VALUES (655, 'Pensilvania', 1, 17);
INSERT INTO public.ciudades VALUES (656, 'Peque', 1, 5);
INSERT INTO public.ciudades VALUES (657, 'Pereira', 1, 66);
INSERT INTO public.ciudades VALUES (658, 'Pesca', 1, 15);
INSERT INTO public.ciudades VALUES (659, 'Peñol', 1, 5);
INSERT INTO public.ciudades VALUES (660, 'Piamonte', 1, 19);
INSERT INTO public.ciudades VALUES (661, 'Pie de Cuesta', 1, 68);
INSERT INTO public.ciudades VALUES (662, 'Piedras', 1, 73);
INSERT INTO public.ciudades VALUES (663, 'Piendamó', 1, 19);
INSERT INTO public.ciudades VALUES (664, 'Pijao', 1, 63);
INSERT INTO public.ciudades VALUES (665, 'Pijiño', 1, 47);
INSERT INTO public.ciudades VALUES (666, 'Pinchote', 1, 68);
INSERT INTO public.ciudades VALUES (667, 'Pinillos', 1, 13);
INSERT INTO public.ciudades VALUES (668, 'Piojo', 1, 8);
INSERT INTO public.ciudades VALUES (669, 'Pisva', 1, 15);
INSERT INTO public.ciudades VALUES (670, 'Pital', 1, 41);
INSERT INTO public.ciudades VALUES (671, 'Pitalito', 1, 41);
INSERT INTO public.ciudades VALUES (672, 'Pivijay', 1, 47);
INSERT INTO public.ciudades VALUES (673, 'Planadas', 1, 73);
INSERT INTO public.ciudades VALUES (674, 'Planeta Rica', 1, 23);
INSERT INTO public.ciudades VALUES (675, 'Plato', 1, 47);
INSERT INTO public.ciudades VALUES (676, 'Policarpa', 1, 52);
INSERT INTO public.ciudades VALUES (677, 'Polonuevo', 1, 8);
INSERT INTO public.ciudades VALUES (678, 'Ponedera', 1, 8);
INSERT INTO public.ciudades VALUES (679, 'Popayán', 1, 19);
INSERT INTO public.ciudades VALUES (680, 'Pore', 1, 85);
INSERT INTO public.ciudades VALUES (681, 'Potosí', 1, 52);
INSERT INTO public.ciudades VALUES (682, 'Pradera', 1, 76);
INSERT INTO public.ciudades VALUES (683, 'Prado', 1, 73);
INSERT INTO public.ciudades VALUES (684, 'Providencia', 1, 52);
INSERT INTO public.ciudades VALUES (685, 'Providencia', 1, 88);
INSERT INTO public.ciudades VALUES (686, 'Pueblo Bello', 1, 20);
INSERT INTO public.ciudades VALUES (687, 'Pueblo Nuevo', 1, 23);
INSERT INTO public.ciudades VALUES (688, 'Pueblo Rico', 1, 66);
INSERT INTO public.ciudades VALUES (689, 'Pueblorrico', 1, 5);
INSERT INTO public.ciudades VALUES (690, 'Puebloviejo', 1, 47);
INSERT INTO public.ciudades VALUES (691, 'Puente Nacional', 1, 68);
INSERT INTO public.ciudades VALUES (692, 'Puerres', 1, 52);
INSERT INTO public.ciudades VALUES (693, 'Puerto Asís', 1, 86);
INSERT INTO public.ciudades VALUES (694, 'Puerto Berrío', 1, 5);
INSERT INTO public.ciudades VALUES (695, 'Puerto Boyacá', 1, 15);
INSERT INTO public.ciudades VALUES (696, 'Puerto Caicedo', 1, 86);
INSERT INTO public.ciudades VALUES (697, 'Puerto Carreño', 1, 99);
INSERT INTO public.ciudades VALUES (698, 'Puerto Colombia', 1, 8);
INSERT INTO public.ciudades VALUES (699, 'Puerto Concordia', 1, 50);
INSERT INTO public.ciudades VALUES (700, 'Puerto Escondido', 1, 23);
INSERT INTO public.ciudades VALUES (701, 'Puerto Gaitán', 1, 50);
INSERT INTO public.ciudades VALUES (702, 'Puerto Guzmán', 1, 86);
INSERT INTO public.ciudades VALUES (703, 'Puerto Leguízamo', 1, 86);
INSERT INTO public.ciudades VALUES (704, 'Puerto Libertador', 1, 23);
INSERT INTO public.ciudades VALUES (705, 'Puerto Lleras', 1, 50);
INSERT INTO public.ciudades VALUES (706, 'Puerto López', 1, 50);
INSERT INTO public.ciudades VALUES (707, 'Puerto Nare', 1, 5);
INSERT INTO public.ciudades VALUES (708, 'Puerto Nariño', 1, 91);
INSERT INTO public.ciudades VALUES (709, 'Puerto Parra', 1, 68);
INSERT INTO public.ciudades VALUES (710, 'Puerto Rico', 1, 18);
INSERT INTO public.ciudades VALUES (711, 'Puerto Rico', 1, 50);
INSERT INTO public.ciudades VALUES (712, 'Puerto Rondón', 1, 81);
INSERT INTO public.ciudades VALUES (713, 'Puerto Salgar', 1, 25);
INSERT INTO public.ciudades VALUES (714, 'Puerto Santander', 1, 54);
INSERT INTO public.ciudades VALUES (715, 'Puerto Tejada', 1, 19);
INSERT INTO public.ciudades VALUES (716, 'Puerto Triunfo', 1, 5);
INSERT INTO public.ciudades VALUES (717, 'Puerto Wilches', 1, 68);
INSERT INTO public.ciudades VALUES (718, 'Pulí', 1, 25);
INSERT INTO public.ciudades VALUES (719, 'Pupiales', 1, 52);
INSERT INTO public.ciudades VALUES (720, 'Puracé (Coconuco)', 1, 19);
INSERT INTO public.ciudades VALUES (721, 'Purificación', 1, 73);
INSERT INTO public.ciudades VALUES (722, 'Purísima', 1, 23);
INSERT INTO public.ciudades VALUES (723, 'Pácora', 1, 17);
INSERT INTO public.ciudades VALUES (724, 'Páez', 1, 15);
INSERT INTO public.ciudades VALUES (725, 'Páez (Belalcazar)', 1, 19);
INSERT INTO public.ciudades VALUES (726, 'Páramo', 1, 68);
INSERT INTO public.ciudades VALUES (727, 'Quebradanegra', 1, 25);
INSERT INTO public.ciudades VALUES (728, 'Quetame', 1, 25);
INSERT INTO public.ciudades VALUES (729, 'Quibdó', 1, 27);
INSERT INTO public.ciudades VALUES (730, 'Quimbaya', 1, 63);
INSERT INTO public.ciudades VALUES (731, 'Quinchía', 1, 66);
INSERT INTO public.ciudades VALUES (732, 'Quipama', 1, 15);
INSERT INTO public.ciudades VALUES (733, 'Quipile', 1, 25);
INSERT INTO public.ciudades VALUES (734, 'Ragonvalia', 1, 54);
INSERT INTO public.ciudades VALUES (735, 'Ramiriquí', 1, 15);
INSERT INTO public.ciudades VALUES (736, 'Recetor', 1, 85);
INSERT INTO public.ciudades VALUES (737, 'Regidor', 1, 13);
INSERT INTO public.ciudades VALUES (738, 'Remedios', 1, 5);
INSERT INTO public.ciudades VALUES (739, 'Remolino', 1, 47);
INSERT INTO public.ciudades VALUES (740, 'Repelón', 1, 8);
INSERT INTO public.ciudades VALUES (741, 'Restrepo', 1, 50);
INSERT INTO public.ciudades VALUES (742, 'Restrepo', 1, 76);
INSERT INTO public.ciudades VALUES (743, 'Retiro', 1, 5);
INSERT INTO public.ciudades VALUES (744, 'Ricaurte', 1, 25);
INSERT INTO public.ciudades VALUES (745, 'Ricaurte', 1, 52);
INSERT INTO public.ciudades VALUES (746, 'Rio Negro', 1, 68);
INSERT INTO public.ciudades VALUES (747, 'Rioblanco', 1, 73);
INSERT INTO public.ciudades VALUES (748, 'Riofrío', 1, 76);
INSERT INTO public.ciudades VALUES (749, 'Riohacha', 1, 44);
INSERT INTO public.ciudades VALUES (750, 'Risaralda', 1, 17);
INSERT INTO public.ciudades VALUES (751, 'Rivera', 1, 41);
INSERT INTO public.ciudades VALUES (752, 'Roberto Payán (San José)', 1, 52);
INSERT INTO public.ciudades VALUES (753, 'Roldanillo', 1, 76);
INSERT INTO public.ciudades VALUES (754, 'Roncesvalles', 1, 73);
INSERT INTO public.ciudades VALUES (755, 'Rondón', 1, 15);
INSERT INTO public.ciudades VALUES (756, 'Rosas', 1, 19);
INSERT INTO public.ciudades VALUES (757, 'Rovira', 1, 73);
INSERT INTO public.ciudades VALUES (758, 'Ráquira', 1, 15);
INSERT INTO public.ciudades VALUES (759, 'Río Iró', 1, 27);
INSERT INTO public.ciudades VALUES (760, 'Río Quito', 1, 27);
INSERT INTO public.ciudades VALUES (761, 'Río Sucio', 1, 17);
INSERT INTO public.ciudades VALUES (762, 'Río Viejo', 1, 13);
INSERT INTO public.ciudades VALUES (763, 'Río de oro', 1, 20);
INSERT INTO public.ciudades VALUES (764, 'Ríonegro', 1, 5);
INSERT INTO public.ciudades VALUES (765, 'Ríosucio', 1, 27);
INSERT INTO public.ciudades VALUES (766, 'Sabana de Torres', 1, 68);
INSERT INTO public.ciudades VALUES (767, 'Sabanagrande', 1, 8);
INSERT INTO public.ciudades VALUES (768, 'Sabanalarga', 1, 5);
INSERT INTO public.ciudades VALUES (769, 'Sabanalarga', 1, 8);
INSERT INTO public.ciudades VALUES (770, 'Sabanalarga', 1, 85);
INSERT INTO public.ciudades VALUES (771, 'Sabanas de San Angel (SAN ANGEL)', 1, 47);
INSERT INTO public.ciudades VALUES (772, 'Sabaneta', 1, 5);
INSERT INTO public.ciudades VALUES (773, 'Saboyá', 1, 15);
INSERT INTO public.ciudades VALUES (774, 'Sahagún', 1, 23);
INSERT INTO public.ciudades VALUES (775, 'Saladoblanco', 1, 41);
INSERT INTO public.ciudades VALUES (776, 'Salamina', 1, 17);
INSERT INTO public.ciudades VALUES (777, 'Salamina', 1, 47);
INSERT INTO public.ciudades VALUES (778, 'Salazar', 1, 54);
INSERT INTO public.ciudades VALUES (779, 'Saldaña', 1, 73);
INSERT INTO public.ciudades VALUES (780, 'Salento', 1, 63);
INSERT INTO public.ciudades VALUES (781, 'Salgar', 1, 5);
INSERT INTO public.ciudades VALUES (782, 'Samacá', 1, 15);
INSERT INTO public.ciudades VALUES (783, 'Samaniego', 1, 52);
INSERT INTO public.ciudades VALUES (784, 'Samaná', 1, 17);
INSERT INTO public.ciudades VALUES (785, 'Sampués', 1, 70);
INSERT INTO public.ciudades VALUES (786, 'San Agustín', 1, 41);
INSERT INTO public.ciudades VALUES (787, 'San Alberto', 1, 20);
INSERT INTO public.ciudades VALUES (788, 'San Andrés', 1, 68);
INSERT INTO public.ciudades VALUES (789, 'San Andrés Sotavento', 1, 23);
INSERT INTO public.ciudades VALUES (790, 'San Andrés de Cuerquía', 1, 5);
INSERT INTO public.ciudades VALUES (791, 'San Antero', 1, 23);
INSERT INTO public.ciudades VALUES (792, 'San Antonio', 1, 73);
INSERT INTO public.ciudades VALUES (793, 'San Antonio de Tequendama', 1, 25);
INSERT INTO public.ciudades VALUES (794, 'San Benito', 1, 68);
INSERT INTO public.ciudades VALUES (795, 'San Benito Abad', 1, 70);
INSERT INTO public.ciudades VALUES (796, 'San Bernardo', 1, 25);
INSERT INTO public.ciudades VALUES (797, 'San Bernardo', 1, 52);
INSERT INTO public.ciudades VALUES (798, 'San Bernardo del Viento', 1, 23);
INSERT INTO public.ciudades VALUES (799, 'San Calixto', 1, 54);
INSERT INTO public.ciudades VALUES (800, 'San Carlos', 1, 5);
INSERT INTO public.ciudades VALUES (801, 'San Carlos', 1, 23);
INSERT INTO public.ciudades VALUES (802, 'San Carlos de Guaroa', 1, 50);
INSERT INTO public.ciudades VALUES (803, 'San Cayetano', 1, 25);
INSERT INTO public.ciudades VALUES (804, 'San Cayetano', 1, 54);
INSERT INTO public.ciudades VALUES (805, 'San Cristobal', 1, 13);
INSERT INTO public.ciudades VALUES (806, 'San Diego', 1, 20);
INSERT INTO public.ciudades VALUES (807, 'San Eduardo', 1, 15);
INSERT INTO public.ciudades VALUES (808, 'San Estanislao', 1, 13);
INSERT INTO public.ciudades VALUES (809, 'San Fernando', 1, 13);
INSERT INTO public.ciudades VALUES (810, 'San Francisco', 1, 5);
INSERT INTO public.ciudades VALUES (811, 'San Francisco', 1, 25);
INSERT INTO public.ciudades VALUES (812, 'San Francisco', 1, 86);
INSERT INTO public.ciudades VALUES (813, 'San Gíl', 1, 68);
INSERT INTO public.ciudades VALUES (814, 'San Jacinto', 1, 13);
INSERT INTO public.ciudades VALUES (815, 'San Jacinto del Cauca', 1, 13);
INSERT INTO public.ciudades VALUES (816, 'San Jerónimo', 1, 5);
INSERT INTO public.ciudades VALUES (817, 'San Joaquín', 1, 68);
INSERT INTO public.ciudades VALUES (818, 'San José', 1, 17);
INSERT INTO public.ciudades VALUES (819, 'San José de Miranda', 1, 68);
INSERT INTO public.ciudades VALUES (820, 'San José de Montaña', 1, 5);
INSERT INTO public.ciudades VALUES (821, 'San José de Pare', 1, 15);
INSERT INTO public.ciudades VALUES (822, 'San José de Uré', 1, 23);
INSERT INTO public.ciudades VALUES (823, 'San José del Fragua', 1, 18);
INSERT INTO public.ciudades VALUES (824, 'San José del Guaviare', 1, 95);
INSERT INTO public.ciudades VALUES (825, 'San José del Palmar', 1, 27);
INSERT INTO public.ciudades VALUES (826, 'San Juan de Arama', 1, 50);
INSERT INTO public.ciudades VALUES (827, 'San Juan de Betulia', 1, 70);
INSERT INTO public.ciudades VALUES (828, 'San Juan de Nepomuceno', 1, 13);
INSERT INTO public.ciudades VALUES (829, 'San Juan de Pasto', 1, 52);
INSERT INTO public.ciudades VALUES (830, 'San Juan de Río Seco', 1, 25);
INSERT INTO public.ciudades VALUES (831, 'San Juan de Urabá', 1, 5);
INSERT INTO public.ciudades VALUES (832, 'San Juan del Cesar', 1, 44);
INSERT INTO public.ciudades VALUES (833, 'San Juanito', 1, 50);
INSERT INTO public.ciudades VALUES (834, 'San Lorenzo', 1, 52);
INSERT INTO public.ciudades VALUES (835, 'San Luis', 1, 73);
INSERT INTO public.ciudades VALUES (836, 'San Luís', 1, 5);
INSERT INTO public.ciudades VALUES (837, 'San Luís de Gaceno', 1, 15);
INSERT INTO public.ciudades VALUES (838, 'San Luís de Palenque', 1, 85);
INSERT INTO public.ciudades VALUES (839, 'San Marcos', 1, 70);
INSERT INTO public.ciudades VALUES (840, 'San Martín', 1, 20);
INSERT INTO public.ciudades VALUES (841, 'San Martín', 1, 50);
INSERT INTO public.ciudades VALUES (842, 'San Martín de Loba', 1, 13);
INSERT INTO public.ciudades VALUES (843, 'San Mateo', 1, 15);
INSERT INTO public.ciudades VALUES (844, 'San Miguel', 1, 68);
INSERT INTO public.ciudades VALUES (845, 'San Miguel', 1, 86);
INSERT INTO public.ciudades VALUES (846, 'San Miguel de Sema', 1, 15);
INSERT INTO public.ciudades VALUES (847, 'San Onofre', 1, 70);
INSERT INTO public.ciudades VALUES (848, 'San Pablo', 1, 13);
INSERT INTO public.ciudades VALUES (849, 'San Pablo', 1, 52);
INSERT INTO public.ciudades VALUES (850, 'San Pablo de Borbur', 1, 15);
INSERT INTO public.ciudades VALUES (851, 'San Pedro', 1, 5);
INSERT INTO public.ciudades VALUES (852, 'San Pedro', 1, 70);
INSERT INTO public.ciudades VALUES (853, 'San Pedro', 1, 76);
INSERT INTO public.ciudades VALUES (854, 'San Pedro de Cartago', 1, 52);
INSERT INTO public.ciudades VALUES (855, 'San Pedro de Urabá', 1, 5);
INSERT INTO public.ciudades VALUES (856, 'San Pelayo', 1, 23);
INSERT INTO public.ciudades VALUES (857, 'San Rafael', 1, 5);
INSERT INTO public.ciudades VALUES (858, 'San Roque', 1, 5);
INSERT INTO public.ciudades VALUES (859, 'San Sebastián', 1, 19);
INSERT INTO public.ciudades VALUES (860, 'San Sebastián de Buenavista', 1, 47);
INSERT INTO public.ciudades VALUES (861, 'San Vicente', 1, 5);
INSERT INTO public.ciudades VALUES (862, 'San Vicente del Caguán', 1, 18);
INSERT INTO public.ciudades VALUES (863, 'San Vicente del Chucurí', 1, 68);
INSERT INTO public.ciudades VALUES (864, 'San Zenón', 1, 47);
INSERT INTO public.ciudades VALUES (865, 'Sandoná', 1, 52);
INSERT INTO public.ciudades VALUES (866, 'Santa Ana', 1, 47);
INSERT INTO public.ciudades VALUES (867, 'Santa Bárbara', 1, 5);
INSERT INTO public.ciudades VALUES (868, 'Santa Bárbara', 1, 68);
INSERT INTO public.ciudades VALUES (869, 'Santa Bárbara (Iscuandé)', 1, 52);
INSERT INTO public.ciudades VALUES (870, 'Santa Bárbara de Pinto', 1, 47);
INSERT INTO public.ciudades VALUES (871, 'Santa Catalina', 1, 13);
INSERT INTO public.ciudades VALUES (872, 'Santa Fé de Antioquia', 1, 5);
INSERT INTO public.ciudades VALUES (873, 'Santa Genoveva de Docorodó', 1, 27);
INSERT INTO public.ciudades VALUES (874, 'Santa Helena del Opón', 1, 68);
INSERT INTO public.ciudades VALUES (875, 'Santa Isabel', 1, 73);
INSERT INTO public.ciudades VALUES (876, 'Santa Lucía', 1, 8);
INSERT INTO public.ciudades VALUES (877, 'Santa Marta', 1, 47);
INSERT INTO public.ciudades VALUES (878, 'Santa María', 1, 15);
INSERT INTO public.ciudades VALUES (879, 'Santa María', 1, 41);
INSERT INTO public.ciudades VALUES (880, 'Santa Rosa', 1, 13);
INSERT INTO public.ciudades VALUES (881, 'Santa Rosa', 1, 19);
INSERT INTO public.ciudades VALUES (882, 'Santa Rosa de Cabal', 1, 66);
INSERT INTO public.ciudades VALUES (883, 'Santa Rosa de Osos', 1, 5);
INSERT INTO public.ciudades VALUES (884, 'Santa Rosa de Viterbo', 1, 15);
INSERT INTO public.ciudades VALUES (885, 'Santa Rosa del Sur', 1, 13);
INSERT INTO public.ciudades VALUES (886, 'Santa Rosalía', 1, 99);
INSERT INTO public.ciudades VALUES (887, 'Santa Sofía', 1, 15);
INSERT INTO public.ciudades VALUES (888, 'Santana', 1, 15);
INSERT INTO public.ciudades VALUES (889, 'Santander de Quilichao', 1, 19);
INSERT INTO public.ciudades VALUES (890, 'Santiago', 1, 54);
INSERT INTO public.ciudades VALUES (891, 'Santiago', 1, 86);
INSERT INTO public.ciudades VALUES (892, 'Santo Domingo', 1, 5);
INSERT INTO public.ciudades VALUES (893, 'Santo Tomás', 1, 8);
INSERT INTO public.ciudades VALUES (894, 'Santuario', 1, 5);
INSERT INTO public.ciudades VALUES (895, 'Santuario', 1, 66);
INSERT INTO public.ciudades VALUES (896, 'Sapuyes', 1, 52);
INSERT INTO public.ciudades VALUES (897, 'Saravena', 1, 81);
INSERT INTO public.ciudades VALUES (898, 'Sardinata', 1, 54);
INSERT INTO public.ciudades VALUES (899, 'Sasaima', 1, 25);
INSERT INTO public.ciudades VALUES (900, 'Sativanorte', 1, 15);
INSERT INTO public.ciudades VALUES (901, 'Sativasur', 1, 15);
INSERT INTO public.ciudades VALUES (902, 'Segovia', 1, 5);
INSERT INTO public.ciudades VALUES (903, 'Sesquilé', 1, 25);
INSERT INTO public.ciudades VALUES (904, 'Sevilla', 1, 76);
INSERT INTO public.ciudades VALUES (905, 'Siachoque', 1, 15);
INSERT INTO public.ciudades VALUES (906, 'Sibaté', 1, 25);
INSERT INTO public.ciudades VALUES (907, 'Sibundoy', 1, 86);
INSERT INTO public.ciudades VALUES (908, 'Silos', 1, 54);
INSERT INTO public.ciudades VALUES (909, 'Silvania', 1, 25);
INSERT INTO public.ciudades VALUES (910, 'Silvia', 1, 19);
INSERT INTO public.ciudades VALUES (911, 'Simacota', 1, 68);
INSERT INTO public.ciudades VALUES (912, 'Simijaca', 1, 25);
INSERT INTO public.ciudades VALUES (913, 'Simití', 1, 13);
INSERT INTO public.ciudades VALUES (914, 'Sincelejo', 1, 70);
INSERT INTO public.ciudades VALUES (915, 'Sincé', 1, 70);
INSERT INTO public.ciudades VALUES (916, 'Sipí', 1, 27);
INSERT INTO public.ciudades VALUES (917, 'Sitionuevo', 1, 47);
INSERT INTO public.ciudades VALUES (918, 'Soacha', 1, 25);
INSERT INTO public.ciudades VALUES (919, 'Soatá', 1, 15);
INSERT INTO public.ciudades VALUES (920, 'Socha', 1, 15);
INSERT INTO public.ciudades VALUES (921, 'Socorro', 1, 68);
INSERT INTO public.ciudades VALUES (922, 'Socotá', 1, 15);
INSERT INTO public.ciudades VALUES (923, 'Sogamoso', 1, 15);
INSERT INTO public.ciudades VALUES (924, 'Solano', 1, 18);
INSERT INTO public.ciudades VALUES (925, 'Soledad', 1, 8);
INSERT INTO public.ciudades VALUES (926, 'Solita', 1, 18);
INSERT INTO public.ciudades VALUES (927, 'Somondoco', 1, 15);
INSERT INTO public.ciudades VALUES (928, 'Sonsón', 1, 5);
INSERT INTO public.ciudades VALUES (929, 'Sopetrán', 1, 5);
INSERT INTO public.ciudades VALUES (930, 'Soplaviento', 1, 13);
INSERT INTO public.ciudades VALUES (931, 'Sopó', 1, 25);
INSERT INTO public.ciudades VALUES (932, 'Sora', 1, 15);
INSERT INTO public.ciudades VALUES (933, 'Soracá', 1, 15);
INSERT INTO public.ciudades VALUES (934, 'Sotaquirá', 1, 15);
INSERT INTO public.ciudades VALUES (935, 'Sotara (Paispamba)', 1, 19);
INSERT INTO public.ciudades VALUES (936, 'Sotomayor (Los Andes)', 1, 52);
INSERT INTO public.ciudades VALUES (937, 'Suaita', 1, 68);
INSERT INTO public.ciudades VALUES (938, 'Suan', 1, 8);
INSERT INTO public.ciudades VALUES (939, 'Suaza', 1, 41);
INSERT INTO public.ciudades VALUES (940, 'Subachoque', 1, 25);
INSERT INTO public.ciudades VALUES (941, 'Sucre', 1, 19);
INSERT INTO public.ciudades VALUES (942, 'Sucre', 1, 68);
INSERT INTO public.ciudades VALUES (943, 'Sucre', 1, 70);
INSERT INTO public.ciudades VALUES (944, 'Suesca', 1, 25);
INSERT INTO public.ciudades VALUES (945, 'Supatá', 1, 25);
INSERT INTO public.ciudades VALUES (946, 'Supía', 1, 17);
INSERT INTO public.ciudades VALUES (947, 'Suratá', 1, 68);
INSERT INTO public.ciudades VALUES (948, 'Susa', 1, 25);
INSERT INTO public.ciudades VALUES (949, 'Susacón', 1, 15);
INSERT INTO public.ciudades VALUES (950, 'Sutamarchán', 1, 15);
INSERT INTO public.ciudades VALUES (951, 'Sutatausa', 1, 25);
INSERT INTO public.ciudades VALUES (952, 'Sutatenza', 1, 15);
INSERT INTO public.ciudades VALUES (953, 'Suárez', 1, 19);
INSERT INTO public.ciudades VALUES (954, 'Suárez', 1, 73);
INSERT INTO public.ciudades VALUES (955, 'Sácama', 1, 85);
INSERT INTO public.ciudades VALUES (956, 'Sáchica', 1, 15);
INSERT INTO public.ciudades VALUES (957, 'Tabio', 1, 25);
INSERT INTO public.ciudades VALUES (958, 'Tadó', 1, 27);
INSERT INTO public.ciudades VALUES (959, 'Talaigua Nuevo', 1, 13);
INSERT INTO public.ciudades VALUES (960, 'Tamalameque', 1, 20);
INSERT INTO public.ciudades VALUES (961, 'Tame', 1, 81);
INSERT INTO public.ciudades VALUES (962, 'Taminango', 1, 52);
INSERT INTO public.ciudades VALUES (963, 'Tangua', 1, 52);
INSERT INTO public.ciudades VALUES (964, 'Taraira', 1, 97);
INSERT INTO public.ciudades VALUES (965, 'Tarazá', 1, 5);
INSERT INTO public.ciudades VALUES (966, 'Tarqui', 1, 41);
INSERT INTO public.ciudades VALUES (967, 'Tarso', 1, 5);
INSERT INTO public.ciudades VALUES (968, 'Tasco', 1, 15);
INSERT INTO public.ciudades VALUES (969, 'Tauramena', 1, 85);
INSERT INTO public.ciudades VALUES (970, 'Tausa', 1, 25);
INSERT INTO public.ciudades VALUES (971, 'Tello', 1, 41);
INSERT INTO public.ciudades VALUES (972, 'Tena', 1, 25);
INSERT INTO public.ciudades VALUES (973, 'Tenerife', 1, 47);
INSERT INTO public.ciudades VALUES (974, 'Tenjo', 1, 25);
INSERT INTO public.ciudades VALUES (975, 'Tenza', 1, 15);
INSERT INTO public.ciudades VALUES (976, 'Teorama', 1, 54);
INSERT INTO public.ciudades VALUES (977, 'Teruel', 1, 41);
INSERT INTO public.ciudades VALUES (978, 'Tesalia', 1, 41);
INSERT INTO public.ciudades VALUES (979, 'Tibacuy', 1, 25);
INSERT INTO public.ciudades VALUES (980, 'Tibaná', 1, 15);
INSERT INTO public.ciudades VALUES (981, 'Tibasosa', 1, 15);
INSERT INTO public.ciudades VALUES (982, 'Tibirita', 1, 25);
INSERT INTO public.ciudades VALUES (983, 'Tibú', 1, 54);
INSERT INTO public.ciudades VALUES (984, 'Tierralta', 1, 23);
INSERT INTO public.ciudades VALUES (985, 'Timaná', 1, 41);
INSERT INTO public.ciudades VALUES (986, 'Timbiquí', 1, 19);
INSERT INTO public.ciudades VALUES (987, 'Timbío', 1, 19);
INSERT INTO public.ciudades VALUES (988, 'Tinjacá', 1, 15);
INSERT INTO public.ciudades VALUES (989, 'Tipacoque', 1, 15);
INSERT INTO public.ciudades VALUES (990, 'Tiquisio (Puerto Rico)', 1, 13);
INSERT INTO public.ciudades VALUES (991, 'Titiribí', 1, 5);
INSERT INTO public.ciudades VALUES (992, 'Toca', 1, 15);
INSERT INTO public.ciudades VALUES (993, 'Tocaima', 1, 25);
INSERT INTO public.ciudades VALUES (994, 'Tocancipá', 1, 25);
INSERT INTO public.ciudades VALUES (995, 'Toguí', 1, 15);
INSERT INTO public.ciudades VALUES (996, 'Toledo', 1, 5);
INSERT INTO public.ciudades VALUES (997, 'Toledo', 1, 54);
INSERT INTO public.ciudades VALUES (998, 'Tolú', 1, 70);
INSERT INTO public.ciudades VALUES (999, 'Tolú Viejo', 1, 70);
INSERT INTO public.ciudades VALUES (1000, 'Tona', 1, 68);
INSERT INTO public.ciudades VALUES (1001, 'Topagá', 1, 15);
INSERT INTO public.ciudades VALUES (1002, 'Topaipí', 1, 25);
INSERT INTO public.ciudades VALUES (1003, 'Toribío', 1, 19);
INSERT INTO public.ciudades VALUES (1004, 'Toro', 1, 76);
INSERT INTO public.ciudades VALUES (1005, 'Tota', 1, 15);
INSERT INTO public.ciudades VALUES (1006, 'Totoró', 1, 19);
INSERT INTO public.ciudades VALUES (1007, 'Trinidad', 1, 85);
INSERT INTO public.ciudades VALUES (1008, 'Trujillo', 1, 76);
INSERT INTO public.ciudades VALUES (1009, 'Tubará', 1, 8);
INSERT INTO public.ciudades VALUES (1010, 'Tuchín', 1, 23);
INSERT INTO public.ciudades VALUES (1011, 'Tulúa', 1, 76);
INSERT INTO public.ciudades VALUES (1012, 'Tumaco', 1, 52);
INSERT INTO public.ciudades VALUES (1013, 'Tunja', 1, 15);
INSERT INTO public.ciudades VALUES (1014, 'Tunungua', 1, 15);
INSERT INTO public.ciudades VALUES (1015, 'Turbaco', 1, 13);
INSERT INTO public.ciudades VALUES (1016, 'Turbaná', 1, 13);
INSERT INTO public.ciudades VALUES (1017, 'Turbo', 1, 5);
INSERT INTO public.ciudades VALUES (1018, 'Turmequé', 1, 15);
INSERT INTO public.ciudades VALUES (1019, 'Tuta', 1, 15);
INSERT INTO public.ciudades VALUES (1020, 'Tutasá', 1, 15);
INSERT INTO public.ciudades VALUES (1021, 'Támara', 1, 85);
INSERT INTO public.ciudades VALUES (1022, 'Támesis', 1, 5);
INSERT INTO public.ciudades VALUES (1023, 'Túquerres', 1, 52);
INSERT INTO public.ciudades VALUES (1024, 'Ubalá', 1, 25);
INSERT INTO public.ciudades VALUES (1025, 'Ubaque', 1, 25);
INSERT INTO public.ciudades VALUES (1026, 'Ubaté', 1, 25);
INSERT INTO public.ciudades VALUES (1027, 'Ulloa', 1, 76);
INSERT INTO public.ciudades VALUES (1028, 'Une', 1, 25);
INSERT INTO public.ciudades VALUES (1029, 'Unguía', 1, 27);
INSERT INTO public.ciudades VALUES (1030, 'Unión Panamericana (ÁNIMAS)', 1, 27);
INSERT INTO public.ciudades VALUES (1031, 'Uramita', 1, 5);
INSERT INTO public.ciudades VALUES (1032, 'Uribe', 1, 50);
INSERT INTO public.ciudades VALUES (1033, 'Uribia', 1, 44);
INSERT INTO public.ciudades VALUES (1034, 'Urrao', 1, 5);
INSERT INTO public.ciudades VALUES (1035, 'Urumita', 1, 44);
INSERT INTO public.ciudades VALUES (1036, 'Usiacuri', 1, 8);
INSERT INTO public.ciudades VALUES (1037, 'Valdivia', 1, 5);
INSERT INTO public.ciudades VALUES (1038, 'Valencia', 1, 23);
INSERT INTO public.ciudades VALUES (1039, 'Valle de San José', 1, 68);
INSERT INTO public.ciudades VALUES (1040, 'Valle de San Juan', 1, 73);
INSERT INTO public.ciudades VALUES (1041, 'Valle del Guamuez', 1, 86);
INSERT INTO public.ciudades VALUES (1042, 'Valledupar', 1, 20);
INSERT INTO public.ciudades VALUES (1043, 'Valparaiso', 1, 5);
INSERT INTO public.ciudades VALUES (1044, 'Valparaiso', 1, 18);
INSERT INTO public.ciudades VALUES (1045, 'Vegachí', 1, 5);
INSERT INTO public.ciudades VALUES (1046, 'Venadillo', 1, 73);
INSERT INTO public.ciudades VALUES (1047, 'Venecia', 1, 5);
INSERT INTO public.ciudades VALUES (1048, 'Venecia (Ospina Pérez)', 1, 25);
INSERT INTO public.ciudades VALUES (1049, 'Ventaquemada', 1, 15);
INSERT INTO public.ciudades VALUES (1050, 'Vergara', 1, 25);
INSERT INTO public.ciudades VALUES (1051, 'Versalles', 1, 76);
INSERT INTO public.ciudades VALUES (1052, 'Vetas', 1, 68);
INSERT INTO public.ciudades VALUES (1053, 'Viani', 1, 25);
INSERT INTO public.ciudades VALUES (1054, 'Vigía del Fuerte', 1, 5);
INSERT INTO public.ciudades VALUES (1055, 'Vijes', 1, 76);
INSERT INTO public.ciudades VALUES (1056, 'Villa Caro', 1, 54);
INSERT INTO public.ciudades VALUES (1057, 'Villa Rica', 1, 19);
INSERT INTO public.ciudades VALUES (1058, 'Villa de Leiva', 1, 15);
INSERT INTO public.ciudades VALUES (1059, 'Villa del Rosario', 1, 54);
INSERT INTO public.ciudades VALUES (1060, 'Villagarzón', 1, 86);
INSERT INTO public.ciudades VALUES (1061, 'Villagómez', 1, 25);
INSERT INTO public.ciudades VALUES (1062, 'Villahermosa', 1, 73);
INSERT INTO public.ciudades VALUES (1063, 'Villamaría', 1, 17);
INSERT INTO public.ciudades VALUES (1064, 'Villanueva', 1, 13);
INSERT INTO public.ciudades VALUES (1065, 'Villanueva', 1, 44);
INSERT INTO public.ciudades VALUES (1066, 'Villanueva', 1, 68);
INSERT INTO public.ciudades VALUES (1067, 'Villanueva', 1, 85);
INSERT INTO public.ciudades VALUES (1068, 'Villapinzón', 1, 25);
INSERT INTO public.ciudades VALUES (1069, 'Villarrica', 1, 73);
INSERT INTO public.ciudades VALUES (1070, 'Villavicencio', 1, 50);
INSERT INTO public.ciudades VALUES (1071, 'Villavieja', 1, 41);
INSERT INTO public.ciudades VALUES (1072, 'Villeta', 1, 25);
INSERT INTO public.ciudades VALUES (1073, 'Viotá', 1, 25);
INSERT INTO public.ciudades VALUES (1074, 'Viracachá', 1, 15);
INSERT INTO public.ciudades VALUES (1075, 'Vista Hermosa', 1, 50);
INSERT INTO public.ciudades VALUES (1076, 'Viterbo', 1, 17);
INSERT INTO public.ciudades VALUES (1077, 'Vélez', 1, 68);
INSERT INTO public.ciudades VALUES (1078, 'Yacopí', 1, 25);
INSERT INTO public.ciudades VALUES (1079, 'Yacuanquer', 1, 52);
INSERT INTO public.ciudades VALUES (1080, 'Yaguará', 1, 41);
INSERT INTO public.ciudades VALUES (1081, 'Yalí', 1, 5);
INSERT INTO public.ciudades VALUES (1082, 'Yarumal', 1, 5);
INSERT INTO public.ciudades VALUES (1083, 'Yolombó', 1, 5);
INSERT INTO public.ciudades VALUES (1084, 'Yondó (Casabe)', 1, 5);
INSERT INTO public.ciudades VALUES (1085, 'Yopal', 1, 85);
INSERT INTO public.ciudades VALUES (1086, 'Yotoco', 1, 76);
INSERT INTO public.ciudades VALUES (1087, 'Yumbo', 1, 76);
INSERT INTO public.ciudades VALUES (1088, 'Zambrano', 1, 13);
INSERT INTO public.ciudades VALUES (1089, 'Zapatoca', 1, 68);
INSERT INTO public.ciudades VALUES (1090, 'Zapayán (PUNTA DE PIEDRAS)', 1, 47);
INSERT INTO public.ciudades VALUES (1091, 'Zaragoza', 1, 5);
INSERT INTO public.ciudades VALUES (1092, 'Zarzal', 1, 76);
INSERT INTO public.ciudades VALUES (1093, 'Zetaquirá', 1, 15);
INSERT INTO public.ciudades VALUES (1094, 'Zipacón', 1, 25);
INSERT INTO public.ciudades VALUES (1095, 'Zipaquirá', 1, 25);
INSERT INTO public.ciudades VALUES (1096, 'Zona Bananera (PRADO - SEVILLA)', 1, 47);
INSERT INTO public.ciudades VALUES (1097, 'Ábrego', 1, 54);
INSERT INTO public.ciudades VALUES (1098, 'Íquira', 1, 41);
INSERT INTO public.ciudades VALUES (1099, 'Úmbita', 1, 15);
INSERT INTO public.ciudades VALUES (1100, 'Útica', 1, 25);


--
-- TOC entry 3425 (class 0 OID 232319)
-- Dependencies: 218
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientes VALUES (2, '1101000002', 'Daniela', 'Ortiz', 'Calle  12 73 75', 21);
INSERT INTO public.clientes VALUES (3, '1101000003', 'Sofía', 'Molina', 'Avenida 7 91 14', 19);
INSERT INTO public.clientes VALUES (4, '1101000004', 'Álvaro', 'Pérez', 'Calle  11 59 10', 22);
INSERT INTO public.clientes VALUES (5, '1101000005', 'Isabella', 'Pérez', 'Calle  85 31 66', 4);
INSERT INTO public.clientes VALUES (6, '1101000006', 'Valentina', 'Navarro', 'Diagonal 13 79 3', 6);
INSERT INTO public.clientes VALUES (7, '1101000007', 'Aitor', 'Pérez', 'Avenida 84 90 87', 10);
INSERT INTO public.clientes VALUES (8, '1101000008', 'Jennifer', 'Ferrer', 'Avenida 88 87 68', 10);
INSERT INTO public.clientes VALUES (9, '1101000009', 'Alejandro', 'Sánchez', 'Carrera 69 84 43', 22);
INSERT INTO public.clientes VALUES (10, '1101000010', 'Julia', 'Hernández', 'Diagonal 20 90 54', 15);
INSERT INTO public.clientes VALUES (11, '1101000011', 'Marcos', 'Ferrer', 'Carrera 12 33 94', 9);
INSERT INTO public.clientes VALUES (12, '1101000012', 'David', 'Hernández', 'Calle  11 84 59', 25);
INSERT INTO public.clientes VALUES (13, '1101000013', 'Daniel', 'Escobar', 'Calle  8 5 80', 24);
INSERT INTO public.clientes VALUES (14, '1101000014', 'Lucía', 'Martínez', 'Calle  82 36 22', 5);
INSERT INTO public.clientes VALUES (15, '1101000015', 'Jennifer', 'Sánchez', 'Carrera 30 8 98', 11);
INSERT INTO public.clientes VALUES (16, '1101000016', 'Pablo', 'Zamora', 'Calle  55 38 96', 6);
INSERT INTO public.clientes VALUES (17, '1101000017', 'Carlos', 'Díaz', 'Avenida 86 86 44', 3);
INSERT INTO public.clientes VALUES (18, '1101000018', 'Daniela', 'Vargas', 'Carrera 3 14 87', 8);
INSERT INTO public.clientes VALUES (19, '1101000019', 'Iker', 'López', 'Calle  41 92 55', 20);
INSERT INTO public.clientes VALUES (20, '1101000020', 'Leo', 'Villalobos', 'Calle  17 99 64', 12);
INSERT INTO public.clientes VALUES (21, '1101000021', 'Daniel', 'Molina', 'Calle  83 9 15', 10);
INSERT INTO public.clientes VALUES (22, '1101000022', 'Francisco', 'Molina', 'Diagonal 8 50 80', 6);
INSERT INTO public.clientes VALUES (23, '1101000023', 'Andrea', 'Moreno', 'Carrera 23 91 67', 1);
INSERT INTO public.clientes VALUES (24, '1101000024', 'Alba', 'Moreno', 'Carrera 53 97 17', 11);
INSERT INTO public.clientes VALUES (25, '1101000025', 'Hugo', 'García', 'Diagonal 11 16 96', 11);
INSERT INTO public.clientes VALUES (26, '1101000026', 'Carlos', 'Ferrer', 'Diagonal 43 68 68', 5);
INSERT INTO public.clientes VALUES (27, '1101000027', 'Martín', 'Ruiz', 'Calle  7 64 78', 16);
INSERT INTO public.clientes VALUES (28, '1101000028', 'Lucas', 'Vázquez', 'Avenida 10 22 35', 16);
INSERT INTO public.clientes VALUES (29, '1101000029', 'Amelia', 'Jiménez', 'Calle  42 50 60', 1);
INSERT INTO public.clientes VALUES (30, '1101000030', 'Álvaro', 'Ortiz', 'Carrera 51 62 59', 9);
INSERT INTO public.clientes VALUES (31, '1101000031', 'Juan', 'Sánchez', 'Calle  62 63 28', 1);
INSERT INTO public.clientes VALUES (32, '1101000032', 'Paula', 'Navarro', 'Avenida 32 65 45', 3);
INSERT INTO public.clientes VALUES (33, '1101000033', 'Daniela', 'Vega', 'Carrera 10 69 34', 24);
INSERT INTO public.clientes VALUES (34, '1101000034', 'Nora', 'Hernández', 'Diagonal 73 64 59', 7);
INSERT INTO public.clientes VALUES (35, '1101000035', 'Sara', 'Navarro', 'Carrera 33 40 4', 15);
INSERT INTO public.clientes VALUES (36, '1101000036', 'Andrés', 'Torres', 'Avenida 43 62 53', 25);
INSERT INTO public.clientes VALUES (37, '1101000037', 'Hugo', 'Jiménez', 'Carrera 76 0 19', 19);
INSERT INTO public.clientes VALUES (38, '1101000038', 'Daniel', 'Hernández', 'Diagonal 82 97 77', 1);
INSERT INTO public.clientes VALUES (39, '1101000039', 'Javier', 'Ferrer', 'Carrera 78 90 32', 6);
INSERT INTO public.clientes VALUES (40, '1101000040', 'Hugo', 'Zamora', 'Avenida 5 15 72', 23);
INSERT INTO public.clientes VALUES (41, '1101000041', 'Nora', 'Villalobos', 'Diagonal 31 74 93', 17);
INSERT INTO public.clientes VALUES (42, '1101000042', 'Laura', 'González', 'Carrera 56 30 31', 24);
INSERT INTO public.clientes VALUES (43, '1101000043', 'Mateo', 'Sánchez', 'Avenida 8 33 77', 8);
INSERT INTO public.clientes VALUES (44, '1101000044', 'Daniela', 'Navarro', 'Diagonal 59 87 98', 23);
INSERT INTO public.clientes VALUES (45, '1101000045', 'Paula', 'Vargas', 'Carrera 32 75 44', 9);
INSERT INTO public.clientes VALUES (46, '1101000046', 'Samuel', 'Hernández', 'Diagonal 19 5 35', 16);
INSERT INTO public.clientes VALUES (47, '1101000047', 'Jorge', 'Zamora', 'Carrera 28 52 55', 15);
INSERT INTO public.clientes VALUES (48, '1101000048', 'Álvaro', 'Ortiz', 'Diagonal 51 46 85', 25);
INSERT INTO public.clientes VALUES (49, '1101000049', 'Ana', 'González', 'Avenida 21 28 72', 11);
INSERT INTO public.clientes VALUES (50, '1101000050', 'Iker', 'Molina', 'Avenida 83 35 45', 7);
INSERT INTO public.clientes VALUES (51, '1101000051', 'Ana', 'Ortiz', 'Diagonal 38 12 21', 10);
INSERT INTO public.clientes VALUES (52, '1101000052', 'Andrea', 'Hernández', 'Carrera 17 73 59', 14);
INSERT INTO public.clientes VALUES (53, '1101000053', 'Javier', 'Rodríguez', 'Avenida 77 36 88', 16);
INSERT INTO public.clientes VALUES (54, '1101000054', 'Iker', 'López', 'Avenida 47 61 20', 3);
INSERT INTO public.clientes VALUES (55, '1101000055', 'Jennifer', 'Navarro', 'Calle  87 86 97', 14);
INSERT INTO public.clientes VALUES (56, '1101000056', 'Juan', 'Gallardo', 'Carrera 75 36 86', 14);
INSERT INTO public.clientes VALUES (57, '1101000057', 'Luis', 'Pérez', 'Avenida 83 36 7', 22);
INSERT INTO public.clientes VALUES (58, '1101000058', 'Juan', 'Vega', 'Carrera 29 3 72', 7);
INSERT INTO public.clientes VALUES (59, '1101000059', 'Sara', 'López', 'Carrera 86 55 68', 1);
INSERT INTO public.clientes VALUES (60, '1101000060', 'Lucía', 'Blanco', 'Diagonal 67 72 26', 14);
INSERT INTO public.clientes VALUES (61, '1101000061', 'Hugo', 'Ramos', 'Carrera 30 67 27', 11);
INSERT INTO public.clientes VALUES (62, '1101000062', 'Hugo', 'Ruiz', 'Carrera 93 44 54', 7);
INSERT INTO public.clientes VALUES (63, '1101000063', 'Valentina', 'López', 'Diagonal 34 6 22', 15);
INSERT INTO public.clientes VALUES (64, '1101000064', 'Jennifer', 'Díaz', 'Avenida 1 47 93', 4);
INSERT INTO public.clientes VALUES (65, '1101000065', 'Paula', 'Jiménez', 'Diagonal 33 89 32', 13);
INSERT INTO public.clientes VALUES (66, '1101000066', 'David', 'García', 'Avenida 15 94 96', 22);
INSERT INTO public.clientes VALUES (67, '1101000067', 'Daniela', 'Vega', 'Calle  3 59 81', 9);
INSERT INTO public.clientes VALUES (68, '1101000068', 'Laura', 'González', 'Avenida 73 98 78', 14);
INSERT INTO public.clientes VALUES (69, '1101000069', 'Daniel', 'Valdez', 'Diagonal 65 63 52', 14);
INSERT INTO public.clientes VALUES (70, '1101000070', 'Eduardo', 'Navarro', 'Carrera 4 69 90', 1);
INSERT INTO public.clientes VALUES (71, '1101000071', 'Emma', 'Vega', 'Calle  4 50 85', 19);
INSERT INTO public.clientes VALUES (72, '1101000072', 'Álvaro', 'Álvarez', 'Diagonal 81 7 62', 20);
INSERT INTO public.clientes VALUES (73, '1101000073', 'Jennifer', 'Sánchez', 'Calle  57 5 43', 23);
INSERT INTO public.clientes VALUES (74, '1101000074', 'Daniel', 'Sánchez', 'Avenida 35 92 37', 4);
INSERT INTO public.clientes VALUES (75, '1101000075', 'Pablo', 'Vázquez', 'Diagonal 83 39 79', 5);
INSERT INTO public.clientes VALUES (76, '1101000076', 'Carlos', 'Gutiérrez', 'Carrera 1 5 64', 25);
INSERT INTO public.clientes VALUES (77, '1101000077', 'Carlos', 'García', 'Calle  4 20 83', 13);
INSERT INTO public.clientes VALUES (78, '1101000078', 'Sofía', 'Torres', 'Calle  63 28 53', 10);
INSERT INTO public.clientes VALUES (79, '1101000079', 'Aitana', 'Vega', 'Calle  60 56 21', 16);
INSERT INTO public.clientes VALUES (80, '1101000080', 'Pablo', 'García', 'Avenida 36 72 95', 12);
INSERT INTO public.clientes VALUES (81, '1101000081', 'Isabella', 'Pérez', 'Carrera 24 93 70', 1);
INSERT INTO public.clientes VALUES (82, '1101000082', 'Pablo', 'Molina', 'Diagonal 34 81 47', 14);
INSERT INTO public.clientes VALUES (83, '1101000083', 'Sofía', 'González', 'Carrera 73 79 0', 14);
INSERT INTO public.clientes VALUES (84, '1101000084', 'Juan', 'Martínez', 'Carrera 99 50 17', 16);
INSERT INTO public.clientes VALUES (85, '1101000085', 'Francisco', 'Ortiz', 'Diagonal 94 51 53', 12);
INSERT INTO public.clientes VALUES (86, '1101000086', 'Pablo', 'Córdova', 'Avenida 99 97 42', 19);
INSERT INTO public.clientes VALUES (87, '1101000087', 'Paula', 'Molina', 'Avenida 2 28 19', 6);
INSERT INTO public.clientes VALUES (88, '1101000088', 'Amelia', 'Alonso', 'Calle  90 61 75', 2);
INSERT INTO public.clientes VALUES (89, '1101000089', 'Mateo', 'Calderón', 'Avenida 24 98 80', 15);
INSERT INTO public.clientes VALUES (90, '1101000090', 'Valentina', 'González', 'Calle  63 47 12', 7);
INSERT INTO public.clientes VALUES (91, '1101000091', 'Hugo', 'Hernández', 'Carrera 85 55 89', 16);
INSERT INTO public.clientes VALUES (92, '1101000092', 'Daniela', 'Sánchez', 'Carrera 20 63 4', 3);
INSERT INTO public.clientes VALUES (93, '1101000093', 'Martín', 'Ramos', 'Calle  66 31 56', 12);
INSERT INTO public.clientes VALUES (94, '1101000094', 'José', 'Ramos', 'Avenida 88 39 85', 21);
INSERT INTO public.clientes VALUES (95, '1101000095', 'Jennifer', 'Córdova', 'Avenida 72 54 80', 10);
INSERT INTO public.clientes VALUES (96, '1101000096', 'Mateo', 'Martínez', 'Diagonal 57 7 99', 15);
INSERT INTO public.clientes VALUES (97, '1101000097', 'Iker', 'Escobar', 'Calle  97 30 21', 22);
INSERT INTO public.clientes VALUES (98, '1101000098', 'Daniel', 'Martínez', 'Avenida 22 69 76', 7);
INSERT INTO public.clientes VALUES (99, '1101000099', 'Daniel', 'Ferrer', 'Avenida 18 24 99', 15);
INSERT INTO public.clientes VALUES (100, '1101000100', 'Luis', 'Hernández', 'Diagonal 88 55 87', 24);
INSERT INTO public.clientes VALUES (101, '1101000101', 'Valentina', 'Calderón', 'Avenida 0 67 47', 23);
INSERT INTO public.clientes VALUES (102, '1101000102', 'Daniel', 'Jiménez', 'Calle  44 71 77', 25);
INSERT INTO public.clientes VALUES (103, '1101000103', 'Luis', 'Vázquez', 'Calle  12 78 51', 9);
INSERT INTO public.clientes VALUES (104, '1101000104', 'Luis', 'Moreno', 'Carrera 69 29 21', 7);
INSERT INTO public.clientes VALUES (105, '1101000105', 'Iker', 'Ruiz', 'Calle  74 66 81', 25);
INSERT INTO public.clientes VALUES (106, '1101000106', 'Carlos', 'Ortiz', 'Avenida 19 67 38', 24);
INSERT INTO public.clientes VALUES (107, '1101000107', 'Juan', 'Valdez', 'Calle  74 3 96', 13);
INSERT INTO public.clientes VALUES (108, '1101000108', 'Álvaro', 'Vega', 'Avenida 47 92 44', 15);
INSERT INTO public.clientes VALUES (109, '1101000109', 'Alejandro', 'Martínez', 'Avenida 32 52 57', 7);
INSERT INTO public.clientes VALUES (110, '1101000110', 'Jennifer', 'Pérez', 'Avenida 17 58 1', 22);
INSERT INTO public.clientes VALUES (111, '1101000111', 'Juan', 'Castillo', 'Carrera 54 39 33', 20);
INSERT INTO public.clientes VALUES (112, '1101000112', 'Daniel', 'Gallardo', 'Calle  56 87 67', 1);
INSERT INTO public.clientes VALUES (113, '1101000113', 'Luis', 'Calderón', 'Carrera 25 82 49', 1);
INSERT INTO public.clientes VALUES (114, '1101000114', 'Aitor', 'Vázquez', 'Calle  96 84 54', 4);
INSERT INTO public.clientes VALUES (115, '1101000115', 'David', 'Jiménez', 'Calle  32 34 97', 21);
INSERT INTO public.clientes VALUES (116, '1101000116', 'Marta', 'López', 'Calle  55 60 3', 13);
INSERT INTO public.clientes VALUES (117, '1101000117', 'Daniela', 'Pérez', 'Diagonal 51 35 53', 13);
INSERT INTO public.clientes VALUES (118, '1101000118', 'Luis', 'Sánchez', 'Diagonal 58 28 49', 11);
INSERT INTO public.clientes VALUES (119, '1101000119', 'Eduardo', 'Molina', 'Avenida 36 3 34', 18);
INSERT INTO public.clientes VALUES (120, '1101000120', 'Julia', 'Sánchez', 'Diagonal 17 42 10', 5);
INSERT INTO public.clientes VALUES (121, '1101000121', 'Lucía', 'Díaz', 'Avenida 46 47 54', 6);
INSERT INTO public.clientes VALUES (122, '1101000122', 'Miguel', 'Navarro', 'Calle  91 44 16', 8);
INSERT INTO public.clientes VALUES (123, '1101000123', 'Sara', 'Pérez', 'Diagonal 41 14 22', 1);
INSERT INTO public.clientes VALUES (124, '1101000124', 'Luis', 'Moreno', 'Calle  91 35 51', 19);
INSERT INTO public.clientes VALUES (125, '1101000125', 'Carlos', 'Moreno', 'Diagonal 61 89 61', 14);
INSERT INTO public.clientes VALUES (126, '1101000126', 'Jennifer', 'Moreno', 'Diagonal 28 59 43', 10);
INSERT INTO public.clientes VALUES (127, '1101000127', 'Aitana', 'Córdova', 'Diagonal 56 64 9', 17);
INSERT INTO public.clientes VALUES (128, '1101000128', 'Mateo', 'Córdova', 'Calle  55 8 31', 17);
INSERT INTO public.clientes VALUES (129, '1101000129', 'Daniel', 'Gallardo', 'Avenida 27 75 3', 13);
INSERT INTO public.clientes VALUES (130, '1101000130', 'Eduardo', 'Álvarez', 'Diagonal 2 40 58', 6);
INSERT INTO public.clientes VALUES (131, '1101000131', 'Alba', 'Pérez', 'Carrera 52 45 89', 21);
INSERT INTO public.clientes VALUES (132, '1101000132', 'David', 'Gutiérrez', 'Calle  56 78 96', 3);
INSERT INTO public.clientes VALUES (133, '1101000133', 'Samuel', 'Vázquez', 'Avenida 0 52 23', 19);
INSERT INTO public.clientes VALUES (134, '1101000134', 'Nora', 'Torres', 'Calle  18 17 72', 18);
INSERT INTO public.clientes VALUES (135, '1101000135', 'Nora', 'Pérez', 'Diagonal 3 90 8', 10);
INSERT INTO public.clientes VALUES (136, '1101000136', 'Juan', 'Díaz', 'Carrera 14 30 25', 6);
INSERT INTO public.clientes VALUES (137, '1101000137', 'Daniela', 'Valdez', 'Carrera 70 11 42', 1);
INSERT INTO public.clientes VALUES (138, '1101000138', 'Daniel', 'Martínez', 'Carrera 91 37 61', 2);
INSERT INTO public.clientes VALUES (139, '1101000139', 'Emma', 'Ruiz', 'Diagonal 78 59 71', 6);
INSERT INTO public.clientes VALUES (140, '1101000140', 'Iker', 'Gallardo', 'Calle  45 38 73', 4);
INSERT INTO public.clientes VALUES (141, '1101000141', 'Jorge', 'García', 'Avenida 88 47 83', 24);
INSERT INTO public.clientes VALUES (142, '1101000142', 'Lucía', 'Villalobos', 'Calle  34 24 16', 4);
INSERT INTO public.clientes VALUES (143, '1101000143', 'Samuel', 'Vega', 'Diagonal 29 61 75', 4);
INSERT INTO public.clientes VALUES (144, '1101000144', 'Miguel', 'Vázquez', 'Diagonal 72 50 61', 17);
INSERT INTO public.clientes VALUES (145, '1101000145', 'Jennifer', 'Martínez', 'Avenida 48 94 17', 8);
INSERT INTO public.clientes VALUES (146, '1101000146', 'Pablo', 'Zamora', 'Avenida 92 2 61', 24);
INSERT INTO public.clientes VALUES (147, '1101000147', 'Ana', 'Calderón', 'Carrera 57 31 14', 20);
INSERT INTO public.clientes VALUES (148, '1101000148', 'Andrea', 'Hernández', 'Avenida 35 24 35', 9);
INSERT INTO public.clientes VALUES (149, '1101000149', 'Jorge', 'Rodríguez', 'Calle  31 5 35', 10);
INSERT INTO public.clientes VALUES (150, '1101000150', 'David', 'Hernández', 'Avenida 52 4 67', 2);
INSERT INTO public.clientes VALUES (151, '1101000151', 'Isabella', 'Gutiérrez', 'Carrera 78 77 95', 19);
INSERT INTO public.clientes VALUES (152, '1101000152', 'David', 'Jiménez', 'Calle  9 33 59', 1);
INSERT INTO public.clientes VALUES (153, '1101000153', 'Emma', 'González', 'Carrera 13 8 77', 6);
INSERT INTO public.clientes VALUES (154, '1101000154', 'Martín', 'Benítez', 'Carrera 4 8 1', 10);
INSERT INTO public.clientes VALUES (155, '1101000155', 'Luis', 'Escobar', 'Diagonal 26 12 47', 16);
INSERT INTO public.clientes VALUES (156, '1101000156', 'Daniela', 'Álvarez', 'Diagonal 35 82 65', 14);
INSERT INTO public.clientes VALUES (157, '1101000157', 'Amelia', 'Vega', 'Diagonal 26 29 11', 10);
INSERT INTO public.clientes VALUES (158, '1101000158', 'Lucía', 'González', 'Avenida 92 42 64', 20);
INSERT INTO public.clientes VALUES (159, '1101000159', 'Jennifer', 'Zamora', 'Diagonal 95 84 1', 16);
INSERT INTO public.clientes VALUES (160, '1101000160', 'Amelia', 'Torres', 'Carrera 11 53 19', 22);
INSERT INTO public.clientes VALUES (161, '1101000161', 'Iker', 'González', 'Avenida 3 14 37', 14);
INSERT INTO public.clientes VALUES (162, '1101000162', 'Juan', 'López', 'Carrera 86 46 77', 1);
INSERT INTO public.clientes VALUES (163, '1101000163', 'José', 'Jiménez', 'Calle  76 5 65', 6);
INSERT INTO public.clientes VALUES (164, '1101000164', 'Daniel', 'Ferrer', 'Diagonal 41 35 46', 14);
INSERT INTO public.clientes VALUES (165, '1101000165', 'Iker', 'Álvarez', 'Avenida 63 46 59', 22);
INSERT INTO public.clientes VALUES (166, '1101000166', 'Lucas', 'Zamora', 'Carrera 14 84 91', 20);
INSERT INTO public.clientes VALUES (167, '1101000167', 'Andrés', 'Alonso', 'Carrera 80 19 1', 25);
INSERT INTO public.clientes VALUES (168, '1101000168', 'Marta', 'Hernández', 'Diagonal 52 57 36', 16);
INSERT INTO public.clientes VALUES (169, '1101000169', 'Aitor', 'Benítez', 'Avenida 74 76 76', 16);
INSERT INTO public.clientes VALUES (170, '1101000170', 'Alba', 'Alonso', 'Calle  78 87 91', 18);
INSERT INTO public.clientes VALUES (171, '1101000171', 'Alejandro', 'Rodríguez', 'Calle  92 68 5', 24);
INSERT INTO public.clientes VALUES (172, '1101000172', 'Ana', 'Vázquez', 'Diagonal 79 43 65', 11);
INSERT INTO public.clientes VALUES (173, '1101000173', 'David', 'Álvarez', 'Calle  96 52 31', 22);
INSERT INTO public.clientes VALUES (174, '1101000174', 'Iker', 'Pérez', 'Carrera 14 0 53', 5);
INSERT INTO public.clientes VALUES (175, '1101000175', 'Leo', 'Díaz', 'Avenida 9 80 35', 24);
INSERT INTO public.clientes VALUES (176, '1101000176', 'Sara', 'Ortiz', 'Avenida 74 31 21', 2);
INSERT INTO public.clientes VALUES (177, '1101000177', 'Jorge', 'Vargas', 'Avenida 13 55 45', 9);
INSERT INTO public.clientes VALUES (178, '1101000178', 'Marcos', 'Benítez', 'Carrera 25 50 31', 25);
INSERT INTO public.clientes VALUES (179, '1101000179', 'Daniela', 'Pérez', 'Diagonal 51 7 84', 24);
INSERT INTO public.clientes VALUES (180, '1101000180', 'Lucía', 'Vega', 'Calle  94 21 94', 24);
INSERT INTO public.clientes VALUES (181, '1101000181', 'Samuel', 'López', 'Carrera 46 56 74', 21);
INSERT INTO public.clientes VALUES (182, '1101000182', 'Jorge', 'Rodríguez', 'Carrera 44 32 5', 3);
INSERT INTO public.clientes VALUES (183, '1101000183', 'Daniel', 'Vega', 'Calle  22 98 23', 5);
INSERT INTO public.clientes VALUES (184, '1101000184', 'Paula', 'Hernández', 'Carrera 21 54 26', 3);
INSERT INTO public.clientes VALUES (185, '1101000185', 'Daniela', 'Rodríguez', 'Carrera 9 73 0', 2);
INSERT INTO public.clientes VALUES (186, '1101000186', 'Isabella', 'Álvarez', 'Calle  49 44 48', 8);
INSERT INTO public.clientes VALUES (187, '1101000187', 'Alejandro', 'Torres', 'Diagonal 19 18 11', 10);
INSERT INTO public.clientes VALUES (188, '1101000188', 'Luis', 'Villalobos', 'Calle  54 99 54', 20);
INSERT INTO public.clientes VALUES (189, '1101000189', 'Jennifer', 'Gutiérrez', 'Avenida 25 13 99', 1);
INSERT INTO public.clientes VALUES (190, '1101000190', 'Andrés', 'Martínez', 'Carrera 38 64 84', 17);
INSERT INTO public.clientes VALUES (191, '1101000191', 'Laura', 'Zamora', 'Diagonal 57 34 96', 14);
INSERT INTO public.clientes VALUES (192, '1101000192', 'Alejandro', 'Moreno', 'Diagonal 56 85 83', 13);
INSERT INTO public.clientes VALUES (193, '1101000193', 'Eduardo', 'García', 'Calle  43 10 95', 24);
INSERT INTO public.clientes VALUES (194, '1101000194', 'Daniel', 'García', 'Avenida 91 98 41', 15);
INSERT INTO public.clientes VALUES (195, '1101000195', 'Álvaro', 'Rodríguez', 'Calle  76 96 22', 14);
INSERT INTO public.clientes VALUES (196, '1101000196', 'Luis', 'Pérez', 'Diagonal 81 22 60', 12);
INSERT INTO public.clientes VALUES (197, '1101000197', 'Alba', 'Córdova', 'Avenida 11 22 73', 13);
INSERT INTO public.clientes VALUES (198, '1101000198', 'Ana', 'Gutiérrez', 'Calle  42 38 85', 12);
INSERT INTO public.clientes VALUES (199, '1101000199', 'Samuel', 'Rodríguez', 'Avenida 20 67 4', 21);
INSERT INTO public.clientes VALUES (200, '1101000200', 'Aitor', 'Vázquez', 'Avenida 17 92 46', 6);
INSERT INTO public.clientes VALUES (201, '1101000201', 'David', 'Moreno', 'Calle  51 66 45', 24);
INSERT INTO public.clientes VALUES (202, '1101000202', 'Nora', 'Jiménez', 'Avenida 85 70 13', 10);
INSERT INTO public.clientes VALUES (203, '1101000203', 'Daniel', 'Jiménez', 'Calle  15 81 31', 6);
INSERT INTO public.clientes VALUES (204, '1101000204', 'Emma', 'Vázquez', 'Diagonal 37 28 8', 18);
INSERT INTO public.clientes VALUES (205, '1101000205', 'Sara', 'Hernández', 'Avenida 27 16 75', 11);
INSERT INTO public.clientes VALUES (206, '1101000206', 'Carlos', 'Hernández', 'Calle  97 17 96', 13);
INSERT INTO public.clientes VALUES (207, '1101000207', 'Marcos', 'Molina', 'Carrera 34 77 74', 4);
INSERT INTO public.clientes VALUES (208, '1101000208', 'Álvaro', 'Córdova', 'Carrera 55 96 46', 8);
INSERT INTO public.clientes VALUES (209, '1101000209', 'Carlos', 'Pérez', 'Diagonal 98 65 77', 5);
INSERT INTO public.clientes VALUES (210, '1101000210', 'Samuel', 'Benítez', 'Carrera 47 49 77', 5);
INSERT INTO public.clientes VALUES (211, '1101000211', 'Samuel', 'Ramos', 'Diagonal 36 21 31', 10);
INSERT INTO public.clientes VALUES (212, '1101000212', 'Juan', 'García', 'Diagonal 49 64 16', 5);
INSERT INTO public.clientes VALUES (213, '1101000213', 'Juan', 'Pérez', 'Carrera 58 10 0', 24);
INSERT INTO public.clientes VALUES (214, '1101000214', 'Javier', 'Córdova', 'Avenida 89 2 48', 8);
INSERT INTO public.clientes VALUES (215, '1101000215', 'Alba', 'Blanco', 'Diagonal 89 21 0', 20);
INSERT INTO public.clientes VALUES (216, '1101000216', 'Iker', 'Pérez', 'Avenida 42 8 19', 1);
INSERT INTO public.clientes VALUES (217, '1101000217', 'Jorge', 'Moreno', 'Calle  66 18 44', 25);
INSERT INTO public.clientes VALUES (218, '1101000218', 'Daniela', 'González', 'Calle  1 52 8', 1);
INSERT INTO public.clientes VALUES (219, '1101000219', 'Daniel', 'Jiménez', 'Carrera 25 59 30', 6);
INSERT INTO public.clientes VALUES (220, '1101000220', 'Miguel', 'Alonso', 'Avenida 19 63 99', 24);
INSERT INTO public.clientes VALUES (221, '1101000221', 'Francisco', 'Navarro', 'Diagonal 96 43 84', 3);
INSERT INTO public.clientes VALUES (222, '1101000222', 'José', 'Navarro', 'Carrera 48 97 65', 22);
INSERT INTO public.clientes VALUES (223, '1101000223', 'Emma', 'Zamora', 'Diagonal 86 65 64', 11);
INSERT INTO public.clientes VALUES (224, '1101000224', 'Marcos', 'Ferrer', 'Calle  84 43 80', 22);
INSERT INTO public.clientes VALUES (225, '1101000225', 'Ana', 'Blanco', 'Calle  9 44 24', 25);
INSERT INTO public.clientes VALUES (226, '1101000226', 'Andrés', 'Sánchez', 'Diagonal 11 15 70', 24);
INSERT INTO public.clientes VALUES (227, '1101000227', 'Miguel', 'Jiménez', 'Diagonal 11 78 26', 3);
INSERT INTO public.clientes VALUES (228, '1101000228', 'Isabella', 'Ruiz', 'Calle  60 43 60', 22);
INSERT INTO public.clientes VALUES (229, '1101000229', 'Miguel', 'Zamora', 'Carrera 50 97 88', 2);
INSERT INTO public.clientes VALUES (230, '1101000230', 'Miguel', 'Ferrer', 'Carrera 60 67 63', 2);
INSERT INTO public.clientes VALUES (231, '1101000231', 'Eduardo', 'Pérez', 'Calle  38 94 70', 2);
INSERT INTO public.clientes VALUES (232, '1101000232', 'Mateo', 'Álvarez', 'Diagonal 56 48 27', 11);
INSERT INTO public.clientes VALUES (233, '1101000233', 'Alejandro', 'Rodríguez', 'Avenida 62 3 70', 19);
INSERT INTO public.clientes VALUES (234, '1101000234', 'Paula', 'Castillo', 'Diagonal 55 4 7', 7);
INSERT INTO public.clientes VALUES (235, '1101000235', 'Leo', 'Jiménez', 'Calle  2 4 84', 22);
INSERT INTO public.clientes VALUES (236, '1101000236', 'Jorge', 'Rodríguez', 'Avenida 33 0 63', 17);
INSERT INTO public.clientes VALUES (237, '1101000237', 'Daniela', 'Díaz', 'Diagonal 43 6 96', 14);
INSERT INTO public.clientes VALUES (238, '1101000238', 'Mateo', 'Alonso', 'Calle  20 18 33', 1);
INSERT INTO public.clientes VALUES (239, '1101000239', 'Juan', 'Calderón', 'Calle  99 70 12', 10);
INSERT INTO public.clientes VALUES (240, '1101000240', 'María', 'Álvarez', 'Diagonal 81 12 96', 17);
INSERT INTO public.clientes VALUES (241, '1101000241', 'Laura', 'Moreno', 'Diagonal 66 49 33', 10);
INSERT INTO public.clientes VALUES (242, '1101000242', 'Andrés', 'Martínez', 'Calle  31 69 77', 19);
INSERT INTO public.clientes VALUES (243, '1101000243', 'Hugo', 'Jiménez', 'Calle  54 43 82', 6);
INSERT INTO public.clientes VALUES (244, '1101000244', 'Jorge', 'Ruiz', 'Calle  77 63 42', 14);
INSERT INTO public.clientes VALUES (245, '1101000245', 'Lucía', 'Zamora', 'Calle  20 87 39', 20);
INSERT INTO public.clientes VALUES (246, '1101000246', 'Jennifer', 'López', 'Avenida 73 55 27', 22);
INSERT INTO public.clientes VALUES (247, '1101000247', 'Jorge', 'Sánchez', 'Avenida 5 55 99', 8);
INSERT INTO public.clientes VALUES (248, '1101000248', 'David', 'Sánchez', 'Carrera 6 19 0', 18);
INSERT INTO public.clientes VALUES (249, '1101000249', 'Paula', 'Moreno', 'Avenida 27 93 96', 10);
INSERT INTO public.clientes VALUES (250, '1101000250', 'Miguel', 'Gallardo', 'Diagonal 75 30 94', 11);
INSERT INTO public.clientes VALUES (1, '1101000001', 'otro nombre', 'Martínez', 'Carrera 97 78 89', 1);


--
-- TOC entry 3427 (class 0 OID 232325)
-- Dependencies: 220
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamentos VALUES (1, 'Antioquia', 5, 52);
INSERT INTO public.departamentos VALUES (2, 'Atlantico', 8, 52);
INSERT INTO public.departamentos VALUES (3, 'D. C. Santa Fe de Bogotá', 11, 52);
INSERT INTO public.departamentos VALUES (4, 'Bolivar', 13, 52);
INSERT INTO public.departamentos VALUES (5, 'Boyaca', 15, 52);
INSERT INTO public.departamentos VALUES (6, 'Caldas', 17, 52);
INSERT INTO public.departamentos VALUES (7, 'Caqueta', 18, 52);
INSERT INTO public.departamentos VALUES (8, 'Cauca', 19, 52);
INSERT INTO public.departamentos VALUES (9, 'Cesar', 20, 52);
INSERT INTO public.departamentos VALUES (10, 'Cordova', 23, 52);
INSERT INTO public.departamentos VALUES (11, 'Cundinamarca', 25, 52);
INSERT INTO public.departamentos VALUES (12, 'Choco', 27, 52);
INSERT INTO public.departamentos VALUES (13, 'Huila', 41, 52);
INSERT INTO public.departamentos VALUES (14, 'La Guajira', 44, 52);
INSERT INTO public.departamentos VALUES (15, 'Magdalena', 47, 52);
INSERT INTO public.departamentos VALUES (16, 'Meta', 50, 52);
INSERT INTO public.departamentos VALUES (17, 'Nariño', 52, 52);
INSERT INTO public.departamentos VALUES (18, 'Norte de Santander', 54, 52);
INSERT INTO public.departamentos VALUES (19, 'Quindio', 63, 52);
INSERT INTO public.departamentos VALUES (20, 'Risaralda', 66, 52);
INSERT INTO public.departamentos VALUES (21, 'Santander', 68, 52);
INSERT INTO public.departamentos VALUES (22, 'Sucre', 70, 52);
INSERT INTO public.departamentos VALUES (23, 'Tolima', 73, 52);
INSERT INTO public.departamentos VALUES (24, 'Valle', 76, 52);
INSERT INTO public.departamentos VALUES (25, 'Arauca', 81, 52);
INSERT INTO public.departamentos VALUES (26, 'Casanare', 85, 52);
INSERT INTO public.departamentos VALUES (27, 'Putumayo', 86, 52);
INSERT INTO public.departamentos VALUES (28, 'San Andres', 88, 52);
INSERT INTO public.departamentos VALUES (29, 'Amazonas', 91, 52);
INSERT INTO public.departamentos VALUES (30, 'Guainia', 94, 52);
INSERT INTO public.departamentos VALUES (31, 'Guaviare', 95, 52);
INSERT INTO public.departamentos VALUES (32, 'Vaupes', 97, 52);
INSERT INTO public.departamentos VALUES (33, 'Vichada', 99, 52);


--
-- TOC entry 3444 (class 0 OID 240668)
-- Dependencies: 238
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dummy VALUES (1, 'uno');
INSERT INTO public.dummy VALUES (2, 'dos');
INSERT INTO public.dummy VALUES (3, 'tres');
INSERT INTO public.dummy VALUES (4, '''cuatro''');
INSERT INTO public.dummy VALUES (5, '''cinco''');
INSERT INTO public.dummy VALUES (6, '''seis''');


--
-- TOC entry 3442 (class 0 OID 232476)
-- Dependencies: 236
-- Data for Name: dummy2; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dummy2 VALUES ('1 day', '08:27:29.853303', '2024-03-27', '2024-03-27 08:27:29.853303');


--
-- TOC entry 3429 (class 0 OID 232331)
-- Dependencies: 222
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facturas VALUES (1, 144, '2023-05-22', 20994.00, 209940.00, '1');
INSERT INTO public.facturas VALUES (2, 75, '2023-05-21', 1788.00, 17880.00, '2');
INSERT INTO public.facturas VALUES (3, 61, '2023-05-20', 3588.00, 35880.00, '3');
INSERT INTO public.facturas VALUES (4, 198, '2023-05-19', 15638.00, 156380.00, '4');
INSERT INTO public.facturas VALUES (5, 168, '2023-05-18', 2570.00, 25700.00, '5');
INSERT INTO public.facturas VALUES (6, 51, '2023-05-17', 3478.00, 34780.00, '6');
INSERT INTO public.facturas VALUES (7, 242, '2023-05-16', 1398.00, 13980.00, '7');
INSERT INTO public.facturas VALUES (8, 246, '2023-05-15', 9210.00, 92100.00, '8');
INSERT INTO public.facturas VALUES (9, 9, '2023-05-14', 1490.00, 14900.00, '9');
INSERT INTO public.facturas VALUES (10, 195, '2023-05-13', 6774.00, 67740.00, '10');
INSERT INTO public.facturas VALUES (11, 18, '2023-05-12', 3782.00, 37820.00, '11');
INSERT INTO public.facturas VALUES (12, 212, '2023-05-11', 9166.00, 91660.00, '12');
INSERT INTO public.facturas VALUES (13, 236, '2023-05-10', 5860.00, 58600.00, '13');
INSERT INTO public.facturas VALUES (14, 135, '2023-05-09', 6060.00, 60600.00, '14');
INSERT INTO public.facturas VALUES (15, 76, '2023-05-08', 24414.00, 244140.00, '15');
INSERT INTO public.facturas VALUES (16, 236, '2023-05-07', 348.00, 3480.00, '16');
INSERT INTO public.facturas VALUES (17, 249, '2023-05-06', 12444.00, 124440.00, '17');
INSERT INTO public.facturas VALUES (18, 239, '2023-05-05', 5596.00, 55960.00, '18');
INSERT INTO public.facturas VALUES (19, 73, '2023-05-04', 9980.00, 99800.00, '19');
INSERT INTO public.facturas VALUES (20, 211, '2023-05-03', 10748.00, 107480.00, '20');
INSERT INTO public.facturas VALUES (21, 21, '2023-05-02', 1396.00, 13960.00, '21');
INSERT INTO public.facturas VALUES (22, 67, '2023-05-01', 11452.00, 114520.00, '22');
INSERT INTO public.facturas VALUES (23, 16, '2023-04-30', 4418.00, 44180.00, '23');
INSERT INTO public.facturas VALUES (24, 7, '2023-04-29', 1106.00, 11060.00, '24');
INSERT INTO public.facturas VALUES (25, 106, '2023-04-28', 1896.00, 18960.00, '25');
INSERT INTO public.facturas VALUES (26, 162, '2023-04-27', 27986.00, 279860.00, '26');
INSERT INTO public.facturas VALUES (27, 189, '2023-04-26', 28466.00, 284660.00, '27');
INSERT INTO public.facturas VALUES (28, 114, '2023-04-25', 5328.00, 53280.00, '28');
INSERT INTO public.facturas VALUES (29, 210, '2023-04-24', 6268.00, 62680.00, '29');
INSERT INTO public.facturas VALUES (30, 160, '2023-04-23', 24768.00, 247680.00, '30');
INSERT INTO public.facturas VALUES (31, 117, '2023-04-22', 24870.00, 248700.00, '31');
INSERT INTO public.facturas VALUES (32, 106, '2023-04-21', 8712.00, 87120.00, '32');
INSERT INTO public.facturas VALUES (33, 184, '2023-04-20', 19844.00, 198440.00, '33');
INSERT INTO public.facturas VALUES (34, 193, '2023-04-19', 14268.00, 142680.00, '34');
INSERT INTO public.facturas VALUES (35, 65, '2023-04-18', 13172.00, 131720.00, '35');
INSERT INTO public.facturas VALUES (36, 203, '2023-04-17', 14782.00, 147820.00, '36');
INSERT INTO public.facturas VALUES (37, 127, '2023-04-16', 882.00, 8820.00, '37');
INSERT INTO public.facturas VALUES (38, 27, '2023-04-15', 4784.00, 47840.00, '38');
INSERT INTO public.facturas VALUES (39, 112, '2023-04-14', 158.00, 1580.00, '39');
INSERT INTO public.facturas VALUES (40, 191, '2023-04-13', 5784.00, 57840.00, '40');
INSERT INTO public.facturas VALUES (41, 61, '2023-04-12', 40056.00, 400560.00, '41');
INSERT INTO public.facturas VALUES (42, 132, '2023-04-11', 19248.00, 192480.00, '42');
INSERT INTO public.facturas VALUES (43, 112, '2023-04-10', 4482.00, 44820.00, '43');
INSERT INTO public.facturas VALUES (44, 129, '2023-04-09', 3588.00, 35880.00, '44');
INSERT INTO public.facturas VALUES (45, 98, '2023-04-08', 5420.00, 54200.00, '45');
INSERT INTO public.facturas VALUES (46, 94, '2023-04-07', 1194.00, 11940.00, '46');
INSERT INTO public.facturas VALUES (47, 72, '2023-04-06', 15942.00, 159420.00, '47');
INSERT INTO public.facturas VALUES (48, 235, '2023-04-05', 5382.00, 53820.00, '48');
INSERT INTO public.facturas VALUES (49, 47, '2023-04-04', 2464.00, 24640.00, '49');
INSERT INTO public.facturas VALUES (50, 69, '2023-04-03', 2384.00, 23840.00, '50');
INSERT INTO public.facturas VALUES (51, 214, '2023-04-02', 28782.00, 287820.00, '51');
INSERT INTO public.facturas VALUES (52, 24, '2023-04-01', 792.00, 7920.00, '52');
INSERT INTO public.facturas VALUES (53, 58, '2023-03-31', 38942.00, 389420.00, '53');
INSERT INTO public.facturas VALUES (54, 149, '2023-03-30', 3084.00, 30840.00, '54');
INSERT INTO public.facturas VALUES (55, 221, '2023-03-29', 9570.00, 95700.00, '55');
INSERT INTO public.facturas VALUES (56, 177, '2023-03-28', 4794.00, 47940.00, '56');
INSERT INTO public.facturas VALUES (57, 13, '2023-03-27', 7568.00, 75680.00, '57');
INSERT INTO public.facturas VALUES (58, 8, '2023-03-26', 3458.00, 34580.00, '58');
INSERT INTO public.facturas VALUES (59, 101, '2023-03-25', 19372.00, 193720.00, '59');
INSERT INTO public.facturas VALUES (60, 210, '2023-03-24', 15144.00, 151440.00, '60');
INSERT INTO public.facturas VALUES (61, 79, '2023-03-23', 29238.00, 292380.00, '61');
INSERT INTO public.facturas VALUES (62, 104, '2023-03-22', 18762.00, 187620.00, '62');
INSERT INTO public.facturas VALUES (63, 44, '2023-03-21', 2786.00, 27860.00, '63');
INSERT INTO public.facturas VALUES (64, 19, '2023-03-20', 28236.00, 282360.00, '64');
INSERT INTO public.facturas VALUES (65, 110, '2023-03-19', 13056.00, 130560.00, '65');
INSERT INTO public.facturas VALUES (66, 40, '2023-03-18', 13742.00, 137420.00, '66');
INSERT INTO public.facturas VALUES (67, 186, '2023-03-17', 18018.00, 180180.00, '67');
INSERT INTO public.facturas VALUES (68, 197, '2023-03-16', 19550.00, 195500.00, '68');
INSERT INTO public.facturas VALUES (69, 13, '2023-03-15', 9256.00, 92560.00, '69');
INSERT INTO public.facturas VALUES (70, 94, '2023-03-14', 2380.00, 23800.00, '70');
INSERT INTO public.facturas VALUES (71, 192, '2023-03-13', 28746.00, 287460.00, '71');
INSERT INTO public.facturas VALUES (72, 73, '2023-03-12', 20340.00, 203400.00, '72');
INSERT INTO public.facturas VALUES (73, 170, '2023-03-11', 1264.00, 12640.00, '73');
INSERT INTO public.facturas VALUES (74, 94, '2023-03-10', 20242.00, 202420.00, '74');
INSERT INTO public.facturas VALUES (75, 227, '2023-03-09', 15338.00, 153380.00, '75');
INSERT INTO public.facturas VALUES (76, 71, '2023-03-08', 35038.00, 350380.00, '76');
INSERT INTO public.facturas VALUES (77, 129, '2023-03-07', 1422.00, 14220.00, '77');
INSERT INTO public.facturas VALUES (78, 197, '2023-03-06', 28244.00, 282440.00, '78');
INSERT INTO public.facturas VALUES (79, 147, '2023-03-05', 13044.00, 130440.00, '79');
INSERT INTO public.facturas VALUES (80, 97, '2023-03-04', 5558.00, 55580.00, '80');
INSERT INTO public.facturas VALUES (81, 156, '2023-03-03', 8040.00, 80400.00, '81');
INSERT INTO public.facturas VALUES (82, 106, '2023-03-02', 12374.00, 123740.00, '82');
INSERT INTO public.facturas VALUES (83, 8, '2023-03-01', 5680.00, 56800.00, '83');
INSERT INTO public.facturas VALUES (84, 132, '2023-02-28', 5176.00, 51760.00, '84');
INSERT INTO public.facturas VALUES (85, 38, '2023-02-27', 7268.00, 72680.00, '85');
INSERT INTO public.facturas VALUES (86, 47, '2023-02-26', 5586.00, 55860.00, '86');
INSERT INTO public.facturas VALUES (87, 27, '2023-02-25', 10476.00, 104760.00, '87');
INSERT INTO public.facturas VALUES (88, 89, '2023-02-24', 7232.00, 72320.00, '88');
INSERT INTO public.facturas VALUES (89, 169, '2023-02-23', 990.00, 9900.00, '89');
INSERT INTO public.facturas VALUES (90, 244, '2023-02-22', 22386.00, 223860.00, '90');
INSERT INTO public.facturas VALUES (91, 131, '2023-02-21', 15984.00, 159840.00, '91');
INSERT INTO public.facturas VALUES (92, 11, '2023-02-20', 2988.00, 29880.00, '92');
INSERT INTO public.facturas VALUES (93, 64, '2023-02-19', 4980.00, 49800.00, '93');
INSERT INTO public.facturas VALUES (94, 156, '2023-02-18', 3580.00, 35800.00, '94');
INSERT INTO public.facturas VALUES (95, 136, '2023-02-17', 17146.00, 171460.00, '95');
INSERT INTO public.facturas VALUES (96, 95, '2023-02-16', 5580.00, 55800.00, '96');
INSERT INTO public.facturas VALUES (97, 136, '2023-02-15', 30148.00, 301480.00, '97');
INSERT INTO public.facturas VALUES (98, 170, '2023-02-14', 2610.00, 26100.00, '98');
INSERT INTO public.facturas VALUES (99, 211, '2023-02-13', 13140.00, 131400.00, '99');
INSERT INTO public.facturas VALUES (100, 78, '2023-02-12', 894.00, 8940.00, '100');
INSERT INTO public.facturas VALUES (101, 73, '2023-02-11', 16544.00, 165440.00, '101');
INSERT INTO public.facturas VALUES (102, 208, '2023-02-10', 17942.00, 179420.00, '102');
INSERT INTO public.facturas VALUES (103, 147, '2023-02-09', 4104.00, 41040.00, '103');
INSERT INTO public.facturas VALUES (104, 217, '2023-02-08', 1596.00, 15960.00, '104');
INSERT INTO public.facturas VALUES (105, 144, '2023-02-07', 3930.00, 39300.00, '105');
INSERT INTO public.facturas VALUES (106, 45, '2023-02-06', 3774.00, 37740.00, '106');
INSERT INTO public.facturas VALUES (107, 214, '2023-02-05', 998.00, 9980.00, '107');
INSERT INTO public.facturas VALUES (108, 57, '2023-02-04', 13654.00, 136540.00, '108');
INSERT INTO public.facturas VALUES (109, 34, '2023-02-03', 47736.00, 477360.00, '109');
INSERT INTO public.facturas VALUES (110, 176, '2023-02-02', 9588.00, 95880.00, '110');
INSERT INTO public.facturas VALUES (111, 37, '2023-02-01', 14964.00, 149640.00, '111');
INSERT INTO public.facturas VALUES (112, 92, '2023-01-31', 5818.00, 58180.00, '112');
INSERT INTO public.facturas VALUES (113, 63, '2023-01-30', 1584.00, 15840.00, '113');
INSERT INTO public.facturas VALUES (114, 186, '2023-01-29', 6128.00, 61280.00, '114');
INSERT INTO public.facturas VALUES (115, 36, '2023-01-28', 3778.00, 37780.00, '115');
INSERT INTO public.facturas VALUES (116, 106, '2023-01-27', 33066.00, 330660.00, '116');
INSERT INTO public.facturas VALUES (117, 4, '2023-01-26', 35140.00, 351400.00, '117');
INSERT INTO public.facturas VALUES (118, 44, '2023-01-25', 7352.00, 73520.00, '118');
INSERT INTO public.facturas VALUES (119, 139, '2023-01-24', 5584.00, 55840.00, '119');
INSERT INTO public.facturas VALUES (120, 47, '2023-01-23', 20682.00, 206820.00, '120');
INSERT INTO public.facturas VALUES (121, 197, '2023-01-22', 24350.00, 243500.00, '121');
INSERT INTO public.facturas VALUES (122, 50, '2023-01-21', 22282.00, 222820.00, '122');
INSERT INTO public.facturas VALUES (123, 57, '2023-01-20', 2148.00, 21480.00, '123');
INSERT INTO public.facturas VALUES (124, 235, '2023-01-19', 51678.00, 516780.00, '124');
INSERT INTO public.facturas VALUES (125, 224, '2023-01-18', 22776.00, 227760.00, '125');
INSERT INTO public.facturas VALUES (126, 180, '2023-01-17', 5102.00, 51020.00, '126');
INSERT INTO public.facturas VALUES (127, 241, '2023-01-16', 15630.00, 156300.00, '127');
INSERT INTO public.facturas VALUES (128, 137, '2023-01-15', 6280.00, 62800.00, '128');
INSERT INTO public.facturas VALUES (129, 171, '2023-01-14', 4504.00, 45040.00, '129');
INSERT INTO public.facturas VALUES (130, 152, '2023-01-13', 1584.00, 15840.00, '130');
INSERT INTO public.facturas VALUES (131, 153, '2023-01-12', 10746.00, 107460.00, '131');
INSERT INTO public.facturas VALUES (132, 125, '2023-01-11', 10882.00, 108820.00, '132');
INSERT INTO public.facturas VALUES (133, 164, '2023-01-10', 458.00, 4580.00, '133');
INSERT INTO public.facturas VALUES (134, 55, '2023-01-09', 20648.00, 206480.00, '134');
INSERT INTO public.facturas VALUES (135, 179, '2023-01-08', 4410.00, 44100.00, '135');
INSERT INTO public.facturas VALUES (136, 128, '2023-01-07', 1290.00, 12900.00, '136');
INSERT INTO public.facturas VALUES (137, 183, '2023-01-06', 14016.00, 140160.00, '137');
INSERT INTO public.facturas VALUES (138, 37, '2023-01-05', 20642.00, 206420.00, '138');
INSERT INTO public.facturas VALUES (139, 94, '2023-01-04', 5980.00, 59800.00, '139');
INSERT INTO public.facturas VALUES (140, 168, '2023-01-03', 796.00, 7960.00, '140');
INSERT INTO public.facturas VALUES (141, 121, '2023-01-02', 1782.00, 17820.00, '141');
INSERT INTO public.facturas VALUES (142, 103, '2023-01-01', 17638.00, 176380.00, '142');
INSERT INTO public.facturas VALUES (143, 211, '2022-12-31', 22740.00, 227400.00, '143');
INSERT INTO public.facturas VALUES (144, 183, '2022-12-30', 298.00, 2980.00, '144');
INSERT INTO public.facturas VALUES (145, 220, '2022-12-29', 4164.00, 41640.00, '145');
INSERT INTO public.facturas VALUES (146, 249, '2022-12-28', 18538.00, 185380.00, '146');
INSERT INTO public.facturas VALUES (147, 14, '2022-12-27', 22086.00, 220860.00, '147');
INSERT INTO public.facturas VALUES (148, 159, '2022-12-26', 3576.00, 35760.00, '148');
INSERT INTO public.facturas VALUES (149, 124, '2022-12-25', 22252.00, 222520.00, '149');
INSERT INTO public.facturas VALUES (150, 59, '2022-12-24', 27768.00, 277680.00, '150');
INSERT INTO public.facturas VALUES (151, 64, '2022-12-23', 5448.00, 54480.00, '151');
INSERT INTO public.facturas VALUES (152, 29, '2022-12-22', 396.00, 3960.00, '152');
INSERT INTO public.facturas VALUES (153, 57, '2022-12-21', 4376.00, 43760.00, '153');
INSERT INTO public.facturas VALUES (154, 245, '2022-12-20', 3346.00, 33460.00, '154');
INSERT INTO public.facturas VALUES (155, 69, '2022-12-19', 1538.00, 15380.00, '155');
INSERT INTO public.facturas VALUES (156, 53, '2022-12-18', 39150.00, 391500.00, '156');
INSERT INTO public.facturas VALUES (157, 64, '2022-12-17', 588.00, 5880.00, '157');
INSERT INTO public.facturas VALUES (158, 75, '2022-12-16', 17340.00, 173400.00, '158');
INSERT INTO public.facturas VALUES (159, 32, '2022-12-15', 11676.00, 116760.00, '159');
INSERT INTO public.facturas VALUES (160, 34, '2022-12-14', 1900.00, 19000.00, '160');
INSERT INTO public.facturas VALUES (161, 60, '2022-12-13', 22940.00, 229400.00, '161');
INSERT INTO public.facturas VALUES (162, 210, '2022-12-12', 19246.00, 192460.00, '162');
INSERT INTO public.facturas VALUES (163, 247, '2022-12-11', 19960.00, 199600.00, '163');
INSERT INTO public.facturas VALUES (164, 243, '2022-12-10', 196.00, 1960.00, '164');
INSERT INTO public.facturas VALUES (165, 36, '2022-12-09', 3876.00, 38760.00, '165');
INSERT INTO public.facturas VALUES (166, 167, '2022-12-08', 9066.00, 90660.00, '166');
INSERT INTO public.facturas VALUES (167, 147, '2022-12-07', 26102.00, 261020.00, '167');
INSERT INTO public.facturas VALUES (168, 174, '2022-12-06', 2432.00, 24320.00, '168');
INSERT INTO public.facturas VALUES (169, 74, '2022-12-05', 21746.00, 217460.00, '169');
INSERT INTO public.facturas VALUES (170, 74, '2022-12-04', 2286.00, 22860.00, '170');
INSERT INTO public.facturas VALUES (171, 26, '2022-12-03', 3980.00, 39800.00, '171');
INSERT INTO public.facturas VALUES (172, 99, '2022-12-02', 20902.00, 209020.00, '172');
INSERT INTO public.facturas VALUES (173, 220, '2022-12-01', 2386.00, 23860.00, '173');
INSERT INTO public.facturas VALUES (174, 165, '2022-11-30', 5834.00, 58340.00, '174');
INSERT INTO public.facturas VALUES (175, 164, '2022-11-29', 3508.00, 35080.00, '175');
INSERT INTO public.facturas VALUES (176, 140, '2022-11-28', 9072.00, 90720.00, '176');
INSERT INTO public.facturas VALUES (177, 47, '2022-11-27', 11754.00, 117540.00, '177');
INSERT INTO public.facturas VALUES (178, 28, '2022-11-26', 2990.00, 29900.00, '178');
INSERT INTO public.facturas VALUES (179, 72, '2022-11-25', 2980.00, 29800.00, '179');
INSERT INTO public.facturas VALUES (180, 229, '2022-11-24', 6480.00, 64800.00, '180');
INSERT INTO public.facturas VALUES (181, 250, '2022-11-23', 17528.00, 175280.00, '181');
INSERT INTO public.facturas VALUES (182, 59, '2022-11-22', 5584.00, 55840.00, '182');
INSERT INTO public.facturas VALUES (183, 147, '2022-11-21', 6406.00, 64060.00, '183');
INSERT INTO public.facturas VALUES (184, 175, '2022-11-20', 38726.00, 387260.00, '184');
INSERT INTO public.facturas VALUES (185, 180, '2022-11-19', 2506.00, 25060.00, '185');
INSERT INTO public.facturas VALUES (186, 95, '2022-11-18', 6632.00, 66320.00, '186');
INSERT INTO public.facturas VALUES (187, 176, '2022-11-17', 694.00, 6940.00, '187');
INSERT INTO public.facturas VALUES (188, 62, '2022-11-16', 2490.00, 24900.00, '188');
INSERT INTO public.facturas VALUES (189, 79, '2022-11-15', 23774.00, 237740.00, '189');
INSERT INTO public.facturas VALUES (190, 188, '2022-11-14', 10188.00, 101880.00, '190');
INSERT INTO public.facturas VALUES (191, 46, '2022-11-13', 4478.00, 44780.00, '191');
INSERT INTO public.facturas VALUES (192, 43, '2022-11-12', 22434.00, 224340.00, '192');
INSERT INTO public.facturas VALUES (193, 142, '2022-11-11', 10876.00, 108760.00, '193');
INSERT INTO public.facturas VALUES (194, 169, '2022-11-10', 2388.00, 23880.00, '194');
INSERT INTO public.facturas VALUES (195, 3, '2022-11-09', 1192.00, 11920.00, '195');
INSERT INTO public.facturas VALUES (196, 66, '2022-11-08', 23548.00, 235480.00, '196');
INSERT INTO public.facturas VALUES (197, 17, '2022-11-07', 1008.00, 10080.00, '197');
INSERT INTO public.facturas VALUES (198, 121, '2022-11-06', 9166.00, 91660.00, '198');
INSERT INTO public.facturas VALUES (199, 226, '2022-11-05', 498.00, 4980.00, '199');
INSERT INTO public.facturas VALUES (200, 249, '2022-11-04', 3686.00, 36860.00, '200');
INSERT INTO public.facturas VALUES (201, 115, '2022-11-03', 2174.00, 21740.00, '201');
INSERT INTO public.facturas VALUES (202, 177, '2022-11-02', 34554.00, 345540.00, '202');
INSERT INTO public.facturas VALUES (203, 228, '2022-11-01', 25546.00, 255460.00, '203');
INSERT INTO public.facturas VALUES (204, 141, '2022-10-31', 32540.00, 325400.00, '204');
INSERT INTO public.facturas VALUES (205, 202, '2022-10-30', 17170.00, 171700.00, '205');
INSERT INTO public.facturas VALUES (206, 1, '2022-10-29', 7474.00, 74740.00, '206');
INSERT INTO public.facturas VALUES (207, 38, '2022-10-28', 2578.00, 25780.00, '207');
INSERT INTO public.facturas VALUES (208, 238, '2022-10-27', 22902.00, 229020.00, '208');
INSERT INTO public.facturas VALUES (209, 111, '2022-10-26', 5164.00, 51640.00, '209');
INSERT INTO public.facturas VALUES (210, 122, '2022-10-25', 37962.00, 379620.00, '210');
INSERT INTO public.facturas VALUES (211, 225, '2022-10-24', 8478.00, 84780.00, '211');
INSERT INTO public.facturas VALUES (212, 223, '2022-10-23', 21220.00, 212200.00, '212');
INSERT INTO public.facturas VALUES (213, 243, '2022-10-22', 42244.00, 422440.00, '213');
INSERT INTO public.facturas VALUES (214, 5, '2022-10-21', 13696.00, 136960.00, '214');
INSERT INTO public.facturas VALUES (215, 220, '2022-10-20', 4960.00, 49600.00, '215');
INSERT INTO public.facturas VALUES (216, 141, '2022-10-19', 358.00, 3580.00, '216');
INSERT INTO public.facturas VALUES (217, 34, '2022-10-18', 22068.00, 220680.00, '217');
INSERT INTO public.facturas VALUES (218, 92, '2022-10-17', 7352.00, 73520.00, '218');
INSERT INTO public.facturas VALUES (219, 141, '2022-10-16', 2094.00, 20940.00, '219');
INSERT INTO public.facturas VALUES (220, 52, '2022-10-15', 22854.00, 228540.00, '220');
INSERT INTO public.facturas VALUES (221, 75, '2022-10-14', 8084.00, 80840.00, '221');
INSERT INTO public.facturas VALUES (222, 59, '2022-10-13', 17856.00, 178560.00, '222');
INSERT INTO public.facturas VALUES (223, 231, '2022-10-12', 2394.00, 23940.00, '223');
INSERT INTO public.facturas VALUES (224, 134, '2022-10-11', 21324.00, 213240.00, '224');
INSERT INTO public.facturas VALUES (225, 218, '2022-10-10', 59242.00, 592420.00, '225');
INSERT INTO public.facturas VALUES (226, 36, '2022-10-09', 24746.00, 247460.00, '226');
INSERT INTO public.facturas VALUES (227, 58, '2022-10-08', 2980.00, 29800.00, '227');
INSERT INTO public.facturas VALUES (228, 105, '2022-10-07', 358.00, 3580.00, '228');
INSERT INTO public.facturas VALUES (229, 245, '2022-10-06', 1782.00, 17820.00, '229');
INSERT INTO public.facturas VALUES (230, 18, '2022-10-05', 30274.00, 302740.00, '230');
INSERT INTO public.facturas VALUES (231, 18, '2022-10-04', 11958.00, 119580.00, '231');
INSERT INTO public.facturas VALUES (232, 12, '2022-10-03', 14150.00, 141500.00, '232');
INSERT INTO public.facturas VALUES (233, 196, '2022-10-02', 2260.00, 22600.00, '233');
INSERT INTO public.facturas VALUES (234, 84, '2022-10-01', 7844.00, 78440.00, '234');
INSERT INTO public.facturas VALUES (235, 129, '2022-09-30', 13682.00, 136820.00, '235');
INSERT INTO public.facturas VALUES (236, 173, '2022-09-29', 13180.00, 131800.00, '236');
INSERT INTO public.facturas VALUES (237, 244, '2022-09-28', 6262.00, 62620.00, '237');
INSERT INTO public.facturas VALUES (238, 239, '2022-09-27', 1980.00, 19800.00, '238');
INSERT INTO public.facturas VALUES (239, 99, '2022-09-26', 16336.00, 163360.00, '239');
INSERT INTO public.facturas VALUES (240, 102, '2022-09-25', 996.00, 9960.00, '240');
INSERT INTO public.facturas VALUES (241, 34, '2022-09-24', 28378.00, 283780.00, '241');
INSERT INTO public.facturas VALUES (242, 61, '2022-09-23', 4576.00, 45760.00, '242');
INSERT INTO public.facturas VALUES (243, 104, '2022-09-22', 1192.00, 11920.00, '243');
INSERT INTO public.facturas VALUES (244, 237, '2022-09-21', 5374.00, 53740.00, '244');
INSERT INTO public.facturas VALUES (245, 140, '2022-09-20', 11980.00, 119800.00, '245');
INSERT INTO public.facturas VALUES (246, 227, '2022-09-19', 2192.00, 21920.00, '246');
INSERT INTO public.facturas VALUES (247, 6, '2022-09-18', 8516.00, 85160.00, '247');
INSERT INTO public.facturas VALUES (248, 27, '2022-09-17', 16744.00, 167440.00, '248');
INSERT INTO public.facturas VALUES (249, 23, '2022-09-16', 23574.00, 235740.00, '249');
INSERT INTO public.facturas VALUES (250, 28, '2022-09-15', 14766.00, 147660.00, '250');
INSERT INTO public.facturas VALUES (251, 145, '2022-09-14', 9062.00, 90620.00, '251');
INSERT INTO public.facturas VALUES (252, 64, '2022-09-13', 4182.00, 41820.00, '252');
INSERT INTO public.facturas VALUES (253, 199, '2022-09-12', 43750.00, 437500.00, '253');
INSERT INTO public.facturas VALUES (254, 78, '2022-09-11', 35334.00, 353340.00, '254');
INSERT INTO public.facturas VALUES (255, 34, '2022-09-10', 16986.00, 169860.00, '255');
INSERT INTO public.facturas VALUES (256, 132, '2022-09-09', 30676.00, 306760.00, '256');
INSERT INTO public.facturas VALUES (257, 79, '2022-09-08', 12968.00, 129680.00, '257');
INSERT INTO public.facturas VALUES (258, 47, '2022-09-07', 21172.00, 211720.00, '258');
INSERT INTO public.facturas VALUES (259, 157, '2022-09-06', 19972.00, 199720.00, '259');
INSERT INTO public.facturas VALUES (260, 47, '2022-09-05', 21160.00, 211600.00, '260');
INSERT INTO public.facturas VALUES (261, 196, '2022-09-04', 1198.00, 11980.00, '261');
INSERT INTO public.facturas VALUES (262, 159, '2022-09-03', 21374.00, 213740.00, '262');
INSERT INTO public.facturas VALUES (263, 70, '2022-09-02', 6576.00, 65760.00, '263');
INSERT INTO public.facturas VALUES (264, 93, '2022-09-01', 28866.00, 288660.00, '264');
INSERT INTO public.facturas VALUES (265, 250, '2022-08-31', 23072.00, 230720.00, '265');
INSERT INTO public.facturas VALUES (266, 67, '2022-08-30', 10562.00, 105620.00, '266');
INSERT INTO public.facturas VALUES (267, 235, '2022-08-29', 7364.00, 73640.00, '267');
INSERT INTO public.facturas VALUES (268, 101, '2022-08-28', 22534.00, 225340.00, '268');
INSERT INTO public.facturas VALUES (269, 158, '2022-08-27', 1788.00, 17880.00, '269');
INSERT INTO public.facturas VALUES (270, 198, '2022-08-26', 44654.00, 446540.00, '270');
INSERT INTO public.facturas VALUES (271, 106, '2022-08-25', 1690.00, 16900.00, '271');
INSERT INTO public.facturas VALUES (272, 219, '2022-08-24', 12954.00, 129540.00, '272');
INSERT INTO public.facturas VALUES (273, 33, '2022-08-23', 19184.00, 191840.00, '273');
INSERT INTO public.facturas VALUES (274, 222, '2022-08-22', 9168.00, 91680.00, '274');
INSERT INTO public.facturas VALUES (275, 229, '2022-08-21', 12188.00, 121880.00, '275');
INSERT INTO public.facturas VALUES (276, 248, '2022-08-20', 6978.00, 69780.00, '276');
INSERT INTO public.facturas VALUES (277, 201, '2022-08-19', 10866.00, 108660.00, '277');
INSERT INTO public.facturas VALUES (278, 240, '2022-08-18', 4794.00, 47940.00, '278');
INSERT INTO public.facturas VALUES (279, 67, '2022-08-17', 3984.00, 39840.00, '279');
INSERT INTO public.facturas VALUES (280, 32, '2022-08-16', 6976.00, 69760.00, '280');
INSERT INTO public.facturas VALUES (281, 127, '2022-08-15', 3580.00, 35800.00, '281');
INSERT INTO public.facturas VALUES (282, 243, '2022-08-14', 24148.00, 241480.00, '282');
INSERT INTO public.facturas VALUES (283, 116, '2022-08-13', 46370.00, 463700.00, '283');
INSERT INTO public.facturas VALUES (284, 50, '2022-08-12', 980.00, 9800.00, '284');
INSERT INTO public.facturas VALUES (285, 29, '2022-08-11', 7972.00, 79720.00, '285');
INSERT INTO public.facturas VALUES (286, 6, '2022-08-10', 17082.00, 170820.00, '286');
INSERT INTO public.facturas VALUES (287, 164, '2022-08-09', 3788.00, 37880.00, '287');
INSERT INTO public.facturas VALUES (288, 106, '2022-08-08', 1850.00, 18500.00, '288');
INSERT INTO public.facturas VALUES (289, 130, '2022-08-07', 15566.00, 155660.00, '289');
INSERT INTO public.facturas VALUES (290, 145, '2022-08-06', 14170.00, 141700.00, '290');
INSERT INTO public.facturas VALUES (291, 158, '2022-08-05', 6472.00, 64720.00, '291');
INSERT INTO public.facturas VALUES (292, 153, '2022-08-04', 13958.00, 139580.00, '292');
INSERT INTO public.facturas VALUES (293, 189, '2022-08-03', 15360.00, 153600.00, '293');
INSERT INTO public.facturas VALUES (294, 58, '2022-08-02', 13060.00, 130600.00, '294');
INSERT INTO public.facturas VALUES (295, 222, '2022-08-01', 26668.00, 266680.00, '295');
INSERT INTO public.facturas VALUES (296, 225, '2022-07-31', 9364.00, 93640.00, '296');
INSERT INTO public.facturas VALUES (297, 8, '2022-07-30', 8676.00, 86760.00, '297');
INSERT INTO public.facturas VALUES (298, 90, '2022-07-29', 12928.00, 129280.00, '298');
INSERT INTO public.facturas VALUES (299, 234, '2022-07-28', 6380.00, 63800.00, '299');
INSERT INTO public.facturas VALUES (300, 177, '2022-07-27', 1198.00, 11980.00, '300');
INSERT INTO public.facturas VALUES (301, 145, '2022-07-26', 39922.00, 399220.00, '301');
INSERT INTO public.facturas VALUES (302, 10, '2022-07-25', 3086.00, 30860.00, '302');
INSERT INTO public.facturas VALUES (303, 186, '2022-07-24', 5188.00, 51880.00, '303');
INSERT INTO public.facturas VALUES (304, 67, '2022-07-23', 22152.00, 221520.00, '304');
INSERT INTO public.facturas VALUES (305, 60, '2022-07-22', 33516.00, 335160.00, '305');
INSERT INTO public.facturas VALUES (306, 13, '2022-07-21', 15790.00, 157900.00, '306');
INSERT INTO public.facturas VALUES (307, 59, '2022-07-20', 8954.00, 89540.00, '307');
INSERT INTO public.facturas VALUES (308, 69, '2022-07-19', 13980.00, 139800.00, '308');
INSERT INTO public.facturas VALUES (309, 96, '2022-07-18', 10086.00, 100860.00, '309');
INSERT INTO public.facturas VALUES (310, 32, '2022-07-17', 7114.00, 71140.00, '310');
INSERT INTO public.facturas VALUES (311, 159, '2022-07-16', 20982.00, 209820.00, '311');
INSERT INTO public.facturas VALUES (312, 157, '2022-07-15', 2388.00, 23880.00, '312');
INSERT INTO public.facturas VALUES (313, 72, '2022-07-14', 16748.00, 167480.00, '313');
INSERT INTO public.facturas VALUES (314, 208, '2022-07-13', 2286.00, 22860.00, '314');
INSERT INTO public.facturas VALUES (315, 80, '2022-07-12', 27640.00, 276400.00, '315');
INSERT INTO public.facturas VALUES (316, 114, '2022-07-11', 55138.00, 551380.00, '316');
INSERT INTO public.facturas VALUES (317, 87, '2022-07-10', 3910.00, 39100.00, '317');
INSERT INTO public.facturas VALUES (318, 105, '2022-07-09', 4076.00, 40760.00, '318');
INSERT INTO public.facturas VALUES (319, 7, '2022-07-08', 5650.00, 56500.00, '319');
INSERT INTO public.facturas VALUES (320, 124, '2022-07-07', 3952.00, 39520.00, '320');
INSERT INTO public.facturas VALUES (321, 15, '2022-07-06', 33948.00, 339480.00, '321');
INSERT INTO public.facturas VALUES (322, 86, '2022-07-05', 98.00, 980.00, '322');
INSERT INTO public.facturas VALUES (323, 155, '2022-07-04', 7464.00, 74640.00, '323');
INSERT INTO public.facturas VALUES (324, 4, '2022-07-03', 6286.00, 62860.00, '324');
INSERT INTO public.facturas VALUES (325, 245, '2022-07-02', 13970.00, 139700.00, '325');
INSERT INTO public.facturas VALUES (326, 68, '2022-07-01', 11150.00, 111500.00, '326');
INSERT INTO public.facturas VALUES (327, 94, '2022-06-30', 18266.00, 182660.00, '327');
INSERT INTO public.facturas VALUES (328, 122, '2022-06-29', 25334.00, 253340.00, '328');
INSERT INTO public.facturas VALUES (329, 243, '2022-06-28', 9054.00, 90540.00, '329');
INSERT INTO public.facturas VALUES (330, 246, '2022-06-27', 9062.00, 90620.00, '330');
INSERT INTO public.facturas VALUES (331, 246, '2022-06-26', 17434.00, 174340.00, '331');
INSERT INTO public.facturas VALUES (332, 10, '2022-06-25', 5858.00, 58580.00, '332');
INSERT INTO public.facturas VALUES (333, 156, '2022-06-24', 7748.00, 77480.00, '333');
INSERT INTO public.facturas VALUES (334, 85, '2022-06-23', 6170.00, 61700.00, '334');
INSERT INTO public.facturas VALUES (335, 114, '2022-06-22', 10164.00, 101640.00, '335');
INSERT INTO public.facturas VALUES (336, 11, '2022-06-21', 5666.00, 56660.00, '336');
INSERT INTO public.facturas VALUES (337, 118, '2022-06-20', 4374.00, 43740.00, '337');
INSERT INTO public.facturas VALUES (338, 9, '2022-06-19', 46632.00, 466320.00, '338');
INSERT INTO public.facturas VALUES (339, 212, '2022-06-18', 8784.00, 87840.00, '339');
INSERT INTO public.facturas VALUES (340, 86, '2022-06-17', 996.00, 9960.00, '340');
INSERT INTO public.facturas VALUES (341, 27, '2022-06-16', 32952.00, 329520.00, '341');
INSERT INTO public.facturas VALUES (342, 198, '2022-06-15', 11758.00, 117580.00, '342');
INSERT INTO public.facturas VALUES (343, 73, '2022-06-14', 9072.00, 90720.00, '343');
INSERT INTO public.facturas VALUES (344, 62, '2022-06-13', 23844.00, 238440.00, '344');
INSERT INTO public.facturas VALUES (345, 57, '2022-06-12', 594.00, 5940.00, '345');
INSERT INTO public.facturas VALUES (346, 2, '2022-06-11', 7170.00, 71700.00, '346');
INSERT INTO public.facturas VALUES (347, 193, '2022-06-10', 20364.00, 203640.00, '347');
INSERT INTO public.facturas VALUES (348, 90, '2022-06-09', 6668.00, 66680.00, '348');
INSERT INTO public.facturas VALUES (349, 83, '2022-06-08', 10560.00, 105600.00, '349');
INSERT INTO public.facturas VALUES (350, 244, '2022-06-07', 55182.00, 551820.00, '350');
INSERT INTO public.facturas VALUES (351, 33, '2022-06-06', 7768.00, 77680.00, '351');
INSERT INTO public.facturas VALUES (352, 82, '2022-06-05', 596.00, 5960.00, '352');
INSERT INTO public.facturas VALUES (353, 25, '2022-06-04', 16678.00, 166780.00, '353');
INSERT INTO public.facturas VALUES (354, 133, '2022-06-03', 716.00, 7160.00, '354');
INSERT INTO public.facturas VALUES (355, 7, '2022-06-02', 716.00, 7160.00, '355');
INSERT INTO public.facturas VALUES (356, 88, '2022-06-01', 15680.00, 156800.00, '356');
INSERT INTO public.facturas VALUES (357, 127, '2022-05-31', 9878.00, 98780.00, '357');
INSERT INTO public.facturas VALUES (358, 208, '2022-05-30', 34558.00, 345580.00, '358');
INSERT INTO public.facturas VALUES (359, 200, '2022-05-29', 2988.00, 29880.00, '359');
INSERT INTO public.facturas VALUES (360, 231, '2022-05-28', 8264.00, 82640.00, '360');
INSERT INTO public.facturas VALUES (361, 128, '2022-05-27', 1596.00, 15960.00, '361');
INSERT INTO public.facturas VALUES (362, 147, '2022-05-26', 2384.00, 23840.00, '362');
INSERT INTO public.facturas VALUES (363, 140, '2022-05-25', 2538.00, 25380.00, '363');
INSERT INTO public.facturas VALUES (364, 152, '2022-05-24', 46822.00, 468220.00, '364');
INSERT INTO public.facturas VALUES (365, 11, '2022-05-23', 2392.00, 23920.00, '365');
INSERT INTO public.facturas VALUES (366, 1, '2022-05-22', 12212.00, 122120.00, '366');
INSERT INTO public.facturas VALUES (367, 228, '2022-05-21', 16486.00, 164860.00, '367');
INSERT INTO public.facturas VALUES (368, 120, '2022-05-20', 3486.00, 34860.00, '368');
INSERT INTO public.facturas VALUES (369, 164, '2022-05-19', 23364.00, 233640.00, '369');
INSERT INTO public.facturas VALUES (370, 132, '2022-05-18', 6482.00, 64820.00, '370');
INSERT INTO public.facturas VALUES (371, 204, '2022-05-17', 8876.00, 88760.00, '371');
INSERT INTO public.facturas VALUES (372, 109, '2022-05-16', 25216.00, 252160.00, '372');
INSERT INTO public.facturas VALUES (373, 249, '2022-05-15', 19948.00, 199480.00, '373');
INSERT INTO public.facturas VALUES (374, 78, '2022-05-14', 996.00, 9960.00, '374');
INSERT INTO public.facturas VALUES (375, 109, '2022-05-13', 8868.00, 88680.00, '375');
INSERT INTO public.facturas VALUES (376, 170, '2022-05-12', 13568.00, 135680.00, '376');
INSERT INTO public.facturas VALUES (377, 128, '2022-05-11', 598.00, 5980.00, '377');
INSERT INTO public.facturas VALUES (378, 242, '2022-05-10', 8310.00, 83100.00, '378');
INSERT INTO public.facturas VALUES (379, 55, '2022-05-09', 12158.00, 121580.00, '379');
INSERT INTO public.facturas VALUES (380, 107, '2022-05-08', 5086.00, 50860.00, '380');
INSERT INTO public.facturas VALUES (381, 246, '2022-05-07', 17578.00, 175780.00, '381');
INSERT INTO public.facturas VALUES (382, 173, '2022-05-06', 5550.00, 55500.00, '382');
INSERT INTO public.facturas VALUES (383, 168, '2022-05-05', 686.00, 6860.00, '383');
INSERT INTO public.facturas VALUES (384, 98, '2022-05-04', 1490.00, 14900.00, '384');
INSERT INTO public.facturas VALUES (385, 218, '2022-05-03', 2958.00, 29580.00, '385');
INSERT INTO public.facturas VALUES (386, 199, '2022-05-02', 2194.00, 21940.00, '386');
INSERT INTO public.facturas VALUES (387, 2, '2022-05-01', 2792.00, 27920.00, '387');
INSERT INTO public.facturas VALUES (388, 158, '2022-04-30', 198.00, 1980.00, '388');
INSERT INTO public.facturas VALUES (389, 25, '2022-04-29', 17738.00, 177380.00, '389');
INSERT INTO public.facturas VALUES (390, 194, '2022-04-28', 30528.00, 305280.00, '390');
INSERT INTO public.facturas VALUES (391, 137, '2022-04-27', 3100.00, 31000.00, '391');
INSERT INTO public.facturas VALUES (392, 91, '2022-04-26', 16258.00, 162580.00, '392');
INSERT INTO public.facturas VALUES (393, 33, '2022-04-25', 1992.00, 19920.00, '393');
INSERT INTO public.facturas VALUES (394, 79, '2022-04-24', 3796.00, 37960.00, '394');
INSERT INTO public.facturas VALUES (395, 63, '2022-04-23', 16908.00, 169080.00, '395');
INSERT INTO public.facturas VALUES (396, 197, '2022-04-22', 17250.00, 172500.00, '396');
INSERT INTO public.facturas VALUES (397, 243, '2022-04-21', 3486.00, 34860.00, '397');
INSERT INTO public.facturas VALUES (398, 150, '2022-04-20', 7372.00, 73720.00, '398');
INSERT INTO public.facturas VALUES (399, 43, '2022-04-19', 8476.00, 84760.00, '399');
INSERT INTO public.facturas VALUES (400, 249, '2022-04-18', 31310.00, 313100.00, '400');
INSERT INTO public.facturas VALUES (401, 129, '2022-04-17', 7164.00, 71640.00, '401');
INSERT INTO public.facturas VALUES (402, 206, '2022-04-16', 796.00, 7960.00, '402');
INSERT INTO public.facturas VALUES (403, 195, '2022-04-15', 21352.00, 213520.00, '403');
INSERT INTO public.facturas VALUES (404, 212, '2022-04-14', 17444.00, 174440.00, '404');
INSERT INTO public.facturas VALUES (405, 134, '2022-04-13', 398.00, 3980.00, '405');
INSERT INTO public.facturas VALUES (406, 27, '2022-04-12', 20260.00, 202600.00, '406');
INSERT INTO public.facturas VALUES (407, 42, '2022-04-11', 39980.00, 399800.00, '407');
INSERT INTO public.facturas VALUES (408, 191, '2022-04-10', 3450.00, 34500.00, '408');
INSERT INTO public.facturas VALUES (409, 77, '2022-04-09', 10356.00, 103560.00, '409');
INSERT INTO public.facturas VALUES (410, 82, '2022-04-08', 13134.00, 131340.00, '410');
INSERT INTO public.facturas VALUES (411, 154, '2022-04-07', 7252.00, 72520.00, '411');
INSERT INTO public.facturas VALUES (412, 13, '2022-04-06', 24466.00, 244660.00, '412');
INSERT INTO public.facturas VALUES (413, 127, '2022-04-05', 2388.00, 23880.00, '413');
INSERT INTO public.facturas VALUES (414, 69, '2022-04-04', 28216.00, 282160.00, '414');
INSERT INTO public.facturas VALUES (415, 29, '2022-04-03', 8174.00, 81740.00, '415');
INSERT INTO public.facturas VALUES (416, 39, '2022-04-02', 2792.00, 27920.00, '416');
INSERT INTO public.facturas VALUES (417, 137, '2022-04-01', 2086.00, 20860.00, '417');
INSERT INTO public.facturas VALUES (418, 47, '2022-03-31', 4556.00, 45560.00, '418');
INSERT INTO public.facturas VALUES (419, 80, '2022-03-30', 13814.00, 138140.00, '419');
INSERT INTO public.facturas VALUES (420, 186, '2022-03-29', 7286.00, 72860.00, '420');
INSERT INTO public.facturas VALUES (421, 197, '2022-03-28', 22370.00, 223700.00, '421');
INSERT INTO public.facturas VALUES (422, 247, '2022-03-27', 7686.00, 76860.00, '422');
INSERT INTO public.facturas VALUES (423, 159, '2022-03-26', 26158.00, 261580.00, '423');
INSERT INTO public.facturas VALUES (424, 143, '2022-03-25', 12968.00, 129680.00, '424');
INSERT INTO public.facturas VALUES (425, 122, '2022-03-24', 14536.00, 145360.00, '425');
INSERT INTO public.facturas VALUES (426, 59, '2022-03-23', 14096.00, 140960.00, '426');
INSERT INTO public.facturas VALUES (427, 47, '2022-03-22', 3582.00, 35820.00, '427');
INSERT INTO public.facturas VALUES (428, 227, '2022-03-21', 19056.00, 190560.00, '428');
INSERT INTO public.facturas VALUES (429, 218, '2022-03-20', 21868.00, 218680.00, '429');
INSERT INTO public.facturas VALUES (430, 162, '2022-03-19', 9772.00, 97720.00, '430');
INSERT INTO public.facturas VALUES (431, 189, '2022-03-18', 1980.00, 19800.00, '431');
INSERT INTO public.facturas VALUES (432, 5, '2022-03-17', 16272.00, 162720.00, '432');
INSERT INTO public.facturas VALUES (433, 245, '2022-03-16', 294.00, 2940.00, '433');
INSERT INTO public.facturas VALUES (434, 196, '2022-03-15', 4980.00, 49800.00, '434');
INSERT INTO public.facturas VALUES (435, 203, '2022-03-14', 17950.00, 179500.00, '435');
INSERT INTO public.facturas VALUES (436, 139, '2022-03-13', 12970.00, 129700.00, '436');
INSERT INTO public.facturas VALUES (437, 18, '2022-03-12', 198.00, 1980.00, '437');
INSERT INTO public.facturas VALUES (438, 210, '2022-03-11', 4560.00, 45600.00, '438');
INSERT INTO public.facturas VALUES (439, 127, '2022-03-10', 12964.00, 129640.00, '439');
INSERT INTO public.facturas VALUES (440, 187, '2022-03-09', 1490.00, 14900.00, '440');
INSERT INTO public.facturas VALUES (441, 103, '2022-03-08', 40294.00, 402940.00, '441');
INSERT INTO public.facturas VALUES (442, 83, '2022-03-07', 498.00, 4980.00, '442');
INSERT INTO public.facturas VALUES (443, 130, '2022-03-06', 16596.00, 165960.00, '443');
INSERT INTO public.facturas VALUES (444, 239, '2022-03-05', 1980.00, 19800.00, '444');
INSERT INTO public.facturas VALUES (445, 68, '2022-03-04', 33332.00, 333320.00, '445');
INSERT INTO public.facturas VALUES (446, 47, '2022-03-03', 15876.00, 158760.00, '446');
INSERT INTO public.facturas VALUES (447, 113, '2022-03-02', 50834.00, 508340.00, '447');
INSERT INTO public.facturas VALUES (448, 98, '2022-03-01', 29822.00, 298220.00, '448');
INSERT INTO public.facturas VALUES (449, 83, '2022-02-28', 7474.00, 74740.00, '449');
INSERT INTO public.facturas VALUES (450, 202, '2022-02-27', 1576.00, 15760.00, '450');
INSERT INTO public.facturas VALUES (451, 121, '2022-02-26', 4982.00, 49820.00, '451');
INSERT INTO public.facturas VALUES (452, 99, '2022-02-25', 14464.00, 144640.00, '452');
INSERT INTO public.facturas VALUES (453, 224, '2022-02-24', 28764.00, 287640.00, '453');
INSERT INTO public.facturas VALUES (454, 168, '2022-02-23', 10176.00, 101760.00, '454');
INSERT INTO public.facturas VALUES (455, 113, '2022-02-22', 15434.00, 154340.00, '455');
INSERT INTO public.facturas VALUES (456, 162, '2022-02-21', 5242.00, 52420.00, '456');
INSERT INTO public.facturas VALUES (457, 78, '2022-02-20', 2294.00, 22940.00, '457');
INSERT INTO public.facturas VALUES (458, 157, '2022-02-19', 11186.00, 111860.00, '458');
INSERT INTO public.facturas VALUES (459, 248, '2022-02-18', 11264.00, 112640.00, '459');
INSERT INTO public.facturas VALUES (460, 40, '2022-02-17', 8082.00, 80820.00, '460');
INSERT INTO public.facturas VALUES (461, 207, '2022-02-16', 9044.00, 90440.00, '461');
INSERT INTO public.facturas VALUES (462, 3, '2022-02-15', 1990.00, 19900.00, '462');
INSERT INTO public.facturas VALUES (463, 203, '2022-02-14', 46326.00, 463260.00, '463');
INSERT INTO public.facturas VALUES (464, 103, '2022-02-13', 10946.00, 109460.00, '464');
INSERT INTO public.facturas VALUES (465, 57, '2022-02-12', 8964.00, 89640.00, '465');
INSERT INTO public.facturas VALUES (466, 198, '2022-02-11', 22748.00, 227480.00, '466');
INSERT INTO public.facturas VALUES (467, 63, '2022-02-10', 13074.00, 130740.00, '467');
INSERT INTO public.facturas VALUES (468, 17, '2022-02-09', 830.00, 8300.00, '468');
INSERT INTO public.facturas VALUES (469, 76, '2022-02-08', 7056.00, 70560.00, '469');
INSERT INTO public.facturas VALUES (470, 133, '2022-02-07', 6380.00, 63800.00, '470');
INSERT INTO public.facturas VALUES (471, 101, '2022-02-06', 15850.00, 158500.00, '471');
INSERT INTO public.facturas VALUES (472, 118, '2022-02-05', 3118.00, 31180.00, '472');
INSERT INTO public.facturas VALUES (473, 137, '2022-02-04', 27156.00, 271560.00, '473');
INSERT INTO public.facturas VALUES (474, 191, '2022-02-03', 11070.00, 110700.00, '474');
INSERT INTO public.facturas VALUES (475, 162, '2022-02-02', 2378.00, 23780.00, '475');
INSERT INTO public.facturas VALUES (476, 151, '2022-02-01', 13672.00, 136720.00, '476');
INSERT INTO public.facturas VALUES (477, 76, '2022-01-31', 33346.00, 333460.00, '477');
INSERT INTO public.facturas VALUES (478, 190, '2022-01-30', 4906.00, 49060.00, '478');
INSERT INTO public.facturas VALUES (479, 12, '2022-01-29', 9438.00, 94380.00, '479');
INSERT INTO public.facturas VALUES (480, 249, '2022-01-28', 9250.00, 92500.00, '480');
INSERT INTO public.facturas VALUES (481, 1, '2022-01-27', 17278.00, 172780.00, '481');
INSERT INTO public.facturas VALUES (482, 164, '2022-01-26', 24774.00, 247740.00, '482');
INSERT INTO public.facturas VALUES (483, 213, '2022-01-25', 594.00, 5940.00, '483');
INSERT INTO public.facturas VALUES (484, 47, '2022-01-24', 17460.00, 174600.00, '484');
INSERT INTO public.facturas VALUES (485, 241, '2022-01-23', 3872.00, 38720.00, '485');
INSERT INTO public.facturas VALUES (486, 135, '2022-01-22', 8136.00, 81360.00, '486');
INSERT INTO public.facturas VALUES (487, 135, '2022-01-21', 2990.00, 29900.00, '487');
INSERT INTO public.facturas VALUES (488, 58, '2022-01-20', 1162.00, 11620.00, '488');
INSERT INTO public.facturas VALUES (489, 167, '2022-01-19', 17082.00, 170820.00, '489');
INSERT INTO public.facturas VALUES (490, 23, '2022-01-18', 6916.00, 69160.00, '490');
INSERT INTO public.facturas VALUES (491, 86, '2022-01-17', 7662.00, 76620.00, '491');
INSERT INTO public.facturas VALUES (492, 45, '2022-01-16', 13692.00, 136920.00, '492');
INSERT INTO public.facturas VALUES (493, 207, '2022-01-15', 14462.00, 144620.00, '493');
INSERT INTO public.facturas VALUES (494, 109, '2022-01-14', 12948.00, 129480.00, '494');
INSERT INTO public.facturas VALUES (495, 175, '2022-01-13', 7860.00, 78600.00, '495');
INSERT INTO public.facturas VALUES (496, 186, '2022-01-12', 2682.00, 26820.00, '496');
INSERT INTO public.facturas VALUES (497, 96, '2022-01-11', 17874.00, 178740.00, '497');
INSERT INTO public.facturas VALUES (498, 31, '2022-01-10', 6272.00, 62720.00, '498');
INSERT INTO public.facturas VALUES (499, 1, '2022-01-09', 9568.00, 95680.00, '499');
INSERT INTO public.facturas VALUES (500, 65, '2022-01-08', 3992.00, 39920.00, '500');
INSERT INTO public.facturas VALUES (501, 196, '2022-01-07', 4562.00, 45620.00, '501');
INSERT INTO public.facturas VALUES (502, 236, '2022-01-06', 26118.00, 261180.00, '502');
INSERT INTO public.facturas VALUES (503, 131, '2022-01-05', 3588.00, 35880.00, '503');
INSERT INTO public.facturas VALUES (504, 99, '2022-01-04', 20054.00, 200540.00, '504');
INSERT INTO public.facturas VALUES (505, 210, '2022-01-03', 18224.00, 182240.00, '505');
INSERT INTO public.facturas VALUES (506, 241, '2022-01-02', 14266.00, 142660.00, '506');
INSERT INTO public.facturas VALUES (507, 42, '2022-01-01', 17060.00, 170600.00, '507');
INSERT INTO public.facturas VALUES (508, 162, '2021-12-31', 1992.00, 19920.00, '508');
INSERT INTO public.facturas VALUES (509, 177, '2021-12-30', 33758.00, 337580.00, '509');
INSERT INTO public.facturas VALUES (510, 110, '2021-12-29', 1794.00, 17940.00, '510');
INSERT INTO public.facturas VALUES (511, 234, '2021-12-28', 6882.00, 68820.00, '511');
INSERT INTO public.facturas VALUES (512, 199, '2021-12-27', 27972.00, 279720.00, '512');
INSERT INTO public.facturas VALUES (513, 1, '2021-12-26', 624.00, 6240.00, '513');
INSERT INTO public.facturas VALUES (514, 182, '2021-12-25', 1996.00, 19960.00, '514');
INSERT INTO public.facturas VALUES (515, 146, '2021-12-24', 14362.00, 143620.00, '515');
INSERT INTO public.facturas VALUES (516, 221, '2021-12-23', 25040.00, 250400.00, '516');
INSERT INTO public.facturas VALUES (517, 167, '2021-12-22', 5776.00, 57760.00, '517');
INSERT INTO public.facturas VALUES (518, 31, '2021-12-21', 20152.00, 201520.00, '518');
INSERT INTO public.facturas VALUES (519, 118, '2021-12-20', 11356.00, 113560.00, '519');
INSERT INTO public.facturas VALUES (520, 28, '2021-12-19', 6392.00, 63920.00, '520');
INSERT INTO public.facturas VALUES (521, 69, '2021-12-18', 12380.00, 123800.00, '521');
INSERT INTO public.facturas VALUES (522, 202, '2021-12-17', 5994.00, 59940.00, '522');
INSERT INTO public.facturas VALUES (523, 42, '2021-12-16', 14952.00, 149520.00, '523');
INSERT INTO public.facturas VALUES (524, 48, '2021-12-15', 18884.00, 188840.00, '524');
INSERT INTO public.facturas VALUES (525, 156, '2021-12-14', 6748.00, 67480.00, '525');
INSERT INTO public.facturas VALUES (526, 118, '2021-12-13', 25962.00, 259620.00, '526');
INSERT INTO public.facturas VALUES (527, 138, '2021-12-12', 716.00, 7160.00, '527');
INSERT INTO public.facturas VALUES (528, 237, '2021-12-11', 4560.00, 45600.00, '528');
INSERT INTO public.facturas VALUES (529, 6, '2021-12-10', 20044.00, 200440.00, '529');
INSERT INTO public.facturas VALUES (530, 119, '2021-12-09', 11886.00, 118860.00, '530');
INSERT INTO public.facturas VALUES (531, 34, '2021-12-08', 2490.00, 24900.00, '531');
INSERT INTO public.facturas VALUES (532, 72, '2021-12-07', 596.00, 5960.00, '532');
INSERT INTO public.facturas VALUES (533, 130, '2021-12-06', 12556.00, 125560.00, '533');
INSERT INTO public.facturas VALUES (534, 80, '2021-12-05', 3892.00, 38920.00, '534');
INSERT INTO public.facturas VALUES (535, 182, '2021-12-04', 1898.00, 18980.00, '535');
INSERT INTO public.facturas VALUES (536, 25, '2021-12-03', 8578.00, 85780.00, '536');
INSERT INTO public.facturas VALUES (537, 3, '2021-12-02', 156.00, 1560.00, '537');
INSERT INTO public.facturas VALUES (538, 149, '2021-12-01', 2086.00, 20860.00, '538');
INSERT INTO public.facturas VALUES (539, 79, '2021-11-30', 15644.00, 156440.00, '539');
INSERT INTO public.facturas VALUES (540, 165, '2021-11-29', 33960.00, 339600.00, '540');
INSERT INTO public.facturas VALUES (541, 176, '2021-11-28', 1584.00, 15840.00, '541');
INSERT INTO public.facturas VALUES (542, 166, '2021-11-27', 14776.00, 147760.00, '542');
INSERT INTO public.facturas VALUES (543, 56, '2021-11-26', 7378.00, 73780.00, '543');
INSERT INTO public.facturas VALUES (544, 171, '2021-11-25', 22250.00, 222500.00, '544');
INSERT INTO public.facturas VALUES (545, 119, '2021-11-24', 10838.00, 108380.00, '545');
INSERT INTO public.facturas VALUES (546, 176, '2021-11-23', 4964.00, 49640.00, '546');
INSERT INTO public.facturas VALUES (547, 212, '2021-11-22', 12876.00, 128760.00, '547');
INSERT INTO public.facturas VALUES (548, 13, '2021-11-21', 9186.00, 91860.00, '548');
INSERT INTO public.facturas VALUES (549, 163, '2021-11-20', 5994.00, 59940.00, '549');
INSERT INTO public.facturas VALUES (550, 184, '2021-11-19', 6012.00, 60120.00, '550');
INSERT INTO public.facturas VALUES (551, 99, '2021-11-18', 8372.00, 83720.00, '551');
INSERT INTO public.facturas VALUES (552, 127, '2021-11-17', 14944.00, 149440.00, '552');
INSERT INTO public.facturas VALUES (553, 187, '2021-11-16', 2158.00, 21580.00, '553');
INSERT INTO public.facturas VALUES (554, 215, '2021-11-15', 1188.00, 11880.00, '554');
INSERT INTO public.facturas VALUES (555, 89, '2021-11-14', 24662.00, 246620.00, '555');
INSERT INTO public.facturas VALUES (556, 211, '2021-11-13', 1882.00, 18820.00, '556');
INSERT INTO public.facturas VALUES (557, 162, '2021-11-12', 20128.00, 201280.00, '557');
INSERT INTO public.facturas VALUES (558, 193, '2021-11-11', 1688.00, 16880.00, '558');
INSERT INTO public.facturas VALUES (559, 20, '2021-11-10', 19250.00, 192500.00, '559');
INSERT INTO public.facturas VALUES (560, 221, '2021-11-09', 10180.00, 101800.00, '560');
INSERT INTO public.facturas VALUES (561, 193, '2021-11-08', 6166.00, 61660.00, '561');
INSERT INTO public.facturas VALUES (562, 143, '2021-11-07', 1584.00, 15840.00, '562');
INSERT INTO public.facturas VALUES (563, 192, '2021-11-06', 9562.00, 95620.00, '563');
INSERT INTO public.facturas VALUES (564, 129, '2021-11-05', 21380.00, 213800.00, '564');
INSERT INTO public.facturas VALUES (565, 16, '2021-11-04', 33912.00, 339120.00, '565');
INSERT INTO public.facturas VALUES (566, 20, '2021-11-03', 13966.00, 139660.00, '566');
INSERT INTO public.facturas VALUES (567, 106, '2021-11-02', 2392.00, 23920.00, '567');
INSERT INTO public.facturas VALUES (568, 217, '2021-11-01', 8170.00, 81700.00, '568');
INSERT INTO public.facturas VALUES (569, 193, '2021-10-31', 508.00, 5080.00, '569');
INSERT INTO public.facturas VALUES (570, 92, '2021-10-30', 7910.00, 79100.00, '570');
INSERT INTO public.facturas VALUES (571, 158, '2021-10-29', 16144.00, 161440.00, '571');
INSERT INTO public.facturas VALUES (572, 87, '2021-10-28', 28872.00, 288720.00, '572');
INSERT INTO public.facturas VALUES (573, 142, '2021-10-27', 7686.00, 76860.00, '573');
INSERT INTO public.facturas VALUES (574, 200, '2021-10-26', 4386.00, 43860.00, '574');
INSERT INTO public.facturas VALUES (575, 175, '2021-10-25', 4186.00, 41860.00, '575');
INSERT INTO public.facturas VALUES (576, 50, '2021-10-24', 7842.00, 78420.00, '576');
INSERT INTO public.facturas VALUES (577, 227, '2021-10-23', 9580.00, 95800.00, '577');
INSERT INTO public.facturas VALUES (578, 193, '2021-10-22', 9994.00, 99940.00, '578');
INSERT INTO public.facturas VALUES (579, 17, '2021-10-21', 29572.00, 295720.00, '579');
INSERT INTO public.facturas VALUES (580, 231, '2021-10-20', 15796.00, 157960.00, '580');
INSERT INTO public.facturas VALUES (581, 200, '2021-10-19', 6964.00, 69640.00, '581');
INSERT INTO public.facturas VALUES (582, 241, '2021-10-18', 5172.00, 51720.00, '582');
INSERT INTO public.facturas VALUES (583, 115, '2021-10-17', 25668.00, 256680.00, '583');
INSERT INTO public.facturas VALUES (584, 201, '2021-10-16', 6164.00, 61640.00, '584');
INSERT INTO public.facturas VALUES (585, 75, '2021-10-15', 1098.00, 10980.00, '585');
INSERT INTO public.facturas VALUES (586, 122, '2021-10-14', 10250.00, 102500.00, '586');
INSERT INTO public.facturas VALUES (587, 111, '2021-10-13', 1598.00, 15980.00, '587');
INSERT INTO public.facturas VALUES (588, 74, '2021-10-12', 11742.00, 117420.00, '588');
INSERT INTO public.facturas VALUES (589, 63, '2021-10-11', 8652.00, 86520.00, '589');
INSERT INTO public.facturas VALUES (590, 76, '2021-10-10', 22992.00, 229920.00, '590');
INSERT INTO public.facturas VALUES (591, 87, '2021-10-09', 25858.00, 258580.00, '591');
INSERT INTO public.facturas VALUES (592, 114, '2021-10-08', 4796.00, 47960.00, '592');
INSERT INTO public.facturas VALUES (593, 164, '2021-10-07', 32860.00, 328600.00, '593');
INSERT INTO public.facturas VALUES (594, 43, '2021-10-06', 11296.00, 112960.00, '594');
INSERT INTO public.facturas VALUES (595, 133, '2021-10-05', 238.00, 2380.00, '595');
INSERT INTO public.facturas VALUES (596, 43, '2021-10-04', 4568.00, 45680.00, '596');
INSERT INTO public.facturas VALUES (597, 140, '2021-10-03', 19448.00, 194480.00, '597');
INSERT INTO public.facturas VALUES (598, 35, '2021-10-02', 6346.00, 63460.00, '598');
INSERT INTO public.facturas VALUES (599, 145, '2021-10-01', 27642.00, 276420.00, '599');
INSERT INTO public.facturas VALUES (600, 70, '2021-09-30', 17252.00, 172520.00, '600');
INSERT INTO public.facturas VALUES (601, 95, '2021-09-29', 7888.00, 78880.00, '601');
INSERT INTO public.facturas VALUES (602, 167, '2021-09-28', 25894.00, 258940.00, '602');
INSERT INTO public.facturas VALUES (603, 183, '2021-09-27', 22464.00, 224640.00, '603');
INSERT INTO public.facturas VALUES (604, 129, '2021-09-26', 17974.00, 179740.00, '604');
INSERT INTO public.facturas VALUES (605, 213, '2021-09-25', 16662.00, 166620.00, '605');
INSERT INTO public.facturas VALUES (606, 81, '2021-09-24', 11364.00, 113640.00, '606');
INSERT INTO public.facturas VALUES (607, 98, '2021-09-23', 1584.00, 15840.00, '607');
INSERT INTO public.facturas VALUES (608, 213, '2021-09-22', 3990.00, 39900.00, '608');
INSERT INTO public.facturas VALUES (609, 135, '2021-09-21', 3458.00, 34580.00, '609');
INSERT INTO public.facturas VALUES (610, 249, '2021-09-20', 3012.00, 30120.00, '610');
INSERT INTO public.facturas VALUES (611, 182, '2021-09-19', 16508.00, 165080.00, '611');
INSERT INTO public.facturas VALUES (612, 55, '2021-09-18', 10938.00, 109380.00, '612');
INSERT INTO public.facturas VALUES (613, 209, '2021-09-17', 23858.00, 238580.00, '613');
INSERT INTO public.facturas VALUES (614, 208, '2021-09-16', 8256.00, 82560.00, '614');
INSERT INTO public.facturas VALUES (615, 125, '2021-09-15', 4996.00, 49960.00, '615');
INSERT INTO public.facturas VALUES (616, 111, '2021-09-14', 21684.00, 216840.00, '616');
INSERT INTO public.facturas VALUES (617, 175, '2021-09-13', 12668.00, 126680.00, '617');
INSERT INTO public.facturas VALUES (618, 237, '2021-09-12', 10628.00, 106280.00, '618');
INSERT INTO public.facturas VALUES (619, 198, '2021-09-11', 22368.00, 223680.00, '619');
INSERT INTO public.facturas VALUES (620, 104, '2021-09-10', 23640.00, 236400.00, '620');
INSERT INTO public.facturas VALUES (621, 110, '2021-09-09', 6662.00, 66620.00, '621');
INSERT INTO public.facturas VALUES (622, 124, '2021-09-08', 8364.00, 83640.00, '622');
INSERT INTO public.facturas VALUES (623, 178, '2021-09-07', 19982.00, 199820.00, '623');
INSERT INTO public.facturas VALUES (624, 222, '2021-09-06', 13112.00, 131120.00, '624');
INSERT INTO public.facturas VALUES (625, 85, '2021-09-05', 3486.00, 34860.00, '625');
INSERT INTO public.facturas VALUES (626, 68, '2021-09-04', 12834.00, 128340.00, '626');
INSERT INTO public.facturas VALUES (627, 121, '2021-09-03', 21750.00, 217500.00, '627');
INSERT INTO public.facturas VALUES (628, 33, '2021-09-02', 4788.00, 47880.00, '628');
INSERT INTO public.facturas VALUES (629, 108, '2021-09-01', 8980.00, 89800.00, '629');
INSERT INTO public.facturas VALUES (630, 172, '2021-08-31', 3486.00, 34860.00, '630');
INSERT INTO public.facturas VALUES (631, 104, '2021-08-30', 10074.00, 100740.00, '631');
INSERT INTO public.facturas VALUES (632, 35, '2021-08-29', 4188.00, 41880.00, '632');
INSERT INTO public.facturas VALUES (633, 113, '2021-08-28', 5174.00, 51740.00, '633');
INSERT INTO public.facturas VALUES (634, 195, '2021-08-27', 10248.00, 102480.00, '634');
INSERT INTO public.facturas VALUES (635, 11, '2021-08-26', 6678.00, 66780.00, '635');
INSERT INTO public.facturas VALUES (636, 39, '2021-08-25', 23256.00, 232560.00, '636');
INSERT INTO public.facturas VALUES (637, 131, '2021-08-24', 1980.00, 19800.00, '637');
INSERT INTO public.facturas VALUES (638, 189, '2021-08-23', 20922.00, 209220.00, '638');
INSERT INTO public.facturas VALUES (639, 119, '2021-08-22', 2788.00, 27880.00, '639');
INSERT INTO public.facturas VALUES (640, 92, '2021-08-21', 396.00, 3960.00, '640');
INSERT INTO public.facturas VALUES (641, 159, '2021-08-20', 698.00, 6980.00, '641');
INSERT INTO public.facturas VALUES (642, 170, '2021-08-19', 9528.00, 95280.00, '642');
INSERT INTO public.facturas VALUES (643, 186, '2021-08-18', 21128.00, 211280.00, '643');
INSERT INTO public.facturas VALUES (644, 105, '2021-08-17', 27968.00, 279680.00, '644');
INSERT INTO public.facturas VALUES (645, 164, '2021-08-16', 2976.00, 29760.00, '645');
INSERT INTO public.facturas VALUES (646, 55, '2021-08-15', 2770.00, 27700.00, '646');
INSERT INTO public.facturas VALUES (647, 169, '2021-08-14', 7980.00, 79800.00, '647');
INSERT INTO public.facturas VALUES (648, 204, '2021-08-13', 9578.00, 95780.00, '648');
INSERT INTO public.facturas VALUES (649, 225, '2021-08-12', 8716.00, 87160.00, '649');
INSERT INTO public.facturas VALUES (650, 17, '2021-08-11', 45500.00, 455000.00, '650');
INSERT INTO public.facturas VALUES (651, 27, '2021-08-10', 2764.00, 27640.00, '651');
INSERT INTO public.facturas VALUES (652, 185, '2021-08-09', 4382.00, 43820.00, '652');
INSERT INTO public.facturas VALUES (653, 28, '2021-08-08', 32460.00, 324600.00, '653');
INSERT INTO public.facturas VALUES (654, 144, '2021-08-07', 6364.00, 63640.00, '654');
INSERT INTO public.facturas VALUES (655, 73, '2021-08-06', 7170.00, 71700.00, '655');
INSERT INTO public.facturas VALUES (656, 76, '2021-08-05', 1526.00, 15260.00, '656');
INSERT INTO public.facturas VALUES (657, 59, '2021-08-04', 21744.00, 217440.00, '657');
INSERT INTO public.facturas VALUES (658, 130, '2021-08-03', 1794.00, 17940.00, '658');
INSERT INTO public.facturas VALUES (659, 54, '2021-08-02', 3980.00, 39800.00, '659');
INSERT INTO public.facturas VALUES (660, 194, '2021-08-01', 7364.00, 73640.00, '660');
INSERT INTO public.facturas VALUES (661, 39, '2021-07-31', 11568.00, 115680.00, '661');
INSERT INTO public.facturas VALUES (662, 47, '2021-07-30', 5772.00, 57720.00, '662');
INSERT INTO public.facturas VALUES (663, 100, '2021-07-29', 5486.00, 54860.00, '663');
INSERT INTO public.facturas VALUES (664, 105, '2021-07-28', 5382.00, 53820.00, '664');
INSERT INTO public.facturas VALUES (665, 109, '2021-07-27', 18152.00, 181520.00, '665');
INSERT INTO public.facturas VALUES (666, 38, '2021-07-26', 158.00, 1580.00, '666');
INSERT INTO public.facturas VALUES (667, 84, '2021-07-25', 31144.00, 311440.00, '667');
INSERT INTO public.facturas VALUES (668, 108, '2021-07-24', 3980.00, 39800.00, '668');
INSERT INTO public.facturas VALUES (669, 101, '2021-07-23', 6560.00, 65600.00, '669');
INSERT INTO public.facturas VALUES (670, 70, '2021-07-22', 29326.00, 293260.00, '670');
INSERT INTO public.facturas VALUES (671, 162, '2021-07-21', 8674.00, 86740.00, '671');
INSERT INTO public.facturas VALUES (672, 47, '2021-07-20', 46926.00, 469260.00, '672');
INSERT INTO public.facturas VALUES (673, 221, '2021-07-19', 2388.00, 23880.00, '673');
INSERT INTO public.facturas VALUES (674, 42, '2021-07-18', 9960.00, 99600.00, '674');
INSERT INTO public.facturas VALUES (675, 27, '2021-07-17', 4980.00, 49800.00, '675');
INSERT INTO public.facturas VALUES (676, 19, '2021-07-16', 14584.00, 145840.00, '676');
INSERT INTO public.facturas VALUES (677, 34, '2021-07-15', 12444.00, 124440.00, '677');
INSERT INTO public.facturas VALUES (678, 67, '2021-07-14', 8068.00, 80680.00, '678');
INSERT INTO public.facturas VALUES (679, 159, '2021-07-13', 41098.00, 410980.00, '679');
INSERT INTO public.facturas VALUES (680, 108, '2021-07-12', 7452.00, 74520.00, '680');
INSERT INTO public.facturas VALUES (681, 76, '2021-07-11', 7568.00, 75680.00, '681');
INSERT INTO public.facturas VALUES (682, 12, '2021-07-10', 10724.00, 107240.00, '682');
INSERT INTO public.facturas VALUES (683, 32, '2021-07-09', 38664.00, 386640.00, '683');
INSERT INTO public.facturas VALUES (684, 45, '2021-07-08', 14646.00, 146460.00, '684');
INSERT INTO public.facturas VALUES (685, 19, '2021-07-07', 14348.00, 143480.00, '685');
INSERT INTO public.facturas VALUES (686, 233, '2021-07-06', 2364.00, 23640.00, '686');
INSERT INTO public.facturas VALUES (687, 226, '2021-07-05', 12670.00, 126700.00, '687');
INSERT INTO public.facturas VALUES (688, 88, '2021-07-04', 7176.00, 71760.00, '688');
INSERT INTO public.facturas VALUES (689, 101, '2021-07-03', 35288.00, 352880.00, '689');
INSERT INTO public.facturas VALUES (690, 28, '2021-07-02', 7262.00, 72620.00, '690');
INSERT INTO public.facturas VALUES (691, 156, '2021-07-01', 9268.00, 92680.00, '691');
INSERT INTO public.facturas VALUES (692, 171, '2021-06-30', 7282.00, 72820.00, '692');
INSERT INTO public.facturas VALUES (693, 142, '2021-06-29', 13056.00, 130560.00, '693');
INSERT INTO public.facturas VALUES (694, 222, '2021-06-28', 26662.00, 266620.00, '694');
INSERT INTO public.facturas VALUES (695, 211, '2021-06-27', 20068.00, 200680.00, '695');
INSERT INTO public.facturas VALUES (696, 90, '2021-06-26', 792.00, 7920.00, '696');
INSERT INTO public.facturas VALUES (697, 23, '2021-06-25', 196.00, 1960.00, '697');
INSERT INTO public.facturas VALUES (698, 64, '2021-06-24', 13980.00, 139800.00, '698');
INSERT INTO public.facturas VALUES (699, 132, '2021-06-23', 8444.00, 84440.00, '699');
INSERT INTO public.facturas VALUES (700, 48, '2021-06-22', 18844.00, 188440.00, '700');
INSERT INTO public.facturas VALUES (701, 178, '2021-06-21', 18662.00, 186620.00, '701');
INSERT INTO public.facturas VALUES (702, 99, '2021-06-20', 2670.00, 26700.00, '702');
INSERT INTO public.facturas VALUES (703, 61, '2021-06-19', 8876.00, 88760.00, '703');
INSERT INTO public.facturas VALUES (704, 39, '2021-06-18', 290.00, 2900.00, '704');
INSERT INTO public.facturas VALUES (705, 205, '2021-06-17', 22148.00, 221480.00, '705');
INSERT INTO public.facturas VALUES (706, 24, '2021-06-16', 14578.00, 145780.00, '706');
INSERT INTO public.facturas VALUES (707, 160, '2021-06-15', 23178.00, 231780.00, '707');
INSERT INTO public.facturas VALUES (708, 187, '2021-06-14', 9460.00, 94600.00, '708');
INSERT INTO public.facturas VALUES (709, 59, '2021-06-13', 43280.00, 432800.00, '709');
INSERT INTO public.facturas VALUES (710, 15, '2021-06-12', 7076.00, 70760.00, '710');
INSERT INTO public.facturas VALUES (711, 62, '2021-06-11', 15162.00, 151620.00, '711');
INSERT INTO public.facturas VALUES (712, 125, '2021-06-10', 15970.00, 159700.00, '712');
INSERT INTO public.facturas VALUES (713, 174, '2021-06-09', 11874.00, 118740.00, '713');
INSERT INTO public.facturas VALUES (714, 56, '2021-06-08', 13554.00, 135540.00, '714');
INSERT INTO public.facturas VALUES (715, 117, '2021-06-07', 4980.00, 49800.00, '715');
INSERT INTO public.facturas VALUES (716, 244, '2021-06-06', 9378.00, 93780.00, '716');
INSERT INTO public.facturas VALUES (717, 38, '2021-06-05', 8550.00, 85500.00, '717');
INSERT INTO public.facturas VALUES (718, 120, '2021-06-04', 2384.00, 23840.00, '718');
INSERT INTO public.facturas VALUES (719, 150, '2021-06-03', 10958.00, 109580.00, '719');
INSERT INTO public.facturas VALUES (720, 67, '2021-06-02', 996.00, 9960.00, '720');
INSERT INTO public.facturas VALUES (721, 44, '2021-06-01', 3388.00, 33880.00, '721');
INSERT INTO public.facturas VALUES (722, 232, '2021-05-31', 7570.00, 75700.00, '722');
INSERT INTO public.facturas VALUES (723, 106, '2021-05-30', 2392.00, 23920.00, '723');
INSERT INTO public.facturas VALUES (724, 52, '2021-05-29', 13794.00, 137940.00, '724');
INSERT INTO public.facturas VALUES (725, 19, '2021-05-28', 7588.00, 75880.00, '725');
INSERT INTO public.facturas VALUES (726, 99, '2021-05-27', 1264.00, 12640.00, '726');
INSERT INTO public.facturas VALUES (727, 14, '2021-05-26', 5584.00, 55840.00, '727');
INSERT INTO public.facturas VALUES (728, 84, '2021-05-25', 4068.00, 40680.00, '728');
INSERT INTO public.facturas VALUES (729, 189, '2021-05-24', 22462.00, 224620.00, '729');
INSERT INTO public.facturas VALUES (730, 133, '2021-05-23', 19648.00, 196480.00, '730');
INSERT INTO public.facturas VALUES (731, 178, '2021-05-22', 19584.00, 195840.00, '731');
INSERT INTO public.facturas VALUES (732, 133, '2021-05-21', 7748.00, 77480.00, '732');
INSERT INTO public.facturas VALUES (733, 147, '2021-05-20', 3580.00, 35800.00, '733');
INSERT INTO public.facturas VALUES (734, 202, '2021-05-19', 990.00, 9900.00, '734');
INSERT INTO public.facturas VALUES (735, 212, '2021-05-18', 398.00, 3980.00, '735');
INSERT INTO public.facturas VALUES (736, 89, '2021-05-17', 8388.00, 83880.00, '736');
INSERT INTO public.facturas VALUES (737, 207, '2021-05-16', 24058.00, 240580.00, '737');
INSERT INTO public.facturas VALUES (738, 98, '2021-05-15', 8774.00, 87740.00, '738');
INSERT INTO public.facturas VALUES (739, 69, '2021-05-14', 22436.00, 224360.00, '739');
INSERT INTO public.facturas VALUES (740, 141, '2021-05-13', 15954.00, 159540.00, '740');
INSERT INTO public.facturas VALUES (741, 81, '2021-05-12', 1972.00, 19720.00, '741');
INSERT INTO public.facturas VALUES (742, 144, '2021-05-11', 8982.00, 89820.00, '742');
INSERT INTO public.facturas VALUES (743, 99, '2021-05-10', 2980.00, 29800.00, '743');
INSERT INTO public.facturas VALUES (744, 62, '2021-05-09', 2792.00, 27920.00, '744');
INSERT INTO public.facturas VALUES (745, 176, '2021-05-08', 5666.00, 56660.00, '745');
INSERT INTO public.facturas VALUES (746, 75, '2021-05-07', 16376.00, 163760.00, '746');
INSERT INTO public.facturas VALUES (747, 13, '2021-05-06', 9180.00, 91800.00, '747');
INSERT INTO public.facturas VALUES (748, 144, '2021-05-05', 13602.00, 136020.00, '748');
INSERT INTO public.facturas VALUES (749, 58, '2021-05-04', 43130.00, 431300.00, '749');
INSERT INTO public.facturas VALUES (750, 154, '2021-05-03', 1188.00, 11880.00, '750');
INSERT INTO public.facturas VALUES (751, 226, '2021-05-02', 20528.00, 205280.00, '751');
INSERT INTO public.facturas VALUES (752, 69, '2021-05-01', 10748.00, 107480.00, '752');
INSERT INTO public.facturas VALUES (753, 75, '2021-04-30', 5958.00, 59580.00, '753');
INSERT INTO public.facturas VALUES (754, 58, '2021-04-29', 2190.00, 21900.00, '754');
INSERT INTO public.facturas VALUES (755, 49, '2021-04-28', 6646.00, 66460.00, '755');
INSERT INTO public.facturas VALUES (756, 52, '2021-04-27', 8912.00, 89120.00, '756');
INSERT INTO public.facturas VALUES (757, 242, '2021-04-26', 15356.00, 153560.00, '757');
INSERT INTO public.facturas VALUES (758, 108, '2021-04-25', 14548.00, 145480.00, '758');
INSERT INTO public.facturas VALUES (759, 176, '2021-04-24', 20358.00, 203580.00, '759');
INSERT INTO public.facturas VALUES (760, 151, '2021-04-23', 2546.00, 25460.00, '760');
INSERT INTO public.facturas VALUES (761, 20, '2021-04-22', 7420.00, 74200.00, '761');
INSERT INTO public.facturas VALUES (762, 241, '2021-04-21', 4038.00, 40380.00, '762');
INSERT INTO public.facturas VALUES (763, 17, '2021-04-20', 35520.00, 355200.00, '763');
INSERT INTO public.facturas VALUES (764, 73, '2021-04-19', 7558.00, 75580.00, '764');
INSERT INTO public.facturas VALUES (765, 28, '2021-04-18', 15868.00, 158680.00, '765');
INSERT INTO public.facturas VALUES (766, 166, '2021-04-17', 10966.00, 109660.00, '766');
INSERT INTO public.facturas VALUES (767, 39, '2021-04-16', 9444.00, 94440.00, '767');
INSERT INTO public.facturas VALUES (768, 104, '2021-04-15', 11870.00, 118700.00, '768');
INSERT INTO public.facturas VALUES (769, 140, '2021-04-14', 14772.00, 147720.00, '769');
INSERT INTO public.facturas VALUES (770, 57, '2021-04-13', 7676.00, 76760.00, '770');
INSERT INTO public.facturas VALUES (771, 126, '2021-04-12', 22660.00, 226600.00, '771');
INSERT INTO public.facturas VALUES (772, 250, '2021-04-11', 6852.00, 68520.00, '772');
INSERT INTO public.facturas VALUES (773, 194, '2021-04-10', 5196.00, 51960.00, '773');
INSERT INTO public.facturas VALUES (774, 53, '2021-04-09', 458.00, 4580.00, '774');
INSERT INTO public.facturas VALUES (775, 116, '2021-04-08', 5222.00, 52220.00, '775');
INSERT INTO public.facturas VALUES (776, 84, '2021-04-07', 10662.00, 106620.00, '776');
INSERT INTO public.facturas VALUES (777, 136, '2021-04-06', 26936.00, 269360.00, '777');
INSERT INTO public.facturas VALUES (778, 193, '2021-04-05', 4638.00, 46380.00, '778');
INSERT INTO public.facturas VALUES (779, 143, '2021-04-04', 2452.00, 24520.00, '779');
INSERT INTO public.facturas VALUES (780, 227, '2021-04-03', 32652.00, 326520.00, '780');
INSERT INTO public.facturas VALUES (781, 43, '2021-04-02', 13474.00, 134740.00, '781');
INSERT INTO public.facturas VALUES (782, 10, '2021-04-01', 430.00, 4300.00, '782');
INSERT INTO public.facturas VALUES (783, 18, '2021-03-31', 4992.00, 49920.00, '783');
INSERT INTO public.facturas VALUES (784, 226, '2021-03-30', 29566.00, 295660.00, '784');
INSERT INTO public.facturas VALUES (785, 180, '2021-03-29', 5460.00, 54600.00, '785');
INSERT INTO public.facturas VALUES (786, 214, '2021-03-28', 9558.00, 95580.00, '786');
INSERT INTO public.facturas VALUES (787, 34, '2021-03-27', 10160.00, 101600.00, '787');
INSERT INTO public.facturas VALUES (788, 138, '2021-03-26', 4820.00, 48200.00, '788');
INSERT INTO public.facturas VALUES (789, 136, '2021-03-25', 12378.00, 123780.00, '789');
INSERT INTO public.facturas VALUES (790, 243, '2021-03-24', 15812.00, 158120.00, '790');
INSERT INTO public.facturas VALUES (791, 81, '2021-03-23', 15956.00, 159560.00, '791');
INSERT INTO public.facturas VALUES (792, 22, '2021-03-22', 6582.00, 65820.00, '792');
INSERT INTO public.facturas VALUES (793, 27, '2021-03-21', 6544.00, 65440.00, '793');
INSERT INTO public.facturas VALUES (794, 223, '2021-03-20', 29302.00, 293020.00, '794');
INSERT INTO public.facturas VALUES (795, 148, '2021-03-19', 21046.00, 210460.00, '795');
INSERT INTO public.facturas VALUES (796, 136, '2021-03-18', 4674.00, 46740.00, '796');
INSERT INTO public.facturas VALUES (797, 156, '2021-03-17', 4194.00, 41940.00, '797');
INSERT INTO public.facturas VALUES (798, 31, '2021-03-16', 25958.00, 259580.00, '798');
INSERT INTO public.facturas VALUES (799, 201, '2021-03-15', 18734.00, 187340.00, '799');
INSERT INTO public.facturas VALUES (800, 22, '2021-03-14', 1980.00, 19800.00, '800');
INSERT INTO public.facturas VALUES (801, 240, '2021-03-13', 2864.00, 28640.00, '801');
INSERT INTO public.facturas VALUES (802, 50, '2021-03-12', 23054.00, 230540.00, '802');
INSERT INTO public.facturas VALUES (803, 128, '2021-03-11', 4574.00, 45740.00, '803');
INSERT INTO public.facturas VALUES (804, 56, '2021-03-10', 10190.00, 101900.00, '804');
INSERT INTO public.facturas VALUES (805, 119, '2021-03-09', 42558.00, 425580.00, '805');
INSERT INTO public.facturas VALUES (806, 111, '2021-03-08', 35074.00, 350740.00, '806');
INSERT INTO public.facturas VALUES (807, 80, '2021-03-07', 7616.00, 76160.00, '807');
INSERT INTO public.facturas VALUES (808, 75, '2021-03-06', 9160.00, 91600.00, '808');
INSERT INTO public.facturas VALUES (809, 162, '2021-03-05', 2994.00, 29940.00, '809');
INSERT INTO public.facturas VALUES (810, 28, '2021-03-04', 4186.00, 41860.00, '810');
INSERT INTO public.facturas VALUES (811, 133, '2021-03-03', 6552.00, 65520.00, '811');
INSERT INTO public.facturas VALUES (812, 249, '2021-03-02', 20960.00, 209600.00, '812');
INSERT INTO public.facturas VALUES (813, 111, '2021-03-01', 11992.00, 119920.00, '813');
INSERT INTO public.facturas VALUES (814, 95, '2021-02-28', 990.00, 9900.00, '814');
INSERT INTO public.facturas VALUES (815, 42, '2021-02-27', 22548.00, 225480.00, '815');
INSERT INTO public.facturas VALUES (816, 94, '2021-02-26', 3490.00, 34900.00, '816');
INSERT INTO public.facturas VALUES (817, 46, '2021-02-25', 17928.00, 179280.00, '817');
INSERT INTO public.facturas VALUES (818, 61, '2021-02-24', 5610.00, 56100.00, '818');
INSERT INTO public.facturas VALUES (819, 178, '2021-02-23', 9170.00, 91700.00, '819');
INSERT INTO public.facturas VALUES (820, 51, '2021-02-22', 18868.00, 188680.00, '820');
INSERT INTO public.facturas VALUES (821, 230, '2021-02-21', 10748.00, 107480.00, '821');
INSERT INTO public.facturas VALUES (822, 241, '2021-02-20', 18722.00, 187220.00, '822');
INSERT INTO public.facturas VALUES (823, 174, '2021-02-19', 11388.00, 113880.00, '823');
INSERT INTO public.facturas VALUES (824, 102, '2021-02-18', 14980.00, 149800.00, '824');
INSERT INTO public.facturas VALUES (825, 243, '2021-02-17', 23636.00, 236360.00, '825');
INSERT INTO public.facturas VALUES (826, 103, '2021-02-16', 790.00, 7900.00, '826');
INSERT INTO public.facturas VALUES (827, 237, '2021-02-15', 37142.00, 371420.00, '827');
INSERT INTO public.facturas VALUES (828, 12, '2021-02-14', 12724.00, 127240.00, '828');
INSERT INTO public.facturas VALUES (829, 144, '2021-02-13', 23332.00, 233320.00, '829');
INSERT INTO public.facturas VALUES (830, 129, '2021-02-12', 5780.00, 57800.00, '830');
INSERT INTO public.facturas VALUES (831, 120, '2021-02-11', 2938.00, 29380.00, '831');
INSERT INTO public.facturas VALUES (832, 137, '2021-02-10', 7176.00, 71760.00, '832');
INSERT INTO public.facturas VALUES (833, 240, '2021-02-09', 25578.00, 255780.00, '833');
INSERT INTO public.facturas VALUES (834, 242, '2021-02-08', 898.00, 8980.00, '834');
INSERT INTO public.facturas VALUES (835, 171, '2021-02-07', 5586.00, 55860.00, '835');
INSERT INTO public.facturas VALUES (836, 111, '2021-02-06', 12582.00, 125820.00, '836');
INSERT INTO public.facturas VALUES (837, 215, '2021-02-05', 12664.00, 126640.00, '837');
INSERT INTO public.facturas VALUES (838, 43, '2021-02-04', 20170.00, 201700.00, '838');
INSERT INTO public.facturas VALUES (839, 124, '2021-02-03', 4970.00, 49700.00, '839');
INSERT INTO public.facturas VALUES (840, 175, '2021-02-02', 10948.00, 109480.00, '840');
INSERT INTO public.facturas VALUES (841, 178, '2021-02-01', 3978.00, 39780.00, '841');
INSERT INTO public.facturas VALUES (842, 205, '2021-01-31', 4078.00, 40780.00, '842');
INSERT INTO public.facturas VALUES (843, 71, '2021-01-30', 15346.00, 153460.00, '843');
INSERT INTO public.facturas VALUES (844, 172, '2021-01-29', 23328.00, 233280.00, '844');
INSERT INTO public.facturas VALUES (845, 151, '2021-01-28', 1580.00, 15800.00, '845');
INSERT INTO public.facturas VALUES (846, 139, '2021-01-27', 18150.00, 181500.00, '846');
INSERT INTO public.facturas VALUES (847, 180, '2021-01-26', 9810.00, 98100.00, '847');
INSERT INTO public.facturas VALUES (848, 135, '2021-01-25', 12274.00, 122740.00, '848');
INSERT INTO public.facturas VALUES (849, 245, '2021-01-24', 30170.00, 301700.00, '849');
INSERT INTO public.facturas VALUES (850, 1, '2021-01-23', 10368.00, 103680.00, '850');
INSERT INTO public.facturas VALUES (851, 207, '2021-01-22', 1548.00, 15480.00, '851');
INSERT INTO public.facturas VALUES (852, 199, '2021-01-21', 14418.00, 144180.00, '852');
INSERT INTO public.facturas VALUES (853, 159, '2021-01-20', 6374.00, 63740.00, '853');
INSERT INTO public.facturas VALUES (854, 41, '2021-01-19', 30768.00, 307680.00, '854');
INSERT INTO public.facturas VALUES (855, 211, '2021-01-18', 4360.00, 43600.00, '855');
INSERT INTO public.facturas VALUES (856, 173, '2021-01-17', 12020.00, 120200.00, '856');
INSERT INTO public.facturas VALUES (857, 214, '2021-01-16', 5164.00, 51640.00, '857');
INSERT INTO public.facturas VALUES (858, 227, '2021-01-15', 9188.00, 91880.00, '858');
INSERT INTO public.facturas VALUES (859, 6, '2021-01-14', 7762.00, 77620.00, '859');
INSERT INTO public.facturas VALUES (860, 62, '2021-01-13', 10602.00, 106020.00, '860');
INSERT INTO public.facturas VALUES (861, 124, '2021-01-12', 21162.00, 211620.00, '861');
INSERT INTO public.facturas VALUES (862, 166, '2021-01-11', 38442.00, 384420.00, '862');
INSERT INTO public.facturas VALUES (863, 14, '2021-01-10', 50930.00, 509300.00, '863');
INSERT INTO public.facturas VALUES (864, 209, '2021-01-09', 78.00, 780.00, '864');
INSERT INTO public.facturas VALUES (865, 151, '2021-01-08', 6272.00, 62720.00, '865');
INSERT INTO public.facturas VALUES (866, 27, '2021-01-07', 13250.00, 132500.00, '866');
INSERT INTO public.facturas VALUES (867, 84, '2021-01-06', 5586.00, 55860.00, '867');
INSERT INTO public.facturas VALUES (868, 150, '2021-01-05', 32180.00, 321800.00, '868');
INSERT INTO public.facturas VALUES (869, 27, '2021-01-04', 40842.00, 408420.00, '869');
INSERT INTO public.facturas VALUES (870, 65, '2021-01-03', 17490.00, 174900.00, '870');
INSERT INTO public.facturas VALUES (871, 29, '2021-01-02', 158.00, 1580.00, '871');
INSERT INTO public.facturas VALUES (872, 104, '2021-01-01', 28570.00, 285700.00, '872');
INSERT INTO public.facturas VALUES (873, 183, '2020-12-31', 1842.00, 18420.00, '873');
INSERT INTO public.facturas VALUES (874, 143, '2020-12-30', 27162.00, 271620.00, '874');
INSERT INTO public.facturas VALUES (875, 116, '2020-12-29', 2490.00, 24900.00, '875');
INSERT INTO public.facturas VALUES (876, 166, '2020-12-28', 1386.00, 13860.00, '876');
INSERT INTO public.facturas VALUES (877, 244, '2020-12-27', 31346.00, 313460.00, '877');
INSERT INTO public.facturas VALUES (878, 82, '2020-12-26', 10066.00, 100660.00, '878');
INSERT INTO public.facturas VALUES (879, 221, '2020-12-25', 31970.00, 319700.00, '879');
INSERT INTO public.facturas VALUES (880, 89, '2020-12-24', 61254.00, 612540.00, '880');
INSERT INTO public.facturas VALUES (881, 141, '2020-12-23', 15866.00, 158660.00, '881');
INSERT INTO public.facturas VALUES (882, 124, '2020-12-22', 18234.00, 182340.00, '882');
INSERT INTO public.facturas VALUES (883, 152, '2020-12-21', 13570.00, 135700.00, '883');
INSERT INTO public.facturas VALUES (884, 219, '2020-12-20', 10170.00, 101700.00, '884');
INSERT INTO public.facturas VALUES (885, 232, '2020-12-19', 2490.00, 24900.00, '885');
INSERT INTO public.facturas VALUES (886, 201, '2020-12-18', 16874.00, 168740.00, '886');
INSERT INTO public.facturas VALUES (887, 67, '2020-12-17', 3490.00, 34900.00, '887');
INSERT INTO public.facturas VALUES (888, 210, '2020-12-16', 3782.00, 37820.00, '888');
INSERT INTO public.facturas VALUES (889, 215, '2020-12-15', 2772.00, 27720.00, '889');
INSERT INTO public.facturas VALUES (890, 18, '2020-12-14', 6142.00, 61420.00, '890');
INSERT INTO public.facturas VALUES (891, 143, '2020-12-13', 8486.00, 84860.00, '891');
INSERT INTO public.facturas VALUES (892, 1, '2020-12-12', 1328.00, 13280.00, '892');
INSERT INTO public.facturas VALUES (893, 195, '2020-12-11', 11372.00, 113720.00, '893');
INSERT INTO public.facturas VALUES (894, 101, '2020-12-10', 16548.00, 165480.00, '894');
INSERT INTO public.facturas VALUES (895, 4, '2020-12-09', 16314.00, 163140.00, '895');
INSERT INTO public.facturas VALUES (896, 214, '2020-12-08', 8910.00, 89100.00, '896');
INSERT INTO public.facturas VALUES (897, 170, '2020-12-07', 3888.00, 38880.00, '897');
INSERT INTO public.facturas VALUES (898, 76, '2020-12-06', 4382.00, 43820.00, '898');
INSERT INTO public.facturas VALUES (899, 180, '2020-12-05', 14238.00, 142380.00, '899');
INSERT INTO public.facturas VALUES (900, 115, '2020-12-04', 3578.00, 35780.00, '900');
INSERT INTO public.facturas VALUES (901, 101, '2020-12-03', 33630.00, 336300.00, '901');
INSERT INTO public.facturas VALUES (902, 113, '2020-12-02', 33222.00, 332220.00, '902');
INSERT INTO public.facturas VALUES (903, 63, '2020-12-01', 3206.00, 32060.00, '903');
INSERT INTO public.facturas VALUES (904, 172, '2020-11-30', 3472.00, 34720.00, '904');
INSERT INTO public.facturas VALUES (905, 152, '2020-11-29', 12812.00, 128120.00, '905');
INSERT INTO public.facturas VALUES (906, 221, '2020-11-28', 1782.00, 17820.00, '906');
INSERT INTO public.facturas VALUES (907, 8, '2020-11-27', 26300.00, 263000.00, '907');
INSERT INTO public.facturas VALUES (908, 228, '2020-11-26', 10964.00, 109640.00, '908');
INSERT INTO public.facturas VALUES (909, 221, '2020-11-25', 6560.00, 65600.00, '909');
INSERT INTO public.facturas VALUES (910, 167, '2020-11-24', 11480.00, 114800.00, '910');
INSERT INTO public.facturas VALUES (911, 244, '2020-11-23', 790.00, 7900.00, '911');
INSERT INTO public.facturas VALUES (912, 156, '2020-11-22', 5874.00, 58740.00, '912');
INSERT INTO public.facturas VALUES (913, 125, '2020-11-21', 70344.00, 703440.00, '913');
INSERT INTO public.facturas VALUES (914, 197, '2020-11-20', 29870.00, 298700.00, '914');
INSERT INTO public.facturas VALUES (915, 234, '2020-11-19', 948.00, 9480.00, '915');
INSERT INTO public.facturas VALUES (916, 31, '2020-11-18', 1788.00, 17880.00, '916');
INSERT INTO public.facturas VALUES (917, 73, '2020-11-17', 28606.00, 286060.00, '917');
INSERT INTO public.facturas VALUES (918, 177, '2020-11-16', 52736.00, 527360.00, '918');
INSERT INTO public.facturas VALUES (919, 21, '2020-11-15', 15886.00, 158860.00, '919');
INSERT INTO public.facturas VALUES (920, 227, '2020-11-14', 9982.00, 99820.00, '920');
INSERT INTO public.facturas VALUES (921, 12, '2020-11-13', 2152.00, 21520.00, '921');
INSERT INTO public.facturas VALUES (922, 149, '2020-11-12', 13514.00, 135140.00, '922');
INSERT INTO public.facturas VALUES (923, 204, '2020-11-11', 10782.00, 107820.00, '923');
INSERT INTO public.facturas VALUES (924, 8, '2020-11-10', 13202.00, 132020.00, '924');
INSERT INTO public.facturas VALUES (925, 113, '2020-11-09', 12586.00, 125860.00, '925');
INSERT INTO public.facturas VALUES (926, 229, '2020-11-08', 7858.00, 78580.00, '926');
INSERT INTO public.facturas VALUES (927, 40, '2020-11-07', 6356.00, 63560.00, '927');
INSERT INTO public.facturas VALUES (928, 149, '2020-11-06', 11032.00, 110320.00, '928');
INSERT INTO public.facturas VALUES (929, 6, '2020-11-05', 11802.00, 118020.00, '929');
INSERT INTO public.facturas VALUES (930, 227, '2020-11-04', 23984.00, 239840.00, '930');
INSERT INTO public.facturas VALUES (931, 189, '2020-11-03', 13286.00, 132860.00, '931');
INSERT INTO public.facturas VALUES (932, 250, '2020-11-02', 34386.00, 343860.00, '932');
INSERT INTO public.facturas VALUES (933, 196, '2020-11-01', 1450.00, 14500.00, '933');
INSERT INTO public.facturas VALUES (934, 90, '2020-10-31', 9558.00, 95580.00, '934');
INSERT INTO public.facturas VALUES (935, 229, '2020-10-30', 1964.00, 19640.00, '935');
INSERT INTO public.facturas VALUES (936, 23, '2020-10-29', 9636.00, 96360.00, '936');
INSERT INTO public.facturas VALUES (937, 207, '2020-10-28', 5044.00, 50440.00, '937');
INSERT INTO public.facturas VALUES (938, 95, '2020-10-27', 6984.00, 69840.00, '938');
INSERT INTO public.facturas VALUES (939, 103, '2020-10-26', 158.00, 1580.00, '939');
INSERT INTO public.facturas VALUES (940, 9, '2020-10-25', 196.00, 1960.00, '940');
INSERT INTO public.facturas VALUES (941, 41, '2020-10-24', 792.00, 7920.00, '941');
INSERT INTO public.facturas VALUES (942, 169, '2020-10-23', 4908.00, 49080.00, '942');
INSERT INTO public.facturas VALUES (943, 97, '2020-10-22', 13554.00, 135540.00, '943');
INSERT INTO public.facturas VALUES (944, 63, '2020-10-21', 60898.00, 608980.00, '944');
INSERT INTO public.facturas VALUES (945, 207, '2020-10-20', 5560.00, 55600.00, '945');
INSERT INTO public.facturas VALUES (946, 46, '2020-10-19', 35980.00, 359800.00, '946');
INSERT INTO public.facturas VALUES (947, 108, '2020-10-18', 12616.00, 126160.00, '947');
INSERT INTO public.facturas VALUES (948, 180, '2020-10-17', 6342.00, 63420.00, '948');
INSERT INTO public.facturas VALUES (949, 210, '2020-10-16', 36960.00, 369600.00, '949');
INSERT INTO public.facturas VALUES (950, 98, '2020-10-15', 9060.00, 90600.00, '950');
INSERT INTO public.facturas VALUES (951, 160, '2020-10-14', 4160.00, 41600.00, '951');
INSERT INTO public.facturas VALUES (952, 217, '2020-10-13', 38726.00, 387260.00, '952');
INSERT INTO public.facturas VALUES (953, 73, '2020-10-12', 26982.00, 269820.00, '953');
INSERT INTO public.facturas VALUES (954, 211, '2020-10-11', 698.00, 6980.00, '954');
INSERT INTO public.facturas VALUES (955, 197, '2020-10-10', 3096.00, 30960.00, '955');
INSERT INTO public.facturas VALUES (956, 155, '2020-10-09', 12152.00, 121520.00, '956');
INSERT INTO public.facturas VALUES (957, 62, '2020-10-08', 2376.00, 23760.00, '957');
INSERT INTO public.facturas VALUES (958, 142, '2020-10-07', 3336.00, 33360.00, '958');
INSERT INTO public.facturas VALUES (959, 37, '2020-10-06', 13160.00, 131600.00, '959');
INSERT INTO public.facturas VALUES (960, 16, '2020-10-05', 19242.00, 192420.00, '960');
INSERT INTO public.facturas VALUES (961, 173, '2020-10-04', 15668.00, 156680.00, '961');
INSERT INTO public.facturas VALUES (962, 222, '2020-10-03', 5770.00, 57700.00, '962');
INSERT INTO public.facturas VALUES (963, 62, '2020-10-02', 5374.00, 53740.00, '963');
INSERT INTO public.facturas VALUES (964, 115, '2020-10-01', 15180.00, 151800.00, '964');
INSERT INTO public.facturas VALUES (965, 236, '2020-09-30', 23728.00, 237280.00, '965');
INSERT INTO public.facturas VALUES (966, 232, '2020-09-29', 18372.00, 183720.00, '966');
INSERT INTO public.facturas VALUES (967, 10, '2020-09-28', 17060.00, 170600.00, '967');
INSERT INTO public.facturas VALUES (968, 225, '2020-09-27', 33744.00, 337440.00, '968');
INSERT INTO public.facturas VALUES (969, 126, '2020-09-26', 21558.00, 215580.00, '969');
INSERT INTO public.facturas VALUES (970, 64, '2020-09-25', 4482.00, 44820.00, '970');
INSERT INTO public.facturas VALUES (971, 118, '2020-09-24', 22170.00, 221700.00, '971');
INSERT INTO public.facturas VALUES (972, 35, '2020-09-23', 8156.00, 81560.00, '972');
INSERT INTO public.facturas VALUES (973, 226, '2020-09-22', 3984.00, 39840.00, '973');
INSERT INTO public.facturas VALUES (974, 232, '2020-09-21', 34954.00, 349540.00, '974');
INSERT INTO public.facturas VALUES (975, 105, '2020-09-20', 2754.00, 27540.00, '975');
INSERT INTO public.facturas VALUES (976, 84, '2020-09-19', 13938.00, 139380.00, '976');
INSERT INTO public.facturas VALUES (977, 209, '2020-09-18', 15578.00, 155780.00, '977');
INSERT INTO public.facturas VALUES (978, 129, '2020-09-17', 796.00, 7960.00, '978');
INSERT INTO public.facturas VALUES (979, 57, '2020-09-16', 3510.00, 35100.00, '979');
INSERT INTO public.facturas VALUES (980, 116, '2020-09-15', 13172.00, 131720.00, '980');
INSERT INTO public.facturas VALUES (981, 139, '2020-09-14', 11648.00, 116480.00, '981');
INSERT INTO public.facturas VALUES (982, 6, '2020-09-13', 3582.00, 35820.00, '982');
INSERT INTO public.facturas VALUES (983, 19, '2020-09-12', 12126.00, 121260.00, '983');
INSERT INTO public.facturas VALUES (984, 196, '2020-09-11', 198.00, 1980.00, '984');
INSERT INTO public.facturas VALUES (985, 196, '2020-09-10', 6986.00, 69860.00, '985');
INSERT INTO public.facturas VALUES (986, 58, '2020-09-09', 40046.00, 400460.00, '986');
INSERT INTO public.facturas VALUES (987, 126, '2020-09-08', 790.00, 7900.00, '987');
INSERT INTO public.facturas VALUES (988, 218, '2020-09-07', 12662.00, 126620.00, '988');
INSERT INTO public.facturas VALUES (989, 103, '2020-09-06', 43538.00, 435380.00, '989');
INSERT INTO public.facturas VALUES (990, 235, '2020-09-05', 3884.00, 38840.00, '990');
INSERT INTO public.facturas VALUES (991, 69, '2020-09-04', 17046.00, 170460.00, '991');
INSERT INTO public.facturas VALUES (992, 107, '2020-09-03', 10338.00, 103380.00, '992');
INSERT INTO public.facturas VALUES (993, 159, '2020-09-02', 31128.00, 311280.00, '993');
INSERT INTO public.facturas VALUES (994, 214, '2020-09-01', 11224.00, 112240.00, '994');
INSERT INTO public.facturas VALUES (995, 65, '2020-08-31', 28554.00, 285540.00, '995');
INSERT INTO public.facturas VALUES (996, 124, '2020-08-30', 13780.00, 137800.00, '996');
INSERT INTO public.facturas VALUES (997, 238, '2020-08-29', 5060.00, 50600.00, '997');
INSERT INTO public.facturas VALUES (998, 238, '2020-08-28', 4280.00, 42800.00, '998');
INSERT INTO public.facturas VALUES (999, 21, '2020-08-27', 396.00, 3960.00, '999');
INSERT INTO public.facturas VALUES (1000, 128, '2020-08-26', 20784.00, 207840.00, '1000');
INSERT INTO public.facturas VALUES (1001, 1, '2024-03-26', 100000.00, 1000000.00, '0004');


--
-- TOC entry 3431 (class 0 OID 232337)
-- Dependencies: 224
-- Data for Name: facturas_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facturas_item VALUES (1, 1, 30, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (2, 1, 84, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (3, 1, 5, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (4, 1, 67, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (5, 2, 87, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (6, 3, 46, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (7, 4, 68, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (8, 4, 63, 5.00, 10980.00, 54900.00);
INSERT INTO public.facturas_item VALUES (9, 4, 54, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (10, 4, 47, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (11, 4, 25, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (12, 5, 37, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (13, 5, 15, 3.00, 4580.00, 13740.00);
INSERT INTO public.facturas_item VALUES (14, 6, 32, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (15, 6, 79, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (17, 7, 69, 1.00, 13980.00, 13980.00);
INSERT INTO public.facturas_item VALUES (18, 8, 61, 8.00, 8980.00, 71840.00);
INSERT INTO public.facturas_item VALUES (19, 8, 38, 4.00, 3580.00, 14320.00);
INSERT INTO public.facturas_item VALUES (20, 8, 40, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (21, 9, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (22, 10, 59, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (23, 10, 93, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (24, 11, 35, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (25, 11, 86, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (26, 12, 97, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (27, 12, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (29, 12, 36, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (30, 13, 79, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (31, 13, 10, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (32, 13, 18, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (33, 13, 18, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (34, 13, 10, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (35, 14, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (36, 14, 88, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (37, 14, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (38, 15, 75, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (39, 15, 9, 4.00, 2580.00, 10320.00);
INSERT INTO public.facturas_item VALUES (40, 16, 22, 6.00, 580.00, 3480.00);
INSERT INTO public.facturas_item VALUES (41, 17, 47, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (42, 17, 13, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (43, 17, 46, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (44, 17, 80, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (45, 18, 19, 8.00, 780.00, 6240.00);
INSERT INTO public.facturas_item VALUES (46, 18, 18, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (47, 18, 30, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (48, 19, 16, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (49, 19, 75, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (50, 20, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (51, 20, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (52, 20, 18, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (53, 20, 65, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (54, 21, 48, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (55, 22, 77, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (56, 22, 34, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (57, 22, 10, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (58, 22, 20, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (59, 23, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (60, 23, 49, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (61, 23, 38, 4.00, 3580.00, 14320.00);
INSERT INTO public.facturas_item VALUES (62, 24, 50, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (63, 25, 19, 4.00, 780.00, 3120.00);
INSERT INTO public.facturas_item VALUES (64, 25, 7, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (65, 26, 72, 7.00, 39980.00, 279860.00);
INSERT INTO public.facturas_item VALUES (66, 27, 30, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (67, 27, 94, 8.00, 29980.00, 239840.00);
INSERT INTO public.facturas_item VALUES (68, 28, 8, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (69, 28, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (70, 28, 9, 10.00, 2580.00, 25800.00);
INSERT INTO public.facturas_item VALUES (71, 29, 59, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (72, 29, 24, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (73, 29, 40, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (75, 30, 45, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (77, 31, 72, 6.00, 39980.00, 239880.00);
INSERT INTO public.facturas_item VALUES (78, 32, 79, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (79, 32, 51, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (80, 32, 72, 1.00, 39980.00, 39980.00);
INSERT INTO public.facturas_item VALUES (81, 32, 15, 4.00, 4580.00, 18320.00);
INSERT INTO public.facturas_item VALUES (82, 33, 3, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (83, 33, 71, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (84, 33, 8, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (85, 33, 75, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (86, 33, 97, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (87, 34, 93, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (88, 34, 37, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (89, 34, 14, 7.00, 5580.00, 39060.00);
INSERT INTO public.facturas_item VALUES (91, 34, 78, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (92, 35, 95, 8.00, 14980.00, 119840.00);
INSERT INTO public.facturas_item VALUES (93, 35, 31, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (94, 36, 90, 1.00, 18980.00, 18980.00);
INSERT INTO public.facturas_item VALUES (95, 36, 90, 1.00, 18980.00, 18980.00);
INSERT INTO public.facturas_item VALUES (96, 36, 69, 5.00, 13980.00, 69900.00);
INSERT INTO public.facturas_item VALUES (97, 36, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (98, 36, 32, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (100, 38, 86, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (101, 39, 65, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (102, 40, 81, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (103, 40, 39, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (104, 40, 12, 8.00, 2380.00, 19040.00);
INSERT INTO public.facturas_item VALUES (105, 41, 70, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (106, 41, 95, 1.00, 14980.00, 14980.00);
INSERT INTO public.facturas_item VALUES (107, 41, 28, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (108, 41, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (109, 42, 81, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (110, 42, 82, 7.00, 23980.00, 167860.00);
INSERT INTO public.facturas_item VALUES (111, 42, 58, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (112, 43, 98, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (113, 44, 93, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (114, 45, 53, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (115, 45, 77, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (116, 45, 3, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (117, 45, 58, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (118, 46, 35, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (119, 47, 97, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (120, 47, 13, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (121, 47, 81, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (122, 47, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (123, 47, 7, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (124, 48, 93, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (125, 49, 35, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (126, 49, 41, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (127, 50, 32, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (128, 51, 66, 9.00, 31980.00, 287820.00);
INSERT INTO public.facturas_item VALUES (129, 52, 60, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (130, 53, 69, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (131, 53, 45, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (132, 53, 87, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (133, 53, 18, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (134, 54, 32, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (135, 54, 42, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (136, 55, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (137, 55, 2, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (138, 56, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (139, 57, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (140, 57, 20, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (141, 57, 62, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (142, 58, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (143, 58, 26, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (144, 59, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (145, 59, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (146, 59, 90, 5.00, 18980.00, 94900.00);
INSERT INTO public.facturas_item VALUES (147, 59, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (148, 60, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (149, 60, 63, 10.00, 10980.00, 109800.00);
INSERT INTO public.facturas_item VALUES (150, 60, 14, 7.00, 5580.00, 39060.00);
INSERT INTO public.facturas_item VALUES (151, 61, 24, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (153, 61, 67, 2.00, 19980.00, 39960.00);
INSERT INTO public.facturas_item VALUES (154, 61, 80, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (155, 61, 70, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (156, 62, 42, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (157, 62, 85, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (158, 62, 95, 8.00, 14980.00, 119840.00);
INSERT INTO public.facturas_item VALUES (159, 63, 56, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (160, 64, 37, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (161, 64, 87, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (162, 64, 53, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (163, 64, 90, 10.00, 18980.00, 189800.00);
INSERT INTO public.facturas_item VALUES (164, 65, 60, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (165, 65, 29, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (166, 65, 79, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (167, 65, 67, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (168, 66, 45, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (169, 66, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (170, 66, 19, 10.00, 780.00, 7800.00);
INSERT INTO public.facturas_item VALUES (171, 66, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (172, 66, 56, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (173, 67, 59, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (174, 67, 73, 4.00, 16980.00, 67920.00);
INSERT INTO public.facturas_item VALUES (175, 67, 42, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (176, 67, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (177, 68, 63, 10.00, 10980.00, 109800.00);
INSERT INTO public.facturas_item VALUES (178, 68, 68, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (179, 68, 51, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (180, 68, 37, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (181, 69, 3, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (182, 69, 20, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (183, 69, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (184, 69, 2, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (185, 70, 12, 10.00, 2380.00, 23800.00);
INSERT INTO public.facturas_item VALUES (188, 71, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (189, 71, 70, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (190, 71, 80, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (191, 72, 98, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (192, 72, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (193, 72, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (194, 72, 2, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (195, 72, 37, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (196, 73, 65, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (197, 74, 29, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (198, 74, 74, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (199, 74, 59, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (200, 74, 91, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (201, 74, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (202, 75, 61, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (203, 75, 54, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (204, 75, 4, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (205, 75, 51, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (206, 75, 10, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (207, 76, 59, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (208, 76, 45, 10.00, 25980.00, 259800.00);
INSERT INTO public.facturas_item VALUES (209, 76, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (210, 76, 65, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (211, 76, 2, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (212, 77, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (213, 78, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (214, 78, 69, 2.00, 13980.00, 27960.00);
INSERT INTO public.facturas_item VALUES (215, 78, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (216, 78, 90, 5.00, 18980.00, 94900.00);
INSERT INTO public.facturas_item VALUES (217, 78, 62, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (218, 79, 46, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (219, 79, 19, 10.00, 780.00, 7800.00);
INSERT INTO public.facturas_item VALUES (220, 79, 80, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (221, 79, 73, 2.00, 16980.00, 33960.00);
INSERT INTO public.facturas_item VALUES (222, 80, 3, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (223, 80, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (224, 80, 85, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (225, 81, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (226, 81, 48, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (227, 81, 40, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (228, 81, 15, 8.00, 4580.00, 36640.00);
INSERT INTO public.facturas_item VALUES (229, 82, 84, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (230, 82, 56, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (231, 82, 92, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (232, 83, 62, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (233, 83, 15, 5.00, 4580.00, 22900.00);
INSERT INTO public.facturas_item VALUES (234, 83, 40, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (235, 84, 64, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (236, 84, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (237, 84, 73, 2.00, 16980.00, 33960.00);
INSERT INTO public.facturas_item VALUES (238, 85, 34, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (239, 85, 89, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (240, 85, 13, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (241, 86, 91, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (242, 87, 63, 3.00, 10980.00, 32940.00);
INSERT INTO public.facturas_item VALUES (243, 87, 44, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (244, 88, 6, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (245, 88, 30, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (246, 88, 40, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (247, 88, 17, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (248, 88, 93, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (249, 89, 71, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (250, 90, 66, 7.00, 31980.00, 223860.00);
INSERT INTO public.facturas_item VALUES (251, 91, 57, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (252, 92, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (253, 92, 31, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (254, 93, 98, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (256, 95, 53, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (257, 95, 81, 10.00, 11980.00, 119800.00);
INSERT INTO public.facturas_item VALUES (258, 95, 69, 1.00, 13980.00, 13980.00);
INSERT INTO public.facturas_item VALUES (259, 95, 54, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (260, 95, 32, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (261, 96, 68, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (262, 96, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (263, 96, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (264, 97, 85, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (265, 97, 66, 7.00, 31980.00, 223860.00);
INSERT INTO public.facturas_item VALUES (266, 97, 20, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (267, 97, 44, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (268, 98, 65, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (269, 98, 26, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (270, 99, 98, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (271, 99, 25, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (272, 99, 98, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (273, 99, 8, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (274, 100, 3, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (275, 100, 25, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (276, 101, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (277, 101, 67, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (278, 101, 42, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (279, 101, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (280, 101, 59, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (281, 102, 88, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (282, 102, 32, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (283, 102, 54, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (284, 102, 85, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (285, 102, 9, 5.00, 2580.00, 12900.00);
INSERT INTO public.facturas_item VALUES (286, 103, 86, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (287, 103, 9, 2.00, 2580.00, 5160.00);
INSERT INTO public.facturas_item VALUES (288, 104, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (289, 105, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (290, 105, 19, 9.00, 780.00, 7020.00);
INSERT INTO public.facturas_item VALUES (291, 105, 22, 1.00, 580.00, 580.00);
INSERT INTO public.facturas_item VALUES (292, 105, 31, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (293, 105, 85, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (294, 106, 49, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (295, 106, 37, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (296, 107, 42, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (297, 108, 11, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (298, 108, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (299, 108, 97, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (300, 108, 38, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (301, 109, 39, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (302, 109, 68, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (303, 109, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (304, 109, 66, 10.00, 31980.00, 319800.00);
INSERT INTO public.facturas_item VALUES (305, 109, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (306, 110, 74, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (307, 111, 16, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (308, 111, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (309, 111, 74, 5.00, 15980.00, 79900.00);
INSERT INTO public.facturas_item VALUES (310, 111, 59, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (311, 112, 87, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (312, 112, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (313, 112, 95, 1.00, 14980.00, 14980.00);
INSERT INTO public.facturas_item VALUES (314, 112, 92, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (315, 113, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (316, 114, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (318, 114, 91, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (319, 114, 25, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (321, 115, 65, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (322, 115, 51, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (323, 115, 8, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (325, 116, 3, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (326, 116, 97, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (327, 116, 76, 10.00, 29980.00, 299800.00);
INSERT INTO public.facturas_item VALUES (328, 117, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (329, 117, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (330, 117, 33, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (331, 117, 82, 2.00, 23980.00, 47960.00);
INSERT INTO public.facturas_item VALUES (332, 118, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (333, 118, 23, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (334, 118, 79, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (335, 119, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (337, 120, 31, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (338, 120, 6, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (339, 120, 67, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (340, 120, 28, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (341, 121, 45, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (342, 121, 50, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (343, 121, 55, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (344, 122, 95, 1.00, 14980.00, 14980.00);
INSERT INTO public.facturas_item VALUES (345, 122, 75, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (346, 123, 6, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (347, 124, 75, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (348, 124, 72, 10.00, 39980.00, 399800.00);
INSERT INTO public.facturas_item VALUES (349, 124, 15, 2.00, 4580.00, 9160.00);
INSERT INTO public.facturas_item VALUES (350, 124, 55, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (351, 125, 98, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (352, 125, 75, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (353, 126, 15, 2.00, 4580.00, 9160.00);
INSERT INTO public.facturas_item VALUES (354, 126, 1, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (355, 127, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (356, 127, 78, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (357, 127, 87, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (358, 127, 44, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (359, 127, 96, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (360, 128, 59, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (361, 128, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (362, 128, 55, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (363, 129, 5, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (364, 129, 17, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (365, 130, 13, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (366, 131, 91, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (367, 131, 10, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (368, 131, 16, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (369, 131, 17, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (370, 131, 50, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (371, 132, 17, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (372, 132, 40, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (373, 132, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (374, 132, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (375, 133, 15, 1.00, 4580.00, 4580.00);
INSERT INTO public.facturas_item VALUES (376, 134, 76, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (377, 134, 59, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (378, 134, 55, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (379, 134, 65, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (380, 135, 58, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (381, 135, 51, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (382, 136, 9, 5.00, 2580.00, 12900.00);
INSERT INTO public.facturas_item VALUES (383, 137, 1, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (384, 137, 95, 2.00, 14980.00, 29960.00);
INSERT INTO public.facturas_item VALUES (385, 137, 19, 6.00, 780.00, 4680.00);
INSERT INTO public.facturas_item VALUES (386, 137, 40, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (387, 137, 2, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (388, 138, 91, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (389, 138, 34, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (390, 138, 35, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (391, 138, 61, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (392, 139, 86, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (393, 140, 47, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (394, 141, 40, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (395, 142, 90, 4.00, 18980.00, 75920.00);
INSERT INTO public.facturas_item VALUES (396, 142, 59, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (398, 142, 33, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (399, 143, 28, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (400, 143, 1, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (401, 143, 34, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (402, 143, 70, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (403, 143, 28, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (404, 144, 87, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (405, 145, 40, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (406, 145, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (407, 145, 49, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (408, 146, 48, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (409, 146, 36, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (410, 146, 18, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (411, 146, 24, 6.00, 11980.00, 71880.00);
INSERT INTO public.facturas_item VALUES (412, 146, 14, 5.00, 5580.00, 27900.00);
INSERT INTO public.facturas_item VALUES (413, 147, 69, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (414, 147, 82, 7.00, 23980.00, 167860.00);
INSERT INTO public.facturas_item VALUES (415, 147, 41, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (416, 148, 39, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (417, 148, 85, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (419, 149, 90, 3.00, 18980.00, 56940.00);
INSERT INTO public.facturas_item VALUES (420, 149, 95, 8.00, 14980.00, 119840.00);
INSERT INTO public.facturas_item VALUES (421, 149, 47, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (422, 149, 29, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (423, 150, 85, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (424, 150, 75, 10.00, 25980.00, 259800.00);
INSERT INTO public.facturas_item VALUES (425, 151, 7, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (426, 151, 64, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (427, 151, 40, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (428, 151, 92, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (429, 152, 49, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (430, 153, 81, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (431, 153, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (432, 154, 51, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (434, 155, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (435, 155, 50, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (436, 156, 44, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (437, 156, 70, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (438, 156, 26, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (439, 156, 66, 3.00, 31980.00, 95940.00);
INSERT INTO public.facturas_item VALUES (440, 156, 75, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (442, 158, 68, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (443, 158, 70, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (444, 158, 48, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (445, 158, 47, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (446, 158, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (447, 159, 29, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (448, 159, 63, 3.00, 10980.00, 32940.00);
INSERT INTO public.facturas_item VALUES (449, 159, 42, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (450, 160, 47, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (452, 160, 22, 6.00, 580.00, 3480.00);
INSERT INTO public.facturas_item VALUES (453, 161, 24, 3.00, 11980.00, 35940.00);
INSERT INTO public.facturas_item VALUES (454, 161, 82, 3.00, 23980.00, 71940.00);
INSERT INTO public.facturas_item VALUES (455, 161, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (456, 161, 41, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (457, 162, 63, 8.00, 10980.00, 87840.00);
INSERT INTO public.facturas_item VALUES (458, 162, 39, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (459, 162, 36, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (460, 162, 10, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (461, 163, 46, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (462, 163, 52, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (463, 163, 69, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (464, 164, 23, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (465, 165, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (467, 166, 1, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (469, 166, 56, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (470, 167, 45, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (471, 167, 7, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (472, 167, 32, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (473, 167, 5, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (474, 167, 38, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (475, 168, 12, 5.00, 2380.00, 11900.00);
INSERT INTO public.facturas_item VALUES (476, 168, 77, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (477, 168, 15, 1.00, 4580.00, 4580.00);
INSERT INTO public.facturas_item VALUES (478, 169, 84, 10.00, 15980.00, 159800.00);
INSERT INTO public.facturas_item VALUES (479, 169, 89, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (480, 169, 33, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (481, 169, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (482, 170, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (483, 170, 59, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (484, 170, 87, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (485, 171, 92, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (486, 172, 65, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (487, 172, 44, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (489, 172, 57, 6.00, 19980.00, 119880.00);
INSERT INTO public.facturas_item VALUES (490, 172, 71, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (491, 173, 96, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (492, 173, 78, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (494, 174, 37, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (495, 174, 74, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (496, 174, 15, 5.00, 4580.00, 22900.00);
INSERT INTO public.facturas_item VALUES (497, 174, 31, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (498, 175, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (499, 175, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (500, 176, 65, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (501, 176, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (502, 176, 56, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (503, 176, 85, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (504, 177, 85, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (505, 177, 31, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (506, 177, 61, 9.00, 8980.00, 80820.00);
INSERT INTO public.facturas_item VALUES (507, 178, 46, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (509, 179, 59, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (510, 179, 32, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (511, 180, 54, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (512, 180, 48, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (513, 180, 48, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (514, 181, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (515, 181, 81, 7.00, 11980.00, 83860.00);
INSERT INTO public.facturas_item VALUES (516, 181, 86, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (517, 181, 41, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (518, 181, 88, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (519, 182, 36, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (520, 183, 26, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (521, 183, 16, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (522, 183, 23, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (523, 183, 23, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (524, 183, 22, 6.00, 580.00, 3480.00);
INSERT INTO public.facturas_item VALUES (525, 184, 42, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (526, 184, 81, 6.00, 11980.00, 71880.00);
INSERT INTO public.facturas_item VALUES (527, 184, 85, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (528, 184, 67, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (529, 184, 87, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (531, 186, 12, 9.00, 2380.00, 21420.00);
INSERT INTO public.facturas_item VALUES (532, 186, 61, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (535, 188, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (536, 189, 77, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (537, 189, 39, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (538, 189, 90, 10.00, 18980.00, 189800.00);
INSERT INTO public.facturas_item VALUES (539, 189, 5, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (540, 190, 58, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (541, 190, 79, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (542, 190, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (543, 190, 83, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (544, 190, 2, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (545, 191, 92, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (546, 191, 51, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (547, 192, 5, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (548, 192, 57, 10.00, 19980.00, 199800.00);
INSERT INTO public.facturas_item VALUES (549, 192, 50, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (550, 192, 12, 5.00, 2380.00, 11900.00);
INSERT INTO public.facturas_item VALUES (551, 193, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (552, 193, 24, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (553, 193, 90, 3.00, 18980.00, 56940.00);
INSERT INTO public.facturas_item VALUES (554, 193, 47, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (555, 194, 92, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (556, 195, 39, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (557, 196, 70, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (558, 196, 48, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (559, 196, 91, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (560, 196, 70, 7.00, 9980.00, 69860.00);
INSERT INTO public.facturas_item VALUES (561, 197, 18, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (562, 197, 12, 3.00, 2380.00, 7140.00);
INSERT INTO public.facturas_item VALUES (563, 198, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (564, 198, 55, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (565, 198, 38, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (566, 198, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (567, 198, 93, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (569, 200, 16, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (570, 200, 80, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (571, 201, 13, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (572, 201, 50, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (573, 202, 4, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (574, 202, 7, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (575, 202, 66, 10.00, 31980.00, 319800.00);
INSERT INTO public.facturas_item VALUES (576, 203, 84, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (577, 203, 17, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (578, 203, 81, 5.00, 11980.00, 59900.00);
INSERT INTO public.facturas_item VALUES (579, 203, 31, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (580, 204, 83, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (581, 204, 54, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (582, 204, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (583, 204, 75, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (584, 205, 57, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (585, 205, 56, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (586, 206, 25, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (587, 206, 81, 4.00, 11980.00, 47920.00);
INSERT INTO public.facturas_item VALUES (588, 207, 3, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (589, 207, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (590, 208, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (591, 208, 28, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (592, 208, 80, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (593, 208, 98, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (594, 208, 11, 10.00, 8980.00, 89800.00);
INSERT INTO public.facturas_item VALUES (595, 209, 71, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (596, 209, 47, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (597, 209, 87, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (598, 210, 50, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (599, 210, 69, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (600, 210, 76, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (601, 210, 94, 10.00, 29980.00, 299800.00);
INSERT INTO public.facturas_item VALUES (602, 211, 98, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (603, 211, 58, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (604, 211, 16, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (605, 212, 38, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (606, 212, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (607, 212, 81, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (608, 212, 81, 10.00, 11980.00, 119800.00);
INSERT INTO public.facturas_item VALUES (609, 212, 2, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (610, 213, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (611, 213, 75, 10.00, 25980.00, 259800.00);
INSERT INTO public.facturas_item VALUES (612, 213, 83, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (613, 213, 17, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (614, 213, 47, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (615, 214, 92, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (616, 214, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (617, 214, 69, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (618, 215, 7, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (619, 215, 2, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (620, 215, 4, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (621, 215, 4, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (622, 216, 6, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (623, 217, 24, 6.00, 11980.00, 71880.00);
INSERT INTO public.facturas_item VALUES (624, 217, 73, 7.00, 16980.00, 118860.00);
INSERT INTO public.facturas_item VALUES (625, 217, 52, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (626, 218, 59, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (627, 218, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (629, 219, 48, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (630, 220, 73, 6.00, 16980.00, 101880.00);
INSERT INTO public.facturas_item VALUES (631, 220, 63, 8.00, 10980.00, 87840.00);
INSERT INTO public.facturas_item VALUES (632, 220, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (633, 220, 64, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (634, 221, 37, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (635, 221, 41, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (637, 221, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (638, 221, 80, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (639, 222, 10, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (640, 222, 62, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (641, 222, 90, 1.00, 18980.00, 18980.00);
INSERT INTO public.facturas_item VALUES (642, 222, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (643, 222, 97, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (644, 223, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (645, 224, 70, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (646, 224, 34, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (647, 224, 25, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (648, 224, 68, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (649, 224, 32, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (650, 225, 90, 5.00, 18980.00, 94900.00);
INSERT INTO public.facturas_item VALUES (651, 225, 66, 10.00, 31980.00, 319800.00);
INSERT INTO public.facturas_item VALUES (652, 225, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (653, 225, 92, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (654, 225, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (655, 226, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (656, 226, 96, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (657, 226, 24, 5.00, 11980.00, 59900.00);
INSERT INTO public.facturas_item VALUES (658, 226, 23, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (659, 226, 47, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (987, 335, 89, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (660, 227, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (661, 228, 38, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (662, 229, 96, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (663, 230, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (664, 230, 18, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (665, 230, 17, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (666, 230, 13, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (667, 230, 19, 4.00, 780.00, 3120.00);
INSERT INTO public.facturas_item VALUES (668, 231, 28, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (669, 231, 26, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (670, 231, 42, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (671, 231, 78, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (672, 232, 47, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (673, 232, 42, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (674, 232, 7, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (675, 233, 65, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (676, 233, 80, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (677, 234, 56, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (678, 234, 12, 7.00, 2380.00, 16660.00);
INSERT INTO public.facturas_item VALUES (679, 234, 98, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (680, 234, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (681, 235, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (682, 235, 52, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (683, 235, 34, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (684, 235, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (685, 235, 41, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (686, 236, 42, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (687, 236, 75, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (688, 237, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (689, 237, 85, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (690, 237, 25, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (691, 238, 96, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (692, 239, 46, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (693, 239, 91, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (694, 239, 80, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (695, 239, 77, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (696, 239, 59, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (697, 240, 89, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (698, 241, 88, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (699, 241, 72, 5.00, 39980.00, 199900.00);
INSERT INTO public.facturas_item VALUES (700, 242, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (701, 242, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (702, 243, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (703, 244, 47, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (704, 244, 44, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (705, 244, 53, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (706, 245, 59, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (707, 245, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (708, 246, 62, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (709, 246, 32, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (710, 247, 70, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (711, 247, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (712, 247, 56, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (713, 247, 12, 3.00, 2380.00, 7140.00);
INSERT INTO public.facturas_item VALUES (714, 247, 36, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (715, 248, 51, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (716, 248, 88, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (718, 248, 30, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (719, 248, 92, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (720, 249, 66, 7.00, 31980.00, 223860.00);
INSERT INTO public.facturas_item VALUES (721, 249, 60, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (722, 250, 20, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (723, 250, 5, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (724, 250, 17, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (725, 250, 90, 2.00, 18980.00, 37960.00);
INSERT INTO public.facturas_item VALUES (726, 251, 91, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (727, 251, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (728, 251, 19, 5.00, 780.00, 3900.00);
INSERT INTO public.facturas_item VALUES (729, 252, 46, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (730, 252, 78, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (731, 253, 72, 9.00, 39980.00, 359820.00);
INSERT INTO public.facturas_item VALUES (732, 253, 89, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (733, 253, 79, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (734, 253, 11, 4.00, 8980.00, 35920.00);
INSERT INTO public.facturas_item VALUES (735, 254, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (736, 254, 24, 4.00, 11980.00, 47920.00);
INSERT INTO public.facturas_item VALUES (737, 254, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (738, 254, 17, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (739, 255, 82, 6.00, 23980.00, 143880.00);
INSERT INTO public.facturas_item VALUES (740, 255, 75, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (741, 256, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (742, 256, 73, 2.00, 16980.00, 33960.00);
INSERT INTO public.facturas_item VALUES (743, 256, 25, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (744, 257, 42, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (745, 257, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (746, 257, 61, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (747, 258, 97, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (748, 258, 34, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (749, 258, 57, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (750, 259, 94, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (751, 259, 91, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (752, 260, 82, 1.00, 23980.00, 23980.00);
INSERT INTO public.facturas_item VALUES (753, 260, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (754, 260, 89, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (755, 260, 24, 3.00, 11980.00, 35940.00);
INSERT INTO public.facturas_item VALUES (756, 261, 81, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (757, 262, 86, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (758, 262, 24, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (759, 262, 55, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (760, 262, 45, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (761, 263, 78, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (762, 263, 86, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (763, 264, 29, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (764, 264, 3, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (765, 264, 66, 8.00, 31980.00, 255840.00);
INSERT INTO public.facturas_item VALUES (766, 265, 33, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (767, 265, 12, 5.00, 2380.00, 11900.00);
INSERT INTO public.facturas_item VALUES (768, 265, 64, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (769, 265, 34, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (770, 265, 73, 10.00, 16980.00, 169800.00);
INSERT INTO public.facturas_item VALUES (771, 266, 37, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (772, 266, 37, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (773, 266, 56, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (774, 267, 32, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (775, 267, 20, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (776, 267, 89, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (777, 268, 9, 8.00, 2580.00, 20640.00);
INSERT INTO public.facturas_item VALUES (778, 268, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (779, 268, 62, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (780, 268, 49, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (781, 268, 67, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (782, 269, 60, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (783, 269, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (784, 270, 57, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (785, 270, 80, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (786, 270, 84, 2.00, 15980.00, 31960.00);
INSERT INTO public.facturas_item VALUES (787, 270, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (788, 271, 59, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (789, 271, 87, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (790, 272, 14, 8.00, 5580.00, 44640.00);
INSERT INTO public.facturas_item VALUES (791, 272, 73, 5.00, 16980.00, 84900.00);
INSERT INTO public.facturas_item VALUES (792, 273, 10, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (793, 273, 51, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (794, 273, 14, 9.00, 5580.00, 50220.00);
INSERT INTO public.facturas_item VALUES (795, 273, 82, 2.00, 23980.00, 47960.00);
INSERT INTO public.facturas_item VALUES (796, 273, 85, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (797, 274, 91, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (798, 274, 35, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (799, 275, 15, 7.00, 4580.00, 32060.00);
INSERT INTO public.facturas_item VALUES (800, 275, 42, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (801, 276, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (802, 276, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (803, 277, 8, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (804, 277, 57, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (806, 277, 40, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (807, 278, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (808, 279, 83, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (809, 279, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (810, 280, 46, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (811, 280, 8, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (813, 282, 16, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (814, 282, 4, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (815, 282, 28, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (816, 282, 34, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (817, 282, 57, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (818, 283, 14, 3.00, 5580.00, 16740.00);
INSERT INTO public.facturas_item VALUES (819, 283, 66, 8.00, 31980.00, 255840.00);
INSERT INTO public.facturas_item VALUES (820, 283, 15, 9.00, 4580.00, 41220.00);
INSERT INTO public.facturas_item VALUES (821, 283, 94, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (823, 285, 77, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (824, 285, 3, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (825, 285, 12, 8.00, 2380.00, 19040.00);
INSERT INTO public.facturas_item VALUES (826, 285, 20, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (827, 285, 80, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (828, 286, 90, 9.00, 18980.00, 170820.00);
INSERT INTO public.facturas_item VALUES (829, 287, 68, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (830, 287, 62, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (831, 287, 29, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (832, 288, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (833, 288, 47, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (834, 289, 28, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (835, 289, 52, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (836, 290, 73, 6.00, 16980.00, 101880.00);
INSERT INTO public.facturas_item VALUES (837, 290, 46, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (838, 290, 2, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (839, 291, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (840, 291, 41, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (841, 291, 26, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (842, 291, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (843, 291, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (844, 292, 42, 7.00, 9980.00, 69860.00);
INSERT INTO public.facturas_item VALUES (845, 292, 66, 1.00, 31980.00, 31980.00);
INSERT INTO public.facturas_item VALUES (846, 292, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (847, 292, 37, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (848, 293, 60, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (849, 293, 32, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (850, 293, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (851, 293, 57, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (852, 293, 59, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (853, 294, 25, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (854, 294, 91, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (855, 294, 37, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (856, 294, 48, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (857, 295, 26, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (858, 295, 72, 5.00, 39980.00, 199900.00);
INSERT INTO public.facturas_item VALUES (859, 295, 48, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (860, 295, 10, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (861, 296, 79, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (862, 296, 48, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (863, 296, 85, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (864, 296, 87, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (865, 297, 90, 3.00, 18980.00, 56940.00);
INSERT INTO public.facturas_item VALUES (866, 297, 31, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (1083, 367, 4, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (867, 297, 86, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (868, 298, 37, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (869, 298, 38, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (870, 298, 69, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (871, 299, 86, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (872, 299, 17, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (873, 300, 24, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (874, 301, 23, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (875, 301, 53, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (876, 301, 77, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (877, 301, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (878, 301, 66, 7.00, 31980.00, 223860.00);
INSERT INTO public.facturas_item VALUES (879, 302, 17, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (880, 302, 35, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (881, 303, 44, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (882, 303, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (883, 304, 46, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (884, 304, 97, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (885, 304, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (886, 304, 90, 5.00, 18980.00, 94900.00);
INSERT INTO public.facturas_item VALUES (887, 304, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (888, 305, 57, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (889, 305, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (890, 305, 10, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (891, 305, 50, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (892, 305, 69, 1.00, 13980.00, 13980.00);
INSERT INTO public.facturas_item VALUES (893, 306, 26, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (894, 306, 69, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (895, 306, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (896, 306, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (897, 306, 19, 7.00, 780.00, 5460.00);
INSERT INTO public.facturas_item VALUES (898, 307, 77, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (899, 307, 7, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (900, 307, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (901, 307, 76, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (902, 308, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (903, 309, 73, 5.00, 16980.00, 84900.00);
INSERT INTO public.facturas_item VALUES (904, 309, 62, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (906, 310, 28, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (907, 310, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (908, 310, 25, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (909, 310, 7, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (910, 311, 45, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (911, 311, 60, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (912, 312, 20, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (913, 313, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (914, 313, 91, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (915, 313, 39, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (916, 314, 89, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (917, 314, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (918, 315, 96, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (919, 315, 62, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (920, 315, 39, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (921, 315, 25, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (922, 315, 94, 6.00, 29980.00, 179880.00);
INSERT INTO public.facturas_item VALUES (923, 316, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (924, 316, 90, 10.00, 18980.00, 189800.00);
INSERT INTO public.facturas_item VALUES (925, 316, 16, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (926, 316, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (928, 317, 26, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (929, 317, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (930, 318, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (931, 318, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (932, 318, 57, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (933, 318, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (934, 319, 4, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (935, 319, 74, 2.00, 15980.00, 31960.00);
INSERT INTO public.facturas_item VALUES (936, 319, 33, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (938, 320, 22, 3.00, 580.00, 1740.00);
INSERT INTO public.facturas_item VALUES (939, 320, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (940, 321, 55, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (941, 321, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (942, 321, 35, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (943, 321, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (944, 322, 23, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (945, 323, 2, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (946, 323, 42, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (947, 323, 85, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (948, 323, 79, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (949, 324, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (950, 325, 97, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (951, 325, 24, 5.00, 11980.00, 59900.00);
INSERT INTO public.facturas_item VALUES (952, 326, 53, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (953, 326, 82, 3.00, 23980.00, 71940.00);
INSERT INTO public.facturas_item VALUES (954, 326, 31, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (955, 326, 77, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (956, 326, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (957, 327, 57, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (958, 327, 69, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (959, 327, 11, 4.00, 8980.00, 35920.00);
INSERT INTO public.facturas_item VALUES (960, 327, 73, 3.00, 16980.00, 50940.00);
INSERT INTO public.facturas_item VALUES (961, 327, 78, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (962, 328, 73, 10.00, 16980.00, 169800.00);
INSERT INTO public.facturas_item VALUES (963, 328, 56, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (964, 328, 8, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (965, 328, 54, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (966, 329, 36, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (967, 329, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (968, 329, 39, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (969, 329, 68, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (970, 329, 39, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (971, 330, 64, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (972, 330, 61, 9.00, 8980.00, 80820.00);
INSERT INTO public.facturas_item VALUES (973, 331, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (974, 331, 12, 10.00, 2380.00, 23800.00);
INSERT INTO public.facturas_item VALUES (1084, 367, 18, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (975, 331, 69, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (976, 332, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (977, 332, 87, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (978, 332, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (979, 333, 61, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (980, 333, 12, 7.00, 2380.00, 16660.00);
INSERT INTO public.facturas_item VALUES (981, 333, 98, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (982, 333, 11, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (983, 334, 46, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (984, 334, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (985, 335, 93, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (986, 335, 24, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (988, 335, 96, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (989, 335, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (990, 336, 85, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (991, 336, 38, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (992, 337, 39, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (993, 337, 47, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (994, 338, 94, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (995, 338, 90, 1.00, 18980.00, 18980.00);
INSERT INTO public.facturas_item VALUES (996, 338, 98, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (997, 338, 75, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (998, 338, 56, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (999, 339, 34, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1000, 339, 88, 5.00, 13980.00, 69900.00);
INSERT INTO public.facturas_item VALUES (1001, 340, 89, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1002, 341, 81, 6.00, 11980.00, 71880.00);
INSERT INTO public.facturas_item VALUES (1003, 341, 84, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (1004, 341, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (1005, 341, 30, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (1006, 341, 35, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1007, 342, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1008, 342, 61, 8.00, 8980.00, 71840.00);
INSERT INTO public.facturas_item VALUES (1009, 342, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1010, 343, 42, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (1011, 343, 79, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1012, 343, 70, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (1013, 344, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1014, 344, 59, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1015, 344, 47, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1016, 344, 76, 3.00, 29980.00, 89940.00);
INSERT INTO public.facturas_item VALUES (1017, 344, 91, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1018, 345, 54, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1019, 346, 20, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1020, 346, 31, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (1021, 346, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (1022, 347, 97, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (1023, 347, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1024, 347, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (1025, 347, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (1026, 347, 88, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (1027, 348, 60, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1028, 348, 7, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1029, 348, 36, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (1030, 349, 25, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1031, 349, 58, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (1032, 349, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (1033, 349, 69, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (1034, 349, 80, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1035, 350, 76, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1036, 350, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (1037, 350, 1, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1038, 350, 52, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (1039, 350, 94, 8.00, 29980.00, 239840.00);
INSERT INTO public.facturas_item VALUES (1040, 351, 5, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (1041, 351, 94, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (1042, 351, 33, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (1043, 351, 20, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1044, 352, 25, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1045, 353, 59, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1046, 353, 90, 8.00, 18980.00, 151840.00);
INSERT INTO public.facturas_item VALUES (1047, 354, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1048, 355, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1049, 356, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1050, 356, 40, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1051, 356, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (1052, 356, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1053, 356, 6, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1054, 357, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1055, 357, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1056, 357, 9, 9.00, 2580.00, 23220.00);
INSERT INTO public.facturas_item VALUES (1057, 357, 96, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1058, 357, 35, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (1059, 358, 75, 10.00, 25980.00, 259800.00);
INSERT INTO public.facturas_item VALUES (1060, 358, 97, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1061, 358, 37, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1062, 359, 51, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (1063, 360, 93, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1064, 360, 40, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1065, 360, 51, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1066, 361, 91, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1067, 362, 79, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1068, 363, 40, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1069, 363, 12, 9.00, 2380.00, 21420.00);
INSERT INTO public.facturas_item VALUES (1070, 364, 51, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (1071, 364, 76, 8.00, 29980.00, 239840.00);
INSERT INTO public.facturas_item VALUES (1072, 364, 80, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1073, 364, 73, 7.00, 16980.00, 118860.00);
INSERT INTO public.facturas_item VALUES (1074, 364, 56, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1075, 365, 44, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (1076, 365, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1077, 365, 2, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1078, 366, 42, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (1079, 366, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (1080, 367, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (1081, 367, 14, 9.00, 5580.00, 50220.00);
INSERT INTO public.facturas_item VALUES (1082, 367, 86, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1085, 368, 51, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1086, 369, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1087, 369, 61, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (1088, 369, 45, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (1089, 370, 19, 10.00, 780.00, 7800.00);
INSERT INTO public.facturas_item VALUES (1090, 370, 74, 2.00, 15980.00, 31960.00);
INSERT INTO public.facturas_item VALUES (1091, 370, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (1092, 371, 24, 4.00, 11980.00, 47920.00);
INSERT INTO public.facturas_item VALUES (1093, 371, 58, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (1094, 371, 33, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1095, 371, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (1096, 371, 44, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1097, 372, 75, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (1098, 372, 6, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (1099, 372, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1100, 372, 98, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1101, 373, 67, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (1102, 373, 20, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (1103, 373, 34, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1104, 373, 30, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (1105, 373, 44, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1106, 374, 51, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1108, 375, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (1109, 375, 32, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1110, 376, 70, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (1111, 376, 63, 6.00, 10980.00, 65880.00);
INSERT INTO public.facturas_item VALUES (1112, 376, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (1113, 377, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1114, 378, 35, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1115, 378, 9, 9.00, 2580.00, 23220.00);
INSERT INTO public.facturas_item VALUES (1116, 378, 74, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (1117, 379, 17, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (1118, 379, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1119, 379, 40, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1120, 379, 8, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1121, 380, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1122, 380, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1123, 381, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (1124, 381, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1125, 382, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1126, 382, 44, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1127, 382, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1129, 383, 18, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1130, 384, 53, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1131, 385, 77, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (1132, 385, 20, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (1133, 385, 65, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1134, 385, 26, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1135, 386, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (1136, 386, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1137, 387, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (1138, 387, 79, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (1139, 387, 71, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1140, 388, 49, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1141, 389, 4, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1142, 389, 81, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (1143, 389, 28, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (1144, 389, 96, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1145, 389, 37, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1147, 390, 57, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (1148, 390, 2, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1149, 390, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1150, 390, 36, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1151, 391, 53, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1152, 391, 6, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1153, 392, 13, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1154, 392, 25, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1155, 392, 23, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (1156, 392, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (1157, 393, 59, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (1158, 394, 90, 2.00, 18980.00, 37960.00);
INSERT INTO public.facturas_item VALUES (1159, 395, 14, 8.00, 5580.00, 44640.00);
INSERT INTO public.facturas_item VALUES (1160, 395, 78, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1161, 395, 79, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1162, 395, 25, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1163, 395, 52, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (1164, 396, 57, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (1165, 396, 76, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (1166, 396, 41, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (1168, 398, 48, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (1169, 398, 77, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (1170, 399, 19, 4.00, 780.00, 3120.00);
INSERT INTO public.facturas_item VALUES (1171, 399, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (1172, 399, 54, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1173, 399, 24, 5.00, 11980.00, 59900.00);
INSERT INTO public.facturas_item VALUES (1174, 400, 74, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (1175, 400, 22, 1.00, 580.00, 580.00);
INSERT INTO public.facturas_item VALUES (1176, 400, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (1177, 400, 81, 7.00, 11980.00, 83860.00);
INSERT INTO public.facturas_item VALUES (1178, 400, 53, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1179, 401, 80, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1180, 401, 87, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1181, 402, 92, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (1182, 403, 15, 10.00, 4580.00, 45800.00);
INSERT INTO public.facturas_item VALUES (1183, 403, 84, 7.00, 15980.00, 111860.00);
INSERT INTO public.facturas_item VALUES (1184, 403, 10, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1185, 404, 81, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (1186, 404, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1187, 404, 87, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1188, 404, 35, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1189, 405, 92, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1190, 406, 61, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (1191, 406, 77, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (1192, 406, 82, 1.00, 23980.00, 23980.00);
INSERT INTO public.facturas_item VALUES (1193, 406, 84, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (1194, 407, 72, 10.00, 39980.00, 399800.00);
INSERT INTO public.facturas_item VALUES (1195, 408, 34, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1196, 408, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (1197, 408, 20, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1198, 409, 4, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1199, 409, 55, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1200, 409, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1201, 409, 97, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1202, 410, 14, 1.00, 5580.00, 5580.00);
INSERT INTO public.facturas_item VALUES (1203, 410, 55, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1204, 410, 88, 5.00, 13980.00, 69900.00);
INSERT INTO public.facturas_item VALUES (1205, 411, 1, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1206, 411, 64, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (1207, 411, 31, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1208, 411, 25, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1209, 412, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1210, 412, 29, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1211, 412, 35, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1212, 412, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1213, 412, 9, 3.00, 2580.00, 7740.00);
INSERT INTO public.facturas_item VALUES (1214, 413, 29, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1215, 414, 75, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (1216, 414, 37, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1217, 414, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (1218, 414, 62, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (1219, 414, 7, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1220, 415, 17, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1221, 415, 46, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (1222, 416, 36, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1223, 417, 39, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1224, 418, 32, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1225, 418, 39, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1226, 418, 64, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (1227, 418, 96, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1228, 419, 73, 6.00, 16980.00, 101880.00);
INSERT INTO public.facturas_item VALUES (1229, 419, 1, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1230, 419, 58, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (1231, 419, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1232, 419, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1233, 420, 67, 2.00, 19980.00, 39960.00);
INSERT INTO public.facturas_item VALUES (1234, 420, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (1236, 421, 82, 8.00, 23980.00, 191840.00);
INSERT INTO public.facturas_item VALUES (1237, 421, 75, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (1238, 421, 64, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (1239, 422, 63, 7.00, 10980.00, 76860.00);
INSERT INTO public.facturas_item VALUES (1240, 423, 8, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1241, 423, 95, 7.00, 14980.00, 104860.00);
INSERT INTO public.facturas_item VALUES (1242, 423, 94, 3.00, 29980.00, 89940.00);
INSERT INTO public.facturas_item VALUES (1243, 423, 61, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (1244, 424, 52, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (1245, 424, 36, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (1246, 424, 48, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (1247, 425, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (1248, 425, 1, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1249, 425, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (1250, 425, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1251, 426, 79, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1252, 426, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (1253, 426, 33, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1254, 426, 41, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (1255, 427, 77, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1256, 427, 98, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (1257, 427, 71, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1258, 427, 62, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (1259, 428, 4, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (1260, 428, 69, 7.00, 13980.00, 97860.00);
INSERT INTO public.facturas_item VALUES (1261, 428, 76, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (1262, 428, 32, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1263, 429, 64, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (1264, 429, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1265, 430, 36, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (1266, 430, 17, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (1267, 431, 13, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1268, 432, 83, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (1269, 432, 74, 7.00, 15980.00, 111860.00);
INSERT INTO public.facturas_item VALUES (1270, 432, 11, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (1271, 433, 18, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1272, 434, 30, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (1273, 435, 26, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1274, 435, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (1275, 435, 69, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (1276, 436, 11, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (1277, 436, 57, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (1278, 436, 30, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1279, 436, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1280, 436, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1281, 437, 13, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1282, 438, 65, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (1283, 438, 79, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1284, 439, 70, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (1285, 439, 1, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1286, 439, 64, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (1287, 440, 87, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1288, 441, 38, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (1289, 441, 93, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1290, 441, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (1291, 441, 97, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (1292, 441, 69, 7.00, 13980.00, 97860.00);
INSERT INTO public.facturas_item VALUES (1293, 442, 98, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (1294, 443, 63, 9.00, 10980.00, 98820.00);
INSERT INTO public.facturas_item VALUES (1295, 443, 80, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1296, 443, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (1297, 444, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1298, 445, 82, 5.00, 23980.00, 119900.00);
INSERT INTO public.facturas_item VALUES (1299, 445, 14, 1.00, 5580.00, 5580.00);
INSERT INTO public.facturas_item VALUES (1401, 477, 28, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (1402, 478, 18, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1403, 478, 22, 4.00, 580.00, 2320.00);
INSERT INTO public.facturas_item VALUES (1404, 478, 47, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1405, 478, 51, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1406, 478, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1407, 479, 3, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1409, 479, 47, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1410, 479, 30, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1411, 479, 6, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (1412, 480, 15, 8.00, 4580.00, 36640.00);
INSERT INTO public.facturas_item VALUES (1413, 480, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1414, 481, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (1415, 481, 45, 5.00, 25980.00, 129900.00);
INSERT INTO public.facturas_item VALUES (1416, 481, 64, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1417, 481, 67, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (1418, 482, 81, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (1419, 482, 39, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (1420, 482, 72, 5.00, 39980.00, 199900.00);
INSERT INTO public.facturas_item VALUES (1422, 483, 13, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1423, 484, 79, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1424, 484, 28, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1425, 484, 50, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1426, 484, 46, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1427, 484, 77, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1428, 485, 78, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (1429, 485, 22, 5.00, 580.00, 2900.00);
INSERT INTO public.facturas_item VALUES (1430, 486, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1431, 486, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1432, 486, 78, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1433, 486, 65, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1434, 486, 26, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1435, 487, 86, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1436, 488, 83, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (1437, 488, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (1438, 489, 90, 9.00, 18980.00, 170820.00);
INSERT INTO public.facturas_item VALUES (1439, 490, 38, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (1440, 490, 93, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1441, 490, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1442, 490, 20, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1443, 491, 64, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1444, 491, 61, 6.00, 8980.00, 53880.00);
INSERT INTO public.facturas_item VALUES (1445, 491, 40, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1446, 491, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1447, 492, 22, 4.00, 580.00, 2320.00);
INSERT INTO public.facturas_item VALUES (1448, 492, 77, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (1449, 492, 67, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (1450, 492, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1451, 493, 95, 7.00, 14980.00, 104860.00);
INSERT INTO public.facturas_item VALUES (1452, 493, 20, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1453, 493, 31, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1454, 494, 13, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1455, 494, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1456, 494, 37, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (1457, 494, 59, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (1458, 494, 56, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1459, 495, 51, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1460, 495, 4, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1461, 495, 34, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1462, 496, 39, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1463, 497, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1464, 497, 73, 3.00, 16980.00, 50940.00);
INSERT INTO public.facturas_item VALUES (1465, 497, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (1466, 498, 56, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1467, 498, 98, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1468, 498, 4, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1469, 499, 39, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1470, 499, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1471, 499, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (1472, 500, 70, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (1473, 501, 60, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1474, 501, 77, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (1475, 501, 64, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (1476, 501, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1477, 502, 38, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (1478, 502, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1479, 502, 82, 8.00, 23980.00, 191840.00);
INSERT INTO public.facturas_item VALUES (1480, 502, 92, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1481, 502, 44, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (1482, 503, 68, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1483, 504, 13, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1484, 504, 37, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1485, 504, 17, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1486, 504, 83, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (1487, 504, 14, 7.00, 5580.00, 39060.00);
INSERT INTO public.facturas_item VALUES (1488, 505, 58, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (1489, 505, 81, 7.00, 11980.00, 83860.00);
INSERT INTO public.facturas_item VALUES (1490, 505, 44, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1491, 505, 96, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1492, 506, 94, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (1493, 506, 35, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (1494, 506, 63, 7.00, 10980.00, 76860.00);
INSERT INTO public.facturas_item VALUES (1495, 507, 66, 4.00, 31980.00, 127920.00);
INSERT INTO public.facturas_item VALUES (1496, 507, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1497, 507, 23, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (1498, 507, 32, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1499, 508, 8, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (1500, 509, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1501, 509, 64, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (1502, 509, 31, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1503, 509, 66, 8.00, 31980.00, 255840.00);
INSERT INTO public.facturas_item VALUES (1504, 509, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1505, 510, 86, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1506, 511, 69, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (1507, 511, 9, 5.00, 2580.00, 12900.00);
INSERT INTO public.facturas_item VALUES (1508, 512, 24, 4.00, 11980.00, 47920.00);
INSERT INTO public.facturas_item VALUES (1509, 512, 97, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (1510, 512, 3, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1511, 512, 57, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (1512, 512, 22, 9.00, 580.00, 5220.00);
INSERT INTO public.facturas_item VALUES (1513, 513, 19, 8.00, 780.00, 6240.00);
INSERT INTO public.facturas_item VALUES (1514, 514, 63, 1.00, 10980.00, 10980.00);
INSERT INTO public.facturas_item VALUES (1515, 514, 11, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (1516, 515, 86, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1517, 515, 97, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (1518, 515, 51, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1519, 515, 95, 2.00, 14980.00, 29960.00);
INSERT INTO public.facturas_item VALUES (1520, 516, 57, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (1521, 516, 35, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1522, 516, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1523, 516, 46, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1524, 516, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1525, 517, 15, 10.00, 4580.00, 45800.00);
INSERT INTO public.facturas_item VALUES (1526, 517, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1527, 518, 91, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1528, 518, 48, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (1529, 518, 66, 2.00, 31980.00, 63960.00);
INSERT INTO public.facturas_item VALUES (1530, 518, 53, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1531, 519, 77, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (1532, 519, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1533, 519, 85, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1534, 519, 59, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1535, 520, 84, 4.00, 15980.00, 63920.00);
INSERT INTO public.facturas_item VALUES (1536, 521, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (1537, 521, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1538, 522, 67, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (1539, 523, 42, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (1540, 523, 49, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1541, 523, 55, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (1542, 524, 97, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1543, 524, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (1544, 524, 6, 4.00, 3580.00, 14320.00);
INSERT INTO public.facturas_item VALUES (1545, 524, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1546, 524, 97, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (1547, 525, 33, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (1548, 525, 42, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (1549, 525, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1550, 526, 42, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (1551, 526, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (1552, 526, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (1553, 526, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1554, 526, 80, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1555, 527, 6, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (1556, 528, 78, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1557, 528, 60, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1558, 528, 18, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (1559, 529, 81, 8.00, 11980.00, 95840.00);
INSERT INTO public.facturas_item VALUES (1560, 529, 64, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1561, 529, 68, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1562, 529, 34, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1563, 530, 73, 7.00, 16980.00, 118860.00);
INSERT INTO public.facturas_item VALUES (1564, 531, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1565, 532, 53, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1566, 533, 85, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1567, 533, 79, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1568, 533, 97, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1569, 533, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1570, 534, 33, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1571, 534, 20, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1572, 535, 90, 1.00, 18980.00, 18980.00);
INSERT INTO public.facturas_item VALUES (1574, 536, 45, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (1575, 537, 19, 2.00, 780.00, 1560.00);
INSERT INTO public.facturas_item VALUES (1576, 538, 87, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1577, 539, 7, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1578, 539, 20, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (1579, 539, 39, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1580, 539, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (1581, 540, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (1582, 540, 57, 10.00, 19980.00, 199800.00);
INSERT INTO public.facturas_item VALUES (1583, 541, 4, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1584, 542, 82, 5.00, 23980.00, 119900.00);
INSERT INTO public.facturas_item VALUES (1585, 542, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1586, 543, 46, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1587, 543, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (1588, 544, 58, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (1589, 544, 58, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (1590, 544, 76, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1591, 545, 79, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1592, 545, 17, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (1594, 545, 79, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1595, 546, 58, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1596, 546, 92, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1597, 546, 6, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (1598, 547, 75, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (1599, 547, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (1600, 547, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1601, 547, 80, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1602, 548, 37, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1603, 548, 15, 7.00, 4580.00, 32060.00);
INSERT INTO public.facturas_item VALUES (1604, 549, 57, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (1605, 550, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (1606, 550, 14, 5.00, 5580.00, 27900.00);
INSERT INTO public.facturas_item VALUES (1607, 551, 16, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1608, 551, 86, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1609, 552, 25, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1610, 552, 80, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1611, 552, 48, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (1612, 552, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (1613, 553, 85, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1614, 553, 7, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1615, 553, 22, 3.00, 580.00, 1740.00);
INSERT INTO public.facturas_item VALUES (1616, 554, 54, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (1617, 555, 76, 6.00, 29980.00, 179880.00);
INSERT INTO public.facturas_item VALUES (1618, 555, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1619, 555, 83, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (1620, 555, 59, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1621, 555, 8, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (1622, 556, 46, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1623, 556, 18, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1624, 557, 15, 10.00, 4580.00, 45800.00);
INSERT INTO public.facturas_item VALUES (1625, 557, 16, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1626, 557, 44, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1627, 557, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1628, 558, 87, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1629, 558, 4, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1630, 559, 30, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1631, 559, 22, 5.00, 580.00, 2900.00);
INSERT INTO public.facturas_item VALUES (1632, 559, 88, 1.00, 13980.00, 13980.00);
INSERT INTO public.facturas_item VALUES (1633, 559, 69, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (1634, 559, 98, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1635, 560, 81, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (1636, 560, 31, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1637, 560, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (1638, 561, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (1639, 561, 37, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1641, 561, 54, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1642, 561, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1643, 562, 49, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1644, 563, 47, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1645, 563, 92, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1646, 563, 93, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1647, 564, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1648, 564, 5, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1649, 564, 82, 7.00, 23980.00, 167860.00);
INSERT INTO public.facturas_item VALUES (1650, 564, 42, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (1651, 565, 14, 3.00, 5580.00, 16740.00);
INSERT INTO public.facturas_item VALUES (1652, 565, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (1653, 565, 88, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (1654, 565, 86, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1655, 565, 82, 10.00, 23980.00, 239800.00);
INSERT INTO public.facturas_item VALUES (1656, 566, 45, 4.00, 25980.00, 103920.00);
INSERT INTO public.facturas_item VALUES (1657, 566, 71, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1658, 566, 3, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1659, 567, 37, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1660, 567, 37, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1661, 568, 46, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (1662, 568, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (1663, 568, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1664, 569, 19, 4.00, 780.00, 3120.00);
INSERT INTO public.facturas_item VALUES (1666, 570, 14, 4.00, 5580.00, 22320.00);
INSERT INTO public.facturas_item VALUES (1667, 570, 39, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1668, 570, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1669, 570, 8, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1670, 571, 36, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (1671, 571, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1672, 571, 34, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (1673, 571, 83, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1674, 572, 15, 2.00, 4580.00, 9160.00);
INSERT INTO public.facturas_item VALUES (1675, 572, 50, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1676, 572, 45, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (1677, 572, 41, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1678, 572, 52, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (1679, 573, 44, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1680, 573, 95, 3.00, 14980.00, 44940.00);
INSERT INTO public.facturas_item VALUES (1681, 574, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1682, 574, 48, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (1683, 575, 93, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1684, 576, 22, 1.00, 580.00, 580.00);
INSERT INTO public.facturas_item VALUES (1685, 576, 52, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (1686, 576, 4, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1687, 576, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (1688, 577, 8, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1689, 577, 8, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1690, 577, 87, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1691, 577, 51, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (1692, 577, 76, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (1693, 578, 28, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1694, 578, 6, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (1695, 578, 25, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1696, 578, 60, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1697, 578, 77, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1698, 579, 87, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (1699, 579, 57, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (1700, 579, 76, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (1701, 580, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (1702, 580, 13, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1703, 580, 18, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (1704, 580, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1705, 580, 73, 7.00, 16980.00, 118860.00);
INSERT INTO public.facturas_item VALUES (1706, 581, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1707, 581, 93, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1708, 581, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1709, 582, 32, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1710, 582, 37, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1711, 582, 32, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (1712, 582, 35, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1713, 583, 18, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (1714, 583, 15, 9.00, 4580.00, 41220.00);
INSERT INTO public.facturas_item VALUES (1715, 583, 57, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (1716, 583, 61, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (1717, 583, 28, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1718, 584, 87, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1719, 584, 47, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1720, 585, 19, 9.00, 780.00, 7020.00);
INSERT INTO public.facturas_item VALUES (1721, 585, 4, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1722, 586, 46, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1723, 586, 89, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1724, 586, 77, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (1725, 587, 74, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (1726, 588, 93, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1728, 588, 37, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1729, 588, 61, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (1730, 588, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1731, 589, 20, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (1732, 589, 89, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1734, 589, 55, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1735, 590, 62, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (1736, 590, 5, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (1737, 590, 28, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1738, 590, 74, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (1739, 591, 18, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1740, 591, 60, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (1741, 591, 94, 8.00, 29980.00, 239840.00);
INSERT INTO public.facturas_item VALUES (1742, 592, 40, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1743, 592, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (1744, 592, 80, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1745, 593, 50, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1746, 593, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1747, 593, 17, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1748, 593, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (1749, 594, 58, 2.00, 1580.00, 3160.00);
INSERT INTO public.facturas_item VALUES (1750, 594, 74, 5.00, 15980.00, 79900.00);
INSERT INTO public.facturas_item VALUES (1751, 594, 1, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (1752, 595, 12, 1.00, 2380.00, 2380.00);
INSERT INTO public.facturas_item VALUES (1753, 596, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1754, 596, 61, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (1755, 596, 54, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1756, 597, 73, 9.00, 16980.00, 152820.00);
INSERT INTO public.facturas_item VALUES (1757, 597, 4, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1758, 597, 26, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1759, 597, 79, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1760, 598, 4, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1761, 598, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1762, 598, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1763, 599, 40, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1764, 599, 91, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1765, 599, 66, 6.00, 31980.00, 191880.00);
INSERT INTO public.facturas_item VALUES (1766, 599, 14, 3.00, 5580.00, 16740.00);
INSERT INTO public.facturas_item VALUES (1767, 600, 11, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (1768, 600, 51, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1769, 600, 95, 5.00, 14980.00, 74900.00);
INSERT INTO public.facturas_item VALUES (1770, 600, 57, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (1771, 600, 23, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (1772, 601, 39, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1773, 601, 3, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1774, 601, 12, 2.00, 2380.00, 4760.00);
INSERT INTO public.facturas_item VALUES (1775, 601, 14, 1.00, 5580.00, 5580.00);
INSERT INTO public.facturas_item VALUES (1776, 601, 87, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1777, 602, 38, 4.00, 3580.00, 14320.00);
INSERT INTO public.facturas_item VALUES (1778, 602, 50, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1779, 602, 72, 6.00, 39980.00, 239880.00);
INSERT INTO public.facturas_item VALUES (1780, 603, 59, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1781, 603, 70, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (1782, 603, 67, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (1783, 604, 53, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1784, 604, 7, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (1785, 604, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (1786, 605, 26, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1787, 605, 37, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (1788, 605, 94, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (1789, 605, 52, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (1790, 605, 30, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1791, 606, 89, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (1792, 606, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1793, 607, 96, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1794, 608, 62, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (1795, 609, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (1796, 609, 58, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (1797, 609, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1798, 610, 33, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (1799, 610, 9, 8.00, 2580.00, 20640.00);
INSERT INTO public.facturas_item VALUES (1800, 611, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (1801, 611, 90, 7.00, 18980.00, 132860.00);
INSERT INTO public.facturas_item VALUES (1802, 612, 35, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (1803, 612, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (1804, 612, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (1805, 612, 91, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1806, 613, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1807, 613, 28, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (1808, 613, 90, 9.00, 18980.00, 170820.00);
INSERT INTO public.facturas_item VALUES (1809, 614, 46, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1810, 614, 51, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (1811, 614, 71, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1812, 615, 26, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1813, 615, 13, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1814, 615, 32, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (1815, 615, 33, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1816, 616, 48, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (1817, 616, 76, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1818, 617, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (1819, 617, 34, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (1820, 617, 67, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (1821, 617, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1822, 618, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1823, 618, 3, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (1824, 618, 56, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (1825, 618, 85, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1826, 618, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1827, 619, 11, 6.00, 8980.00, 53880.00);
INSERT INTO public.facturas_item VALUES (1828, 619, 73, 10.00, 16980.00, 169800.00);
INSERT INTO public.facturas_item VALUES (1829, 620, 3, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1830, 620, 84, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (1831, 620, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1832, 620, 16, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1833, 620, 38, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (1834, 621, 65, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (1835, 621, 8, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1836, 621, 95, 1.00, 14980.00, 14980.00);
INSERT INTO public.facturas_item VALUES (1838, 622, 60, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1839, 622, 69, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (1840, 622, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1841, 623, 29, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1842, 623, 19, 9.00, 780.00, 7020.00);
INSERT INTO public.facturas_item VALUES (1843, 623, 12, 8.00, 2380.00, 19040.00);
INSERT INTO public.facturas_item VALUES (1844, 623, 7, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (1845, 623, 67, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (1846, 624, 53, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1847, 624, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1848, 624, 63, 8.00, 10980.00, 87840.00);
INSERT INTO public.facturas_item VALUES (1849, 624, 58, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (1850, 624, 16, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1851, 625, 98, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1852, 626, 50, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (1853, 626, 73, 7.00, 16980.00, 118860.00);
INSERT INTO public.facturas_item VALUES (1854, 627, 96, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1855, 627, 13, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1856, 627, 45, 7.00, 25980.00, 181860.00);
INSERT INTO public.facturas_item VALUES (1857, 628, 44, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1858, 629, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (1859, 629, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1860, 630, 51, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (1861, 631, 48, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (1862, 631, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1863, 632, 48, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (1864, 633, 81, 3.00, 11980.00, 35940.00);
INSERT INTO public.facturas_item VALUES (1865, 633, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (1866, 634, 37, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (1867, 634, 73, 3.00, 16980.00, 50940.00);
INSERT INTO public.facturas_item VALUES (1868, 634, 71, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1870, 635, 92, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (1871, 635, 10, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (1872, 635, 63, 1.00, 10980.00, 10980.00);
INSERT INTO public.facturas_item VALUES (1873, 636, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1874, 636, 64, 7.00, 980.00, 6860.00);
INSERT INTO public.facturas_item VALUES (1875, 636, 26, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1876, 637, 7, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1877, 638, 13, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1878, 638, 14, 8.00, 5580.00, 44640.00);
INSERT INTO public.facturas_item VALUES (1879, 638, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (1880, 638, 87, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (1881, 639, 79, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (1882, 639, 80, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1883, 640, 54, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (1884, 641, 83, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (1885, 642, 15, 1.00, 4580.00, 4580.00);
INSERT INTO public.facturas_item VALUES (1886, 642, 1, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1887, 642, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1888, 642, 42, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (1889, 643, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1890, 643, 17, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (1891, 643, 56, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1892, 643, 86, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1893, 643, 61, 10.00, 8980.00, 89800.00);
INSERT INTO public.facturas_item VALUES (1894, 644, 66, 8.00, 31980.00, 255840.00);
INSERT INTO public.facturas_item VALUES (1895, 644, 79, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1896, 645, 8, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (1897, 645, 4, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1898, 646, 54, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1899, 646, 5, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (1900, 647, 97, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1901, 648, 42, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (1902, 648, 69, 1.00, 13980.00, 13980.00);
INSERT INTO public.facturas_item VALUES (1903, 648, 67, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (1904, 648, 16, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1906, 649, 41, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (1907, 649, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (1908, 650, 82, 6.00, 23980.00, 143880.00);
INSERT INTO public.facturas_item VALUES (1909, 650, 69, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (1910, 650, 5, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (1911, 650, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (1912, 650, 58, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (1913, 651, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (1914, 651, 60, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (1915, 651, 71, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (1916, 652, 89, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1917, 652, 35, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (1918, 653, 76, 10.00, 29980.00, 299800.00);
INSERT INTO public.facturas_item VALUES (1919, 653, 85, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1920, 653, 71, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1921, 654, 84, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (1922, 654, 20, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (1923, 654, 13, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1924, 655, 25, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (1925, 655, 42, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (1926, 655, 47, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1927, 655, 46, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (1928, 656, 22, 3.00, 580.00, 1740.00);
INSERT INTO public.facturas_item VALUES (1929, 656, 58, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (1930, 656, 2, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (1931, 657, 81, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (1932, 657, 42, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (1933, 657, 40, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1934, 657, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1935, 658, 37, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (1936, 659, 29, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1938, 660, 56, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (1939, 660, 59, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (1940, 661, 84, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (1941, 661, 54, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1942, 662, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1943, 662, 95, 2.00, 14980.00, 29960.00);
INSERT INTO public.facturas_item VALUES (1944, 662, 50, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (1945, 663, 70, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (1946, 663, 89, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (1947, 664, 93, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (1948, 665, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1949, 665, 74, 9.00, 15980.00, 143820.00);
INSERT INTO public.facturas_item VALUES (1950, 665, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1951, 665, 60, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (1952, 666, 33, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (1953, 667, 45, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (1954, 667, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (1955, 667, 20, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1956, 667, 52, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (1957, 667, 67, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (1958, 668, 47, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (1959, 669, 2, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (1960, 669, 7, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1961, 669, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1963, 670, 7, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1964, 670, 95, 6.00, 14980.00, 89880.00);
INSERT INTO public.facturas_item VALUES (1965, 670, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (1966, 670, 90, 6.00, 18980.00, 113880.00);
INSERT INTO public.facturas_item VALUES (1967, 671, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (1968, 671, 46, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (1969, 672, 44, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1970, 672, 67, 6.00, 19980.00, 119880.00);
INSERT INTO public.facturas_item VALUES (1971, 672, 26, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (1972, 672, 69, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (1973, 672, 66, 4.00, 31980.00, 127920.00);
INSERT INTO public.facturas_item VALUES (1974, 673, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (1975, 673, 17, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (1977, 674, 51, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (1978, 675, 8, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (1979, 676, 68, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (1980, 676, 75, 4.00, 25980.00, 103920.00);
INSERT INTO public.facturas_item VALUES (1981, 676, 95, 2.00, 14980.00, 29960.00);
INSERT INTO public.facturas_item VALUES (1982, 677, 54, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (1983, 677, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (1984, 677, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (1986, 678, 85, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1987, 678, 62, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (1988, 679, 6, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (1989, 679, 66, 10.00, 31980.00, 319800.00);
INSERT INTO public.facturas_item VALUES (1990, 679, 1, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (1991, 679, 87, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (1992, 679, 35, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (1993, 680, 12, 7.00, 2380.00, 16660.00);
INSERT INTO public.facturas_item VALUES (1994, 680, 70, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (1995, 680, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (1996, 681, 39, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (1997, 681, 46, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (1998, 681, 98, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (1999, 682, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2000, 682, 51, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2001, 682, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2002, 682, 26, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2003, 682, 80, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (2005, 683, 19, 4.00, 780.00, 3120.00);
INSERT INTO public.facturas_item VALUES (2004, 683, 93, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2006, 683, 75, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (2007, 683, 75, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (2008, 683, 46, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2009, 684, 30, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (2010, 684, 11, 4.00, 8980.00, 35920.00);
INSERT INTO public.facturas_item VALUES (2011, 684, 93, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2012, 684, 3, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (2013, 685, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2014, 685, 2, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (2015, 685, 63, 7.00, 10980.00, 76860.00);
INSERT INTO public.facturas_item VALUES (2016, 686, 23, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (2017, 686, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2018, 687, 34, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2019, 687, 11, 7.00, 8980.00, 62860.00);
INSERT INTO public.facturas_item VALUES (2020, 687, 88, 2.00, 13980.00, 27960.00);
INSERT INTO public.facturas_item VALUES (2021, 688, 10, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (2022, 688, 59, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2023, 689, 32, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2024, 689, 14, 6.00, 5580.00, 33480.00);
INSERT INTO public.facturas_item VALUES (2025, 689, 82, 10.00, 23980.00, 239800.00);
INSERT INTO public.facturas_item VALUES (2027, 690, 79, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2028, 690, 78, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (2030, 690, 5, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2031, 691, 70, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (2032, 691, 60, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2033, 691, 48, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (2034, 692, 73, 3.00, 16980.00, 50940.00);
INSERT INTO public.facturas_item VALUES (2035, 692, 89, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2036, 692, 32, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2037, 693, 79, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2038, 693, 42, 4.00, 9980.00, 39920.00);
INSERT INTO public.facturas_item VALUES (2039, 693, 16, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2040, 693, 23, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (2041, 693, 63, 5.00, 10980.00, 54900.00);
INSERT INTO public.facturas_item VALUES (2042, 694, 73, 5.00, 16980.00, 84900.00);
INSERT INTO public.facturas_item VALUES (2043, 694, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2044, 694, 67, 7.00, 19980.00, 139860.00);
INSERT INTO public.facturas_item VALUES (2045, 695, 88, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (2046, 695, 12, 8.00, 2380.00, 19040.00);
INSERT INTO public.facturas_item VALUES (2047, 695, 48, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2048, 696, 49, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2049, 697, 64, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (2050, 698, 12, 2.00, 2380.00, 4760.00);
INSERT INTO public.facturas_item VALUES (2051, 698, 3, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (2052, 698, 67, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (2053, 698, 12, 6.00, 2380.00, 14280.00);
INSERT INTO public.facturas_item VALUES (2054, 699, 53, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2055, 699, 79, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2056, 699, 81, 3.00, 11980.00, 35940.00);
INSERT INTO public.facturas_item VALUES (2057, 699, 31, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2058, 699, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (2059, 700, 38, 5.00, 3580.00, 17900.00);
INSERT INTO public.facturas_item VALUES (2060, 700, 8, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2061, 700, 16, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2062, 700, 76, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (2063, 700, 55, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2064, 701, 40, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2065, 701, 64, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (2066, 701, 82, 7.00, 23980.00, 167860.00);
INSERT INTO public.facturas_item VALUES (2067, 702, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (2068, 702, 91, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2069, 703, 30, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (2070, 703, 82, 2.00, 23980.00, 47960.00);
INSERT INTO public.facturas_item VALUES (2071, 703, 71, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2072, 704, 22, 5.00, 580.00, 2900.00);
INSERT INTO public.facturas_item VALUES (2073, 705, 5, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2074, 705, 80, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2075, 705, 49, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2076, 705, 82, 6.00, 23980.00, 143880.00);
INSERT INTO public.facturas_item VALUES (2077, 705, 74, 4.00, 15980.00, 63920.00);
INSERT INTO public.facturas_item VALUES (2078, 706, 24, 10.00, 11980.00, 119800.00);
INSERT INTO public.facturas_item VALUES (2079, 706, 45, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (2080, 707, 91, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2081, 707, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (2082, 708, 96, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2083, 708, 30, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (2084, 708, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2085, 709, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (2086, 709, 65, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (2087, 709, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2088, 709, 75, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (2089, 709, 68, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2090, 710, 87, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (2091, 710, 70, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (2092, 711, 10, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (2093, 711, 91, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (2094, 712, 64, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (2095, 712, 76, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (2096, 713, 97, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (2097, 713, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (2098, 713, 47, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2099, 713, 86, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2100, 714, 86, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2101, 714, 28, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2102, 714, 20, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2103, 715, 80, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (2104, 716, 26, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2105, 716, 40, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2106, 716, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (2107, 717, 58, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2108, 717, 10, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (2109, 717, 32, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2110, 717, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2111, 718, 85, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2112, 719, 92, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2113, 719, 24, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (2115, 720, 30, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2116, 721, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (2117, 721, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (2118, 721, 63, 1.00, 10980.00, 10980.00);
INSERT INTO public.facturas_item VALUES (2119, 722, 60, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2120, 722, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2121, 722, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2122, 723, 34, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (2123, 724, 81, 8.00, 11980.00, 95840.00);
INSERT INTO public.facturas_item VALUES (2124, 724, 15, 8.00, 4580.00, 36640.00);
INSERT INTO public.facturas_item VALUES (2125, 724, 19, 7.00, 780.00, 5460.00);
INSERT INTO public.facturas_item VALUES (2126, 725, 67, 2.00, 19980.00, 39960.00);
INSERT INTO public.facturas_item VALUES (2127, 725, 41, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (2128, 725, 35, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2129, 725, 23, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (2130, 725, 35, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2131, 726, 50, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2132, 727, 52, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (2133, 727, 71, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2134, 728, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2135, 728, 15, 3.00, 4580.00, 13740.00);
INSERT INTO public.facturas_item VALUES (2136, 729, 24, 10.00, 11980.00, 119800.00);
INSERT INTO public.facturas_item VALUES (2137, 729, 4, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2138, 729, 17, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2139, 729, 14, 9.00, 5580.00, 50220.00);
INSERT INTO public.facturas_item VALUES (2140, 729, 87, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2141, 730, 82, 1.00, 23980.00, 23980.00);
INSERT INTO public.facturas_item VALUES (2142, 730, 30, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (2143, 730, 92, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2144, 730, 52, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (2145, 730, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2146, 731, 94, 6.00, 29980.00, 179880.00);
INSERT INTO public.facturas_item VALUES (2147, 731, 91, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2148, 732, 37, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2149, 732, 85, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2150, 732, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2151, 732, 32, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2153, 734, 54, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2154, 735, 20, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2155, 736, 88, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (2156, 737, 67, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (2157, 737, 40, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2158, 737, 37, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2159, 737, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2160, 737, 4, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2161, 738, 44, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2162, 738, 84, 4.00, 15980.00, 63920.00);
INSERT INTO public.facturas_item VALUES (2163, 738, 54, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2164, 739, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2165, 739, 30, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (2166, 739, 62, 10.00, 7980.00, 79800.00);
INSERT INTO public.facturas_item VALUES (2167, 739, 1, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2168, 739, 10, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2169, 740, 35, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (2170, 740, 74, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (2171, 740, 39, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2172, 740, 23, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (2173, 741, 13, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2174, 741, 64, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (2175, 742, 70, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (2176, 743, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2177, 744, 23, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (2178, 744, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2179, 745, 16, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2180, 745, 77, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (2181, 746, 84, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (2182, 746, 61, 4.00, 8980.00, 35920.00);
INSERT INTO public.facturas_item VALUES (2183, 747, 32, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2184, 747, 51, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (2185, 747, 94, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (2186, 748, 4, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2187, 748, 50, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (2188, 748, 86, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2189, 748, 61, 5.00, 8980.00, 44900.00);
INSERT INTO public.facturas_item VALUES (2190, 748, 2, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (2191, 749, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2192, 749, 58, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2193, 749, 95, 10.00, 14980.00, 149800.00);
INSERT INTO public.facturas_item VALUES (2194, 749, 94, 7.00, 29980.00, 209860.00);
INSERT INTO public.facturas_item VALUES (2195, 749, 84, 4.00, 15980.00, 63920.00);
INSERT INTO public.facturas_item VALUES (2196, 750, 4, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2197, 751, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (2198, 751, 34, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2199, 751, 65, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2200, 751, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (2201, 751, 53, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2202, 752, 92, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2203, 752, 95, 5.00, 14980.00, 74900.00);
INSERT INTO public.facturas_item VALUES (2204, 752, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (2205, 752, 19, 6.00, 780.00, 4680.00);
INSERT INTO public.facturas_item VALUES (2206, 753, 20, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2207, 753, 4, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2208, 753, 12, 10.00, 2380.00, 23800.00);
INSERT INTO public.facturas_item VALUES (2209, 754, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2210, 754, 20, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (2211, 755, 86, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2212, 755, 65, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2213, 756, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (2214, 756, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2215, 756, 80, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (2216, 756, 23, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (2217, 756, 53, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2218, 757, 48, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (2219, 757, 17, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2220, 757, 36, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2222, 758, 37, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2223, 758, 75, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (2224, 758, 1, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2225, 759, 57, 2.00, 19980.00, 39960.00);
INSERT INTO public.facturas_item VALUES (2226, 759, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (2227, 759, 78, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2228, 759, 55, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2229, 760, 92, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (2230, 760, 50, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (2231, 761, 50, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2232, 761, 5, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (2233, 761, 20, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2234, 761, 83, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (2235, 762, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2236, 762, 15, 1.00, 4580.00, 4580.00);
INSERT INTO public.facturas_item VALUES (2237, 762, 39, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2238, 763, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2239, 763, 60, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2240, 763, 10, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (2241, 763, 73, 10.00, 16980.00, 169800.00);
INSERT INTO public.facturas_item VALUES (2242, 763, 88, 6.00, 13980.00, 83880.00);
INSERT INTO public.facturas_item VALUES (2243, 764, 23, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (2244, 764, 95, 2.00, 14980.00, 29960.00);
INSERT INTO public.facturas_item VALUES (2245, 764, 48, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (2246, 764, 29, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2247, 764, 50, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2248, 765, 15, 5.00, 4580.00, 22900.00);
INSERT INTO public.facturas_item VALUES (2249, 765, 63, 10.00, 10980.00, 109800.00);
INSERT INTO public.facturas_item VALUES (2250, 765, 81, 1.00, 11980.00, 11980.00);
INSERT INTO public.facturas_item VALUES (2251, 765, 33, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (2252, 765, 64, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (2253, 766, 35, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (2254, 766, 16, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2255, 766, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2256, 767, 17, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2259, 768, 82, 2.00, 23980.00, 47960.00);
INSERT INTO public.facturas_item VALUES (2260, 768, 96, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2261, 768, 83, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (2262, 769, 44, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2263, 769, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (2264, 769, 44, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2265, 769, 60, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2266, 770, 36, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2267, 770, 3, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2268, 770, 2, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2269, 771, 52, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (2270, 771, 74, 2.00, 15980.00, 31960.00);
INSERT INTO public.facturas_item VALUES (2271, 771, 95, 3.00, 14980.00, 44940.00);
INSERT INTO public.facturas_item VALUES (2272, 771, 52, 5.00, 9980.00, 49900.00);
INSERT INTO public.facturas_item VALUES (2273, 772, 19, 6.00, 780.00, 4680.00);
INSERT INTO public.facturas_item VALUES (2274, 772, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2275, 773, 45, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (2276, 774, 15, 1.00, 4580.00, 4580.00);
INSERT INTO public.facturas_item VALUES (2277, 775, 19, 2.00, 780.00, 1560.00);
INSERT INTO public.facturas_item VALUES (2278, 775, 39, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2279, 775, 13, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2280, 775, 46, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2281, 775, 80, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2282, 776, 67, 1.00, 19980.00, 19980.00);
INSERT INTO public.facturas_item VALUES (2283, 776, 74, 4.00, 15980.00, 63920.00);
INSERT INTO public.facturas_item VALUES (2284, 776, 7, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2286, 777, 1, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2287, 777, 68, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2288, 777, 69, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (2289, 777, 96, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2290, 777, 48, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2291, 778, 31, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2292, 778, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2293, 778, 22, 3.00, 580.00, 1740.00);
INSERT INTO public.facturas_item VALUES (2294, 779, 77, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (2295, 779, 41, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2296, 779, 78, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2298, 780, 83, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (2299, 780, 76, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (2300, 781, 59, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2301, 781, 45, 3.00, 25980.00, 77940.00);
INSERT INTO public.facturas_item VALUES (2302, 781, 93, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2303, 781, 1, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2304, 782, 19, 3.00, 780.00, 2340.00);
INSERT INTO public.facturas_item VALUES (2305, 782, 18, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (2306, 783, 10, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2307, 783, 88, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (2308, 784, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (2309, 784, 52, 8.00, 9980.00, 79840.00);
INSERT INTO public.facturas_item VALUES (2310, 785, 39, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2311, 785, 58, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (2312, 785, 9, 9.00, 2580.00, 23220.00);
INSERT INTO public.facturas_item VALUES (2313, 786, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2314, 786, 86, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2316, 787, 28, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2317, 787, 92, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (2318, 787, 86, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2319, 788, 17, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (2320, 788, 58, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2321, 789, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2322, 789, 73, 4.00, 16980.00, 67920.00);
INSERT INTO public.facturas_item VALUES (2323, 790, 82, 4.00, 23980.00, 95920.00);
INSERT INTO public.facturas_item VALUES (2324, 790, 33, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2325, 790, 30, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (2326, 790, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2327, 791, 76, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (2328, 791, 38, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (2330, 791, 70, 6.00, 9980.00, 59880.00);
INSERT INTO public.facturas_item VALUES (2331, 792, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2332, 792, 80, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2333, 793, 71, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2334, 793, 41, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2335, 793, 28, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (2336, 793, 53, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (2337, 794, 36, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2338, 794, 19, 2.00, 780.00, 1560.00);
INSERT INTO public.facturas_item VALUES (2339, 794, 67, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (2340, 794, 14, 10.00, 5580.00, 55800.00);
INSERT INTO public.facturas_item VALUES (2341, 795, 61, 8.00, 8980.00, 71840.00);
INSERT INTO public.facturas_item VALUES (2342, 795, 56, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (2343, 795, 36, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2344, 795, 52, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (2345, 796, 40, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2346, 796, 19, 8.00, 780.00, 6240.00);
INSERT INTO public.facturas_item VALUES (2347, 796, 53, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2349, 797, 69, 3.00, 13980.00, 41940.00);
INSERT INTO public.facturas_item VALUES (2350, 798, 53, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2351, 798, 83, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (2352, 798, 95, 7.00, 14980.00, 104860.00);
INSERT INTO public.facturas_item VALUES (2353, 798, 31, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2354, 798, 82, 5.00, 23980.00, 119900.00);
INSERT INTO public.facturas_item VALUES (2355, 799, 39, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (2356, 799, 75, 2.00, 25980.00, 51960.00);
INSERT INTO public.facturas_item VALUES (2357, 799, 38, 2.00, 3580.00, 7160.00);
INSERT INTO public.facturas_item VALUES (2358, 799, 58, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2359, 799, 63, 10.00, 10980.00, 109800.00);
INSERT INTO public.facturas_item VALUES (2360, 800, 31, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2361, 801, 38, 8.00, 3580.00, 28640.00);
INSERT INTO public.facturas_item VALUES (2362, 802, 53, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (2363, 802, 62, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2364, 802, 63, 4.00, 10980.00, 43920.00);
INSERT INTO public.facturas_item VALUES (2365, 802, 95, 10.00, 14980.00, 149800.00);
INSERT INTO public.facturas_item VALUES (2366, 803, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2367, 803, 92, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2368, 804, 94, 3.00, 29980.00, 89940.00);
INSERT INTO public.facturas_item VALUES (2369, 804, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2370, 805, 74, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (2371, 805, 72, 7.00, 39980.00, 279860.00);
INSERT INTO public.facturas_item VALUES (2372, 805, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2373, 806, 57, 9.00, 19980.00, 179820.00);
INSERT INTO public.facturas_item VALUES (2374, 806, 46, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2375, 806, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (2376, 806, 52, 1.00, 9980.00, 9980.00);
INSERT INTO public.facturas_item VALUES (2377, 806, 63, 9.00, 10980.00, 98820.00);
INSERT INTO public.facturas_item VALUES (2378, 807, 83, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2379, 807, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2380, 807, 6, 4.00, 3580.00, 14320.00);
INSERT INTO public.facturas_item VALUES (2381, 808, 98, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2382, 808, 34, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2383, 808, 39, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2384, 808, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2385, 808, 51, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (2386, 809, 52, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (2387, 810, 68, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2388, 811, 6, 5.00, 3580.00, 17900.00);
INSERT INTO public.facturas_item VALUES (2389, 811, 40, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2390, 811, 25, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2391, 811, 7, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2392, 812, 86, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2393, 812, 95, 10.00, 14980.00, 149800.00);
INSERT INTO public.facturas_item VALUES (2394, 813, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (2395, 814, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2396, 815, 34, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2397, 815, 74, 10.00, 15980.00, 159800.00);
INSERT INTO public.facturas_item VALUES (2398, 815, 79, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2399, 816, 36, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2400, 817, 50, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2401, 817, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (2402, 817, 13, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2403, 818, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (2404, 818, 29, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (2405, 819, 44, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2406, 819, 74, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (2407, 819, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2408, 820, 67, 8.00, 19980.00, 159840.00);
INSERT INTO public.facturas_item VALUES (2409, 820, 29, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2410, 820, 13, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2411, 820, 80, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2412, 821, 98, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2413, 821, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2414, 821, 53, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2415, 821, 8, 4.00, 4980.00, 19920.00);
INSERT INTO public.facturas_item VALUES (2416, 821, 38, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (2417, 822, 51, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2419, 822, 38, 1.00, 3580.00, 3580.00);
INSERT INTO public.facturas_item VALUES (2420, 822, 69, 9.00, 13980.00, 125820.00);
INSERT INTO public.facturas_item VALUES (2421, 822, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2422, 823, 90, 6.00, 18980.00, 113880.00);
INSERT INTO public.facturas_item VALUES (2423, 824, 95, 10.00, 14980.00, 149800.00);
INSERT INTO public.facturas_item VALUES (2424, 825, 56, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (2425, 825, 75, 5.00, 25980.00, 129900.00);
INSERT INTO public.facturas_item VALUES (2426, 825, 37, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2427, 825, 58, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2428, 825, 51, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2429, 826, 58, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2430, 827, 93, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2431, 827, 11, 9.00, 8980.00, 80820.00);
INSERT INTO public.facturas_item VALUES (2432, 827, 18, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (2433, 827, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (2434, 827, 64, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (2435, 828, 94, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (2436, 828, 67, 3.00, 19980.00, 59940.00);
INSERT INTO public.facturas_item VALUES (2437, 828, 60, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2438, 828, 6, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (2439, 829, 32, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2440, 829, 93, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2441, 829, 7, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2442, 829, 69, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (2443, 830, 8, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2444, 830, 1, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2445, 831, 20, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2446, 831, 50, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2447, 832, 86, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2448, 832, 46, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2449, 833, 76, 6.00, 29980.00, 179880.00);
INSERT INTO public.facturas_item VALUES (2450, 833, 23, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (2451, 833, 14, 10.00, 5580.00, 55800.00);
INSERT INTO public.facturas_item VALUES (2452, 833, 50, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (2453, 834, 11, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (2454, 835, 55, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2455, 836, 14, 7.00, 5580.00, 39060.00);
INSERT INTO public.facturas_item VALUES (2456, 836, 20, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2457, 836, 41, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (2458, 836, 16, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2459, 837, 62, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2460, 837, 97, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2461, 837, 15, 5.00, 4580.00, 22900.00);
INSERT INTO public.facturas_item VALUES (2462, 838, 85, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2463, 838, 6, 7.00, 3580.00, 25060.00);
INSERT INTO public.facturas_item VALUES (2464, 838, 36, 2.00, 6980.00, 13960.00);
INSERT INTO public.facturas_item VALUES (2465, 838, 26, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2466, 838, 84, 9.00, 15980.00, 143820.00);
INSERT INTO public.facturas_item VALUES (2467, 839, 34, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2468, 839, 54, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2469, 840, 40, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2470, 840, 98, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (2471, 840, 33, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2472, 840, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2473, 840, 75, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (2474, 841, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2475, 841, 20, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (2476, 841, 25, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2477, 842, 86, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2478, 842, 18, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (2479, 842, 30, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2480, 843, 61, 9.00, 8980.00, 80820.00);
INSERT INTO public.facturas_item VALUES (2481, 843, 17, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (2482, 843, 35, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (2483, 843, 87, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2484, 843, 13, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2485, 844, 32, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2486, 844, 6, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (2487, 844, 95, 10.00, 14980.00, 149800.00);
INSERT INTO public.facturas_item VALUES (2488, 844, 61, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (2489, 844, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2490, 845, 5, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2492, 846, 4, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2493, 846, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (2494, 846, 2, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2495, 846, 95, 6.00, 14980.00, 89880.00);
INSERT INTO public.facturas_item VALUES (2496, 847, 14, 9.00, 5580.00, 50220.00);
INSERT INTO public.facturas_item VALUES (2497, 847, 62, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2498, 848, 81, 10.00, 11980.00, 119800.00);
INSERT INTO public.facturas_item VALUES (2500, 849, 75, 4.00, 25980.00, 103920.00);
INSERT INTO public.facturas_item VALUES (2501, 849, 71, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2502, 849, 82, 8.00, 23980.00, 191840.00);
INSERT INTO public.facturas_item VALUES (2503, 850, 52, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (2504, 850, 71, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2505, 851, 9, 6.00, 2580.00, 15480.00);
INSERT INTO public.facturas_item VALUES (2506, 852, 80, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (2507, 852, 65, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2508, 852, 48, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2509, 852, 6, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (2510, 853, 3, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2511, 853, 28, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (2512, 854, 66, 6.00, 31980.00, 191880.00);
INSERT INTO public.facturas_item VALUES (2513, 854, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (2514, 854, 93, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2515, 855, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2516, 855, 41, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2517, 855, 25, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2518, 856, 41, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2519, 856, 90, 6.00, 18980.00, 113880.00);
INSERT INTO public.facturas_item VALUES (2520, 857, 20, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (2521, 857, 26, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2522, 858, 57, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (2523, 858, 37, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2524, 859, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (2525, 859, 47, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2526, 859, 60, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2527, 859, 77, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (2528, 859, 51, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2529, 860, 22, 6.00, 580.00, 3480.00);
INSERT INTO public.facturas_item VALUES (2530, 860, 61, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2531, 860, 83, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2532, 860, 22, 10.00, 580.00, 5800.00);
INSERT INTO public.facturas_item VALUES (2533, 861, 94, 6.00, 29980.00, 179880.00);
INSERT INTO public.facturas_item VALUES (2534, 861, 98, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2535, 861, 77, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (2536, 861, 93, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2537, 862, 17, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (2538, 862, 36, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (2539, 862, 98, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2540, 862, 90, 9.00, 18980.00, 170820.00);
INSERT INTO public.facturas_item VALUES (2541, 862, 57, 6.00, 19980.00, 119880.00);
INSERT INTO public.facturas_item VALUES (2542, 863, 34, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2543, 863, 44, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (2544, 863, 48, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2545, 863, 72, 8.00, 39980.00, 319840.00);
INSERT INTO public.facturas_item VALUES (2546, 864, 19, 1.00, 780.00, 780.00);
INSERT INTO public.facturas_item VALUES (2547, 865, 78, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2548, 865, 59, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (2549, 866, 96, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2550, 866, 8, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (2551, 866, 68, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2552, 866, 16, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2553, 866, 25, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2554, 867, 10, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2555, 868, 72, 3.00, 39980.00, 119940.00);
INSERT INTO public.facturas_item VALUES (2556, 868, 72, 5.00, 39980.00, 199900.00);
INSERT INTO public.facturas_item VALUES (2557, 868, 64, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (2558, 869, 3, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2559, 869, 36, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2560, 869, 79, 2.00, 2980.00, 5960.00);
INSERT INTO public.facturas_item VALUES (2561, 869, 66, 10.00, 31980.00, 319800.00);
INSERT INTO public.facturas_item VALUES (2562, 870, 74, 7.00, 15980.00, 111860.00);
INSERT INTO public.facturas_item VALUES (2563, 870, 80, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2564, 870, 19, 8.00, 780.00, 6240.00);
INSERT INTO public.facturas_item VALUES (2565, 870, 93, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2566, 871, 65, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (2567, 872, 26, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2568, 872, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (2569, 872, 66, 6.00, 31980.00, 191880.00);
INSERT INTO public.facturas_item VALUES (2570, 873, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (2571, 873, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (2572, 873, 54, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2573, 874, 82, 3.00, 23980.00, 71940.00);
INSERT INTO public.facturas_item VALUES (2574, 874, 31, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2575, 874, 45, 7.00, 25980.00, 181860.00);
INSERT INTO public.facturas_item VALUES (2576, 875, 59, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2577, 876, 26, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2578, 877, 72, 6.00, 39980.00, 239880.00);
INSERT INTO public.facturas_item VALUES (2579, 877, 77, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (2580, 877, 9, 3.00, 2580.00, 7740.00);
INSERT INTO public.facturas_item VALUES (2581, 877, 76, 2.00, 29980.00, 59960.00);
INSERT INTO public.facturas_item VALUES (2582, 878, 11, 3.00, 8980.00, 26940.00);
INSERT INTO public.facturas_item VALUES (2583, 878, 23, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (2584, 878, 17, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2585, 879, 76, 10.00, 29980.00, 299800.00);
INSERT INTO public.facturas_item VALUES (2586, 879, 47, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2587, 880, 82, 3.00, 23980.00, 71940.00);
INSERT INTO public.facturas_item VALUES (2588, 880, 45, 5.00, 25980.00, 129900.00);
INSERT INTO public.facturas_item VALUES (2589, 880, 90, 9.00, 18980.00, 170820.00);
INSERT INTO public.facturas_item VALUES (2590, 880, 72, 6.00, 39980.00, 239880.00);
INSERT INTO public.facturas_item VALUES (2591, 881, 11, 1.00, 8980.00, 8980.00);
INSERT INTO public.facturas_item VALUES (2592, 881, 18, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (2593, 881, 80, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2594, 881, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (2595, 882, 98, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2596, 882, 97, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2597, 882, 44, 7.00, 7980.00, 55860.00);
INSERT INTO public.facturas_item VALUES (2598, 882, 68, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2599, 882, 4, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2600, 883, 82, 5.00, 23980.00, 119900.00);
INSERT INTO public.facturas_item VALUES (2601, 883, 33, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2602, 884, 42, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (2603, 884, 54, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2604, 885, 51, 5.00, 4980.00, 24900.00);
INSERT INTO public.facturas_item VALUES (2605, 886, 46, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (2606, 886, 66, 4.00, 31980.00, 127920.00);
INSERT INTO public.facturas_item VALUES (2607, 886, 64, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (2608, 886, 80, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2609, 887, 17, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2610, 888, 16, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2611, 888, 26, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2612, 889, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2613, 889, 31, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2614, 890, 15, 3.00, 4580.00, 13740.00);
INSERT INTO public.facturas_item VALUES (2615, 890, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2616, 890, 85, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2617, 891, 72, 2.00, 39980.00, 79960.00);
INSERT INTO public.facturas_item VALUES (2618, 891, 23, 5.00, 980.00, 4900.00);
INSERT INTO public.facturas_item VALUES (2619, 892, 22, 6.00, 580.00, 3480.00);
INSERT INTO public.facturas_item VALUES (2620, 892, 18, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (2621, 893, 61, 8.00, 8980.00, 71840.00);
INSERT INTO public.facturas_item VALUES (2622, 893, 28, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2623, 893, 1, 3.00, 5980.00, 17940.00);
INSERT INTO public.facturas_item VALUES (2624, 894, 94, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (2625, 894, 95, 6.00, 14980.00, 89880.00);
INSERT INTO public.facturas_item VALUES (2627, 894, 35, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2628, 895, 41, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2629, 895, 17, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2630, 895, 48, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2631, 895, 15, 10.00, 4580.00, 45800.00);
INSERT INTO public.facturas_item VALUES (2632, 896, 71, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2633, 896, 9, 9.00, 2580.00, 23220.00);
INSERT INTO public.facturas_item VALUES (2634, 896, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2635, 896, 5, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (2636, 896, 20, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2637, 897, 20, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2638, 897, 83, 5.00, 6980.00, 34900.00);
INSERT INTO public.facturas_item VALUES (2639, 898, 35, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2640, 898, 89, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2641, 899, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2642, 899, 10, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2643, 899, 65, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2644, 899, 24, 6.00, 11980.00, 71880.00);
INSERT INTO public.facturas_item VALUES (2645, 899, 93, 5.00, 5980.00, 29900.00);
INSERT INTO public.facturas_item VALUES (2646, 900, 87, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2647, 900, 2, 3.00, 3980.00, 11940.00);
INSERT INTO public.facturas_item VALUES (2648, 901, 11, 2.00, 8980.00, 17960.00);
INSERT INTO public.facturas_item VALUES (2649, 901, 41, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2650, 901, 45, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (2651, 901, 88, 7.00, 13980.00, 97860.00);
INSERT INTO public.facturas_item VALUES (2652, 901, 50, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2653, 902, 53, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2655, 902, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (2656, 902, 17, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2657, 902, 36, 7.00, 6980.00, 48860.00);
INSERT INTO public.facturas_item VALUES (2658, 903, 15, 7.00, 4580.00, 32060.00);
INSERT INTO public.facturas_item VALUES (2659, 904, 31, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2660, 904, 25, 7.00, 2980.00, 20860.00);
INSERT INTO public.facturas_item VALUES (2661, 905, 38, 6.00, 3580.00, 21480.00);
INSERT INTO public.facturas_item VALUES (2662, 905, 10, 5.00, 7980.00, 39900.00);
INSERT INTO public.facturas_item VALUES (2663, 905, 30, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2664, 905, 93, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2665, 905, 92, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2666, 906, 31, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2668, 907, 33, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2669, 907, 15, 6.00, 4580.00, 27480.00);
INSERT INTO public.facturas_item VALUES (2670, 907, 67, 10.00, 19980.00, 199800.00);
INSERT INTO public.facturas_item VALUES (2671, 908, 8, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2672, 908, 17, 10.00, 6980.00, 69800.00);
INSERT INTO public.facturas_item VALUES (2673, 909, 87, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2674, 909, 89, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2675, 909, 39, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2676, 910, 24, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (2677, 910, 83, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2678, 911, 5, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2679, 912, 34, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2680, 912, 52, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (2681, 912, 3, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2682, 913, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (2683, 913, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (2684, 913, 57, 5.00, 19980.00, 99900.00);
INSERT INTO public.facturas_item VALUES (2685, 913, 86, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (2686, 913, 76, 10.00, 29980.00, 299800.00);
INSERT INTO public.facturas_item VALUES (2687, 914, 40, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2688, 914, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2689, 914, 22, 2.00, 580.00, 1160.00);
INSERT INTO public.facturas_item VALUES (2690, 914, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (2691, 915, 50, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2692, 916, 3, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2693, 917, 8, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2694, 917, 73, 5.00, 16980.00, 84900.00);
INSERT INTO public.facturas_item VALUES (2695, 917, 33, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2696, 917, 90, 8.00, 18980.00, 151840.00);
INSERT INTO public.facturas_item VALUES (2697, 918, 68, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2698, 918, 91, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (2699, 918, 5, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2700, 918, 72, 10.00, 39980.00, 399800.00);
INSERT INTO public.facturas_item VALUES (2701, 919, 88, 10.00, 13980.00, 139800.00);
INSERT INTO public.facturas_item VALUES (2702, 919, 41, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2704, 920, 56, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2705, 920, 67, 4.00, 19980.00, 79920.00);
INSERT INTO public.facturas_item VALUES (2706, 921, 33, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2708, 921, 50, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2709, 922, 58, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2710, 922, 84, 8.00, 15980.00, 127840.00);
INSERT INTO public.facturas_item VALUES (2711, 922, 64, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (2712, 923, 24, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (2713, 924, 91, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2714, 924, 22, 4.00, 580.00, 2320.00);
INSERT INTO public.facturas_item VALUES (2715, 924, 75, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (2716, 924, 20, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (2717, 924, 84, 3.00, 15980.00, 47940.00);
INSERT INTO public.facturas_item VALUES (2718, 925, 82, 4.00, 23980.00, 95920.00);
INSERT INTO public.facturas_item VALUES (2719, 925, 86, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2720, 925, 24, 2.00, 11980.00, 23960.00);
INSERT INTO public.facturas_item VALUES (2721, 926, 7, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2722, 926, 85, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2723, 926, 30, 10.00, 4980.00, 49800.00);
INSERT INTO public.facturas_item VALUES (2724, 926, 30, 1.00, 4980.00, 4980.00);
INSERT INTO public.facturas_item VALUES (2725, 927, 32, 3.00, 2980.00, 8940.00);
INSERT INTO public.facturas_item VALUES (2726, 927, 3, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2727, 927, 31, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2728, 927, 1, 2.00, 5980.00, 11960.00);
INSERT INTO public.facturas_item VALUES (2729, 928, 68, 4.00, 5980.00, 23920.00);
INSERT INTO public.facturas_item VALUES (2730, 928, 7, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2731, 928, 19, 2.00, 780.00, 1560.00);
INSERT INTO public.facturas_item VALUES (2732, 928, 45, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (2733, 928, 63, 5.00, 10980.00, 54900.00);
INSERT INTO public.facturas_item VALUES (2734, 929, 42, 2.00, 9980.00, 19960.00);
INSERT INTO public.facturas_item VALUES (2735, 929, 14, 9.00, 5580.00, 50220.00);
INSERT INTO public.facturas_item VALUES (2736, 929, 1, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2737, 930, 76, 8.00, 29980.00, 239840.00);
INSERT INTO public.facturas_item VALUES (2738, 931, 90, 7.00, 18980.00, 132860.00);
INSERT INTO public.facturas_item VALUES (2739, 932, 97, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (2740, 932, 94, 5.00, 29980.00, 149900.00);
INSERT INTO public.facturas_item VALUES (2741, 932, 11, 10.00, 8980.00, 89800.00);
INSERT INTO public.facturas_item VALUES (2742, 932, 19, 3.00, 780.00, 2340.00);
INSERT INTO public.facturas_item VALUES (2743, 932, 69, 5.00, 13980.00, 69900.00);
INSERT INTO public.facturas_item VALUES (2744, 933, 3, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2745, 933, 9, 1.00, 2580.00, 2580.00);
INSERT INTO public.facturas_item VALUES (2746, 934, 72, 1.00, 39980.00, 39980.00);
INSERT INTO public.facturas_item VALUES (2747, 934, 6, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (2748, 934, 4, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2749, 935, 65, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2750, 935, 39, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2751, 936, 23, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (2752, 936, 68, 1.00, 5980.00, 5980.00);
INSERT INTO public.facturas_item VALUES (2753, 936, 20, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (2754, 936, 8, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (2755, 936, 71, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2756, 937, 7, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2757, 937, 50, 3.00, 1580.00, 4740.00);
INSERT INTO public.facturas_item VALUES (2758, 937, 20, 8.00, 3980.00, 31840.00);
INSERT INTO public.facturas_item VALUES (2759, 938, 18, 6.00, 980.00, 5880.00);
INSERT INTO public.facturas_item VALUES (2760, 938, 66, 2.00, 31980.00, 63960.00);
INSERT INTO public.facturas_item VALUES (2761, 939, 41, 1.00, 1580.00, 1580.00);
INSERT INTO public.facturas_item VALUES (2763, 941, 96, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2764, 942, 30, 7.00, 4980.00, 34860.00);
INSERT INTO public.facturas_item VALUES (2765, 942, 5, 9.00, 1580.00, 14220.00);
INSERT INTO public.facturas_item VALUES (2766, 943, 91, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2767, 943, 20, 10.00, 3980.00, 39800.00);
INSERT INTO public.facturas_item VALUES (2768, 943, 7, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2769, 943, 82, 1.00, 23980.00, 23980.00);
INSERT INTO public.facturas_item VALUES (2770, 944, 72, 9.00, 39980.00, 359820.00);
INSERT INTO public.facturas_item VALUES (2771, 944, 36, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (2772, 944, 45, 6.00, 25980.00, 155880.00);
INSERT INTO public.facturas_item VALUES (2773, 944, 33, 8.00, 1580.00, 12640.00);
INSERT INTO public.facturas_item VALUES (2774, 944, 40, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2775, 945, 40, 10.00, 1980.00, 19800.00);
INSERT INTO public.facturas_item VALUES (2776, 945, 78, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (2777, 945, 32, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2778, 946, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (2779, 946, 72, 5.00, 39980.00, 199900.00);
INSERT INTO public.facturas_item VALUES (2780, 947, 76, 4.00, 29980.00, 119920.00);
INSERT INTO public.facturas_item VALUES (2781, 947, 19, 8.00, 780.00, 6240.00);
INSERT INTO public.facturas_item VALUES (2782, 948, 9, 8.00, 2580.00, 20640.00);
INSERT INTO public.facturas_item VALUES (2783, 948, 23, 4.00, 980.00, 3920.00);
INSERT INTO public.facturas_item VALUES (2784, 948, 13, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2785, 948, 25, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2786, 948, 52, 3.00, 9980.00, 29940.00);
INSERT INTO public.facturas_item VALUES (2787, 949, 67, 10.00, 19980.00, 199800.00);
INSERT INTO public.facturas_item VALUES (2788, 949, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (2789, 949, 40, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2790, 950, 9, 5.00, 2580.00, 12900.00);
INSERT INTO public.facturas_item VALUES (2791, 950, 61, 6.00, 8980.00, 53880.00);
INSERT INTO public.facturas_item VALUES (2792, 950, 35, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2793, 950, 54, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2794, 950, 78, 1.00, 3980.00, 3980.00);
INSERT INTO public.facturas_item VALUES (2795, 951, 79, 6.00, 2980.00, 17880.00);
INSERT INTO public.facturas_item VALUES (2796, 951, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2797, 951, 18, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (2798, 952, 25, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2799, 952, 70, 9.00, 9980.00, 89820.00);
INSERT INTO public.facturas_item VALUES (2800, 952, 16, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2801, 952, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (2802, 952, 64, 1.00, 980.00, 980.00);
INSERT INTO public.facturas_item VALUES (2803, 953, 94, 9.00, 29980.00, 269820.00);
INSERT INTO public.facturas_item VALUES (2804, 954, 48, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2805, 955, 17, 1.00, 6980.00, 6980.00);
INSERT INTO public.facturas_item VALUES (2806, 955, 82, 1.00, 23980.00, 23980.00);
INSERT INTO public.facturas_item VALUES (2807, 956, 16, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2808, 956, 92, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2809, 956, 29, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (2810, 956, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (2811, 957, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2812, 957, 96, 5.00, 1980.00, 9900.00);
INSERT INTO public.facturas_item VALUES (2814, 958, 7, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2815, 959, 78, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2816, 959, 42, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (2817, 959, 53, 8.00, 2980.00, 23840.00);
INSERT INTO public.facturas_item VALUES (2818, 960, 89, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (2819, 960, 60, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2820, 960, 57, 6.00, 19980.00, 119880.00);
INSERT INTO public.facturas_item VALUES (2821, 960, 96, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2822, 961, 15, 8.00, 4580.00, 36640.00);
INSERT INTO public.facturas_item VALUES (2823, 961, 52, 7.00, 9980.00, 69860.00);
INSERT INTO public.facturas_item VALUES (2824, 961, 10, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2825, 961, 33, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2826, 961, 34, 6.00, 5980.00, 35880.00);
INSERT INTO public.facturas_item VALUES (2827, 962, 6, 3.00, 3580.00, 10740.00);
INSERT INTO public.facturas_item VALUES (2828, 962, 73, 1.00, 16980.00, 16980.00);
INSERT INTO public.facturas_item VALUES (2829, 962, 76, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (2830, 963, 54, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2831, 963, 16, 7.00, 5980.00, 41860.00);
INSERT INTO public.facturas_item VALUES (2832, 964, 84, 9.00, 15980.00, 143820.00);
INSERT INTO public.facturas_item VALUES (2833, 964, 55, 1.00, 7980.00, 7980.00);
INSERT INTO public.facturas_item VALUES (2834, 965, 29, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2835, 965, 6, 10.00, 3580.00, 35800.00);
INSERT INTO public.facturas_item VALUES (2836, 965, 88, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (2837, 965, 86, 9.00, 5980.00, 53820.00);
INSERT INTO public.facturas_item VALUES (2838, 966, 97, 8.00, 7980.00, 63840.00);
INSERT INTO public.facturas_item VALUES (2839, 966, 57, 6.00, 19980.00, 119880.00);
INSERT INTO public.facturas_item VALUES (2840, 967, 68, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2841, 967, 94, 1.00, 29980.00, 29980.00);
INSERT INTO public.facturas_item VALUES (2842, 967, 59, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2843, 967, 1, 10.00, 5980.00, 59800.00);
INSERT INTO public.facturas_item VALUES (2844, 967, 65, 7.00, 1580.00, 11060.00);
INSERT INTO public.facturas_item VALUES (2845, 968, 64, 10.00, 980.00, 9800.00);
INSERT INTO public.facturas_item VALUES (2846, 968, 20, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2847, 968, 69, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (2848, 968, 75, 8.00, 25980.00, 207840.00);
INSERT INTO public.facturas_item VALUES (2849, 969, 97, 6.00, 7980.00, 47880.00);
INSERT INTO public.facturas_item VALUES (2850, 969, 74, 6.00, 15980.00, 95880.00);
INSERT INTO public.facturas_item VALUES (2851, 969, 28, 9.00, 7980.00, 71820.00);
INSERT INTO public.facturas_item VALUES (2852, 970, 89, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (2853, 971, 44, 4.00, 7980.00, 31920.00);
INSERT INTO public.facturas_item VALUES (2854, 971, 8, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (2855, 971, 66, 5.00, 31980.00, 159900.00);
INSERT INTO public.facturas_item VALUES (2856, 972, 26, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2857, 972, 71, 7.00, 1980.00, 13860.00);
INSERT INTO public.facturas_item VALUES (2858, 972, 44, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2859, 972, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (2860, 973, 98, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2861, 974, 48, 9.00, 6980.00, 62820.00);
INSERT INTO public.facturas_item VALUES (2862, 974, 73, 3.00, 16980.00, 50940.00);
INSERT INTO public.facturas_item VALUES (2863, 974, 45, 9.00, 25980.00, 233820.00);
INSERT INTO public.facturas_item VALUES (2864, 974, 18, 2.00, 980.00, 1960.00);
INSERT INTO public.facturas_item VALUES (2865, 975, 9, 3.00, 2580.00, 7740.00);
INSERT INTO public.facturas_item VALUES (2866, 975, 13, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2867, 975, 54, 8.00, 1980.00, 15840.00);
INSERT INTO public.facturas_item VALUES (2868, 976, 89, 3.00, 4980.00, 14940.00);
INSERT INTO public.facturas_item VALUES (2869, 976, 69, 4.00, 13980.00, 55920.00);
INSERT INTO public.facturas_item VALUES (2870, 976, 45, 1.00, 25980.00, 25980.00);
INSERT INTO public.facturas_item VALUES (2871, 976, 38, 9.00, 3580.00, 32220.00);
INSERT INTO public.facturas_item VALUES (2872, 976, 9, 4.00, 2580.00, 10320.00);
INSERT INTO public.facturas_item VALUES (2873, 977, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2874, 977, 66, 4.00, 31980.00, 127920.00);
INSERT INTO public.facturas_item VALUES (2875, 978, 56, 2.00, 3980.00, 7960.00);
INSERT INTO public.facturas_item VALUES (2876, 979, 80, 6.00, 4980.00, 29880.00);
INSERT INTO public.facturas_item VALUES (2877, 979, 22, 9.00, 580.00, 5220.00);
INSERT INTO public.facturas_item VALUES (2878, 980, 28, 2.00, 7980.00, 15960.00);
INSERT INTO public.facturas_item VALUES (2879, 980, 63, 8.00, 10980.00, 87840.00);
INSERT INTO public.facturas_item VALUES (2880, 980, 36, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (2881, 981, 88, 8.00, 13980.00, 111840.00);
INSERT INTO public.facturas_item VALUES (2882, 981, 22, 8.00, 580.00, 4640.00);
INSERT INTO public.facturas_item VALUES (2883, 982, 20, 9.00, 3980.00, 35820.00);
INSERT INTO public.facturas_item VALUES (2885, 983, 81, 5.00, 11980.00, 59900.00);
INSERT INTO public.facturas_item VALUES (2886, 983, 18, 3.00, 980.00, 2940.00);
INSERT INTO public.facturas_item VALUES (2887, 983, 2, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (2888, 983, 5, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2889, 984, 13, 1.00, 1980.00, 1980.00);
INSERT INTO public.facturas_item VALUES (2890, 985, 70, 7.00, 9980.00, 69860.00);
INSERT INTO public.facturas_item VALUES (2891, 986, 72, 7.00, 39980.00, 279860.00);
INSERT INTO public.facturas_item VALUES (2892, 986, 36, 6.00, 6980.00, 41880.00);
INSERT INTO public.facturas_item VALUES (2893, 986, 87, 1.00, 2980.00, 2980.00);
INSERT INTO public.facturas_item VALUES (2894, 986, 92, 5.00, 3980.00, 19900.00);
INSERT INTO public.facturas_item VALUES (2895, 986, 83, 8.00, 6980.00, 55840.00);
INSERT INTO public.facturas_item VALUES (2896, 987, 41, 5.00, 1580.00, 7900.00);
INSERT INTO public.facturas_item VALUES (2897, 988, 85, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2898, 988, 53, 4.00, 2980.00, 11920.00);
INSERT INTO public.facturas_item VALUES (2899, 988, 70, 10.00, 9980.00, 99800.00);
INSERT INTO public.facturas_item VALUES (2900, 989, 41, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2901, 989, 81, 9.00, 11980.00, 107820.00);
INSERT INTO public.facturas_item VALUES (2902, 989, 62, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2903, 989, 66, 9.00, 31980.00, 287820.00);
INSERT INTO public.facturas_item VALUES (2904, 990, 25, 5.00, 2980.00, 14900.00);
INSERT INTO public.facturas_item VALUES (2905, 990, 55, 3.00, 7980.00, 23940.00);
INSERT INTO public.facturas_item VALUES (2906, 991, 53, 9.00, 2980.00, 26820.00);
INSERT INTO public.facturas_item VALUES (2907, 991, 58, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2908, 991, 74, 1.00, 15980.00, 15980.00);
INSERT INTO public.facturas_item VALUES (2909, 991, 84, 7.00, 15980.00, 111860.00);
INSERT INTO public.facturas_item VALUES (2910, 992, 8, 2.00, 4980.00, 9960.00);
INSERT INTO public.facturas_item VALUES (2911, 992, 47, 6.00, 3980.00, 23880.00);
INSERT INTO public.facturas_item VALUES (2912, 992, 98, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2913, 992, 26, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2914, 992, 49, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2915, 993, 60, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2916, 993, 82, 9.00, 23980.00, 215820.00);
INSERT INTO public.facturas_item VALUES (2917, 993, 53, 10.00, 2980.00, 29800.00);
INSERT INTO public.facturas_item VALUES (2918, 993, 16, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2919, 994, 22, 4.00, 580.00, 2320.00);
INSERT INTO public.facturas_item VALUES (2920, 994, 18, 8.00, 980.00, 7840.00);
INSERT INTO public.facturas_item VALUES (2921, 994, 86, 8.00, 5980.00, 47840.00);
INSERT INTO public.facturas_item VALUES (2922, 994, 50, 4.00, 1580.00, 6320.00);
INSERT INTO public.facturas_item VALUES (2923, 994, 24, 4.00, 11980.00, 47920.00);
INSERT INTO public.facturas_item VALUES (2924, 995, 66, 8.00, 31980.00, 255840.00);
INSERT INTO public.facturas_item VALUES (2925, 995, 96, 9.00, 1980.00, 17820.00);
INSERT INTO public.facturas_item VALUES (2926, 995, 4, 6.00, 1980.00, 11880.00);
INSERT INTO public.facturas_item VALUES (2927, 996, 65, 10.00, 1580.00, 15800.00);
INSERT INTO public.facturas_item VALUES (2928, 996, 98, 9.00, 4980.00, 44820.00);
INSERT INTO public.facturas_item VALUES (2929, 996, 41, 6.00, 1580.00, 9480.00);
INSERT INTO public.facturas_item VALUES (2930, 996, 47, 7.00, 3980.00, 27860.00);
INSERT INTO public.facturas_item VALUES (2931, 996, 80, 8.00, 4980.00, 39840.00);
INSERT INTO public.facturas_item VALUES (2932, 997, 71, 4.00, 1980.00, 7920.00);
INSERT INTO public.facturas_item VALUES (2933, 997, 23, 9.00, 980.00, 8820.00);
INSERT INTO public.facturas_item VALUES (2934, 997, 26, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2935, 997, 48, 4.00, 6980.00, 27920.00);
INSERT INTO public.facturas_item VALUES (2936, 998, 47, 4.00, 3980.00, 15920.00);
INSERT INTO public.facturas_item VALUES (2937, 998, 17, 3.00, 6980.00, 20940.00);
INSERT INTO public.facturas_item VALUES (2938, 998, 54, 3.00, 1980.00, 5940.00);
INSERT INTO public.facturas_item VALUES (2939, 999, 31, 2.00, 1980.00, 3960.00);
INSERT INTO public.facturas_item VALUES (2940, 1000, 75, 8.00, 25980.00, 207840.00);


--
-- TOC entry 3439 (class 0 OID 232451)
-- Dependencies: 232
-- Data for Name: fechas1; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fechas1 VALUES ('2024-01-01');
INSERT INTO public.fechas1 VALUES ('2024-01-02');
INSERT INTO public.fechas1 VALUES ('2024-01-03');
INSERT INTO public.fechas1 VALUES ('2024-01-04');
INSERT INTO public.fechas1 VALUES ('2024-01-05');
INSERT INTO public.fechas1 VALUES ('2024-01-06');
INSERT INTO public.fechas1 VALUES ('2024-01-07');
INSERT INTO public.fechas1 VALUES ('2024-01-08');
INSERT INTO public.fechas1 VALUES ('2024-01-09');
INSERT INTO public.fechas1 VALUES ('2024-01-10');
INSERT INTO public.fechas1 VALUES ('2024-01-11');
INSERT INTO public.fechas1 VALUES ('2024-01-12');
INSERT INTO public.fechas1 VALUES ('2024-01-13');
INSERT INTO public.fechas1 VALUES ('2024-01-14');
INSERT INTO public.fechas1 VALUES ('2024-01-15');
INSERT INTO public.fechas1 VALUES ('2024-01-16');
INSERT INTO public.fechas1 VALUES ('2024-01-17');
INSERT INTO public.fechas1 VALUES ('2024-01-18');
INSERT INTO public.fechas1 VALUES ('2024-01-19');
INSERT INTO public.fechas1 VALUES ('2024-01-20');
INSERT INTO public.fechas1 VALUES ('2024-01-21');
INSERT INTO public.fechas1 VALUES ('2024-01-22');
INSERT INTO public.fechas1 VALUES ('2024-01-23');
INSERT INTO public.fechas1 VALUES ('2024-01-24');
INSERT INTO public.fechas1 VALUES ('2024-01-25');
INSERT INTO public.fechas1 VALUES ('2024-01-26');
INSERT INTO public.fechas1 VALUES ('2024-01-27');
INSERT INTO public.fechas1 VALUES ('2024-01-28');
INSERT INTO public.fechas1 VALUES ('2024-01-29');
INSERT INTO public.fechas1 VALUES ('2024-01-30');
INSERT INTO public.fechas1 VALUES ('2024-01-31');


--
-- TOC entry 3440 (class 0 OID 232454)
-- Dependencies: 233
-- Data for Name: fechas2; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fechas2 VALUES ('2024-01-15');
INSERT INTO public.fechas2 VALUES ('2024-01-16');
INSERT INTO public.fechas2 VALUES ('2024-01-17');
INSERT INTO public.fechas2 VALUES ('2024-01-18');
INSERT INTO public.fechas2 VALUES ('2024-01-19');
INSERT INTO public.fechas2 VALUES ('2024-01-20');
INSERT INTO public.fechas2 VALUES ('2024-01-21');
INSERT INTO public.fechas2 VALUES ('2024-01-22');
INSERT INTO public.fechas2 VALUES ('2024-01-23');
INSERT INTO public.fechas2 VALUES ('2024-01-24');
INSERT INTO public.fechas2 VALUES ('2024-01-25');
INSERT INTO public.fechas2 VALUES ('2024-01-26');
INSERT INTO public.fechas2 VALUES ('2024-01-27');
INSERT INTO public.fechas2 VALUES ('2024-01-28');
INSERT INTO public.fechas2 VALUES ('2024-01-29');
INSERT INTO public.fechas2 VALUES ('2024-01-30');
INSERT INTO public.fechas2 VALUES ('2024-01-31');
INSERT INTO public.fechas2 VALUES ('2024-02-01');
INSERT INTO public.fechas2 VALUES ('2024-02-02');
INSERT INTO public.fechas2 VALUES ('2024-02-03');
INSERT INTO public.fechas2 VALUES ('2024-02-04');
INSERT INTO public.fechas2 VALUES ('2024-02-05');
INSERT INTO public.fechas2 VALUES ('2024-02-06');
INSERT INTO public.fechas2 VALUES ('2024-02-07');
INSERT INTO public.fechas2 VALUES ('2024-02-08');
INSERT INTO public.fechas2 VALUES ('2024-02-09');
INSERT INTO public.fechas2 VALUES ('2024-02-10');
INSERT INTO public.fechas2 VALUES ('2024-02-11');
INSERT INTO public.fechas2 VALUES ('2024-02-12');
INSERT INTO public.fechas2 VALUES ('2024-02-13');
INSERT INTO public.fechas2 VALUES ('2024-02-14');
INSERT INTO public.fechas2 VALUES ('2024-02-15');


--
-- TOC entry 3433 (class 0 OID 232341)
-- Dependencies: 226
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.paises VALUES (1, 'AF', 'Afganistán');
INSERT INTO public.paises VALUES (2, 'AX', 'Islas Gland');
INSERT INTO public.paises VALUES (3, 'AL', 'Albania');
INSERT INTO public.paises VALUES (4, 'DE', 'Alemania');
INSERT INTO public.paises VALUES (5, 'AD', 'Andorra');
INSERT INTO public.paises VALUES (6, 'AO', 'Angola');
INSERT INTO public.paises VALUES (7, 'AI', 'Anguilla');
INSERT INTO public.paises VALUES (8, 'AQ', 'Antártida');
INSERT INTO public.paises VALUES (9, 'AG', 'Antigua y Barbuda');
INSERT INTO public.paises VALUES (10, 'AN', 'Antillas Holandesas');
INSERT INTO public.paises VALUES (11, 'SA', 'Arabia Saudí');
INSERT INTO public.paises VALUES (12, 'DZ', 'Argelia');
INSERT INTO public.paises VALUES (13, 'AR', 'Argentina');
INSERT INTO public.paises VALUES (14, 'AM', 'Armenia');
INSERT INTO public.paises VALUES (15, 'AW', 'Aruba');
INSERT INTO public.paises VALUES (16, 'AU', 'Australia');
INSERT INTO public.paises VALUES (17, 'AT', 'Austria');
INSERT INTO public.paises VALUES (18, 'AZ', 'Azerbaiyán');
INSERT INTO public.paises VALUES (19, 'BS', 'Bahamas');
INSERT INTO public.paises VALUES (20, 'BH', 'Bahréin');
INSERT INTO public.paises VALUES (21, 'BD', 'Bangladesh');
INSERT INTO public.paises VALUES (22, 'BB', 'Barbados');
INSERT INTO public.paises VALUES (23, 'BY', 'Bielorrusia');
INSERT INTO public.paises VALUES (24, 'BE', 'Bélgica');
INSERT INTO public.paises VALUES (25, 'BZ', 'Belice');
INSERT INTO public.paises VALUES (26, 'BJ', 'Benin');
INSERT INTO public.paises VALUES (27, 'BM', 'Bermudas');
INSERT INTO public.paises VALUES (28, 'BT', 'Bhután');
INSERT INTO public.paises VALUES (29, 'BO', 'Bolivia');
INSERT INTO public.paises VALUES (30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO public.paises VALUES (31, 'BW', 'Botsuana');
INSERT INTO public.paises VALUES (32, 'BV', 'Isla Bouvet');
INSERT INTO public.paises VALUES (33, 'BR', 'Brasil');
INSERT INTO public.paises VALUES (34, 'BN', 'Brunéi');
INSERT INTO public.paises VALUES (35, 'BG', 'Bulgaria');
INSERT INTO public.paises VALUES (36, 'BF', 'Burkina Faso');
INSERT INTO public.paises VALUES (37, 'BI', 'Burundi');
INSERT INTO public.paises VALUES (38, 'CV', 'Cabo Verde');
INSERT INTO public.paises VALUES (39, 'KY', 'Islas Caimán');
INSERT INTO public.paises VALUES (40, 'KH', 'Camboya');
INSERT INTO public.paises VALUES (41, 'CM', 'Camerún');
INSERT INTO public.paises VALUES (42, 'CA', 'Canadá');
INSERT INTO public.paises VALUES (43, 'CF', 'República Centroafricana');
INSERT INTO public.paises VALUES (44, 'TD', 'Chad');
INSERT INTO public.paises VALUES (45, 'CZ', 'República Checa');
INSERT INTO public.paises VALUES (46, 'CL', 'Chile');
INSERT INTO public.paises VALUES (47, 'CN', 'China');
INSERT INTO public.paises VALUES (48, 'CY', 'Chipre');
INSERT INTO public.paises VALUES (49, 'CX', 'Isla de Navidad');
INSERT INTO public.paises VALUES (50, 'VA', 'Ciudad del Vaticano');
INSERT INTO public.paises VALUES (51, 'CC', 'Islas Cocos');
INSERT INTO public.paises VALUES (52, 'CO', 'Colombia');
INSERT INTO public.paises VALUES (53, 'KM', 'Comoras');
INSERT INTO public.paises VALUES (54, 'CD', 'República Democrática del Congo');
INSERT INTO public.paises VALUES (55, 'CG', 'Congo');
INSERT INTO public.paises VALUES (56, 'CK', 'Islas Cook');
INSERT INTO public.paises VALUES (57, 'KP', 'Corea del Norte');
INSERT INTO public.paises VALUES (58, 'KR', 'Corea del Sur');
INSERT INTO public.paises VALUES (59, 'CI', 'Costa de Marfil');
INSERT INTO public.paises VALUES (60, 'CR', 'Costa Rica');
INSERT INTO public.paises VALUES (61, 'HR', 'Croacia');
INSERT INTO public.paises VALUES (62, 'CU', 'Cuba');
INSERT INTO public.paises VALUES (63, 'DK', 'Dinamarca');
INSERT INTO public.paises VALUES (64, 'DM', 'Dominica');
INSERT INTO public.paises VALUES (65, 'DO', 'República Dominicana');
INSERT INTO public.paises VALUES (66, 'EC', 'Ecuador');
INSERT INTO public.paises VALUES (67, 'EG', 'Egipto');
INSERT INTO public.paises VALUES (68, 'SV', 'El Salvador');
INSERT INTO public.paises VALUES (69, 'AE', 'Emiratos Árabes Unidos');
INSERT INTO public.paises VALUES (70, 'ER', 'Eritrea');
INSERT INTO public.paises VALUES (71, 'SK', 'Eslovaquia');
INSERT INTO public.paises VALUES (72, 'SI', 'Eslovenia');
INSERT INTO public.paises VALUES (73, 'ES', 'España');
INSERT INTO public.paises VALUES (74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO public.paises VALUES (75, 'US', 'Estados Unidos');
INSERT INTO public.paises VALUES (76, 'EE', 'Estonia');
INSERT INTO public.paises VALUES (77, 'ET', 'Etiopía');
INSERT INTO public.paises VALUES (78, 'FO', 'Islas Feroe');
INSERT INTO public.paises VALUES (79, 'PH', 'Filipinas');
INSERT INTO public.paises VALUES (80, 'FI', 'Finlandia');
INSERT INTO public.paises VALUES (81, 'FJ', 'Fiyi');
INSERT INTO public.paises VALUES (82, 'FR', 'Francia');
INSERT INTO public.paises VALUES (83, 'GA', 'Gabón');
INSERT INTO public.paises VALUES (84, 'GM', 'Gambia');
INSERT INTO public.paises VALUES (85, 'GE', 'Georgia');
INSERT INTO public.paises VALUES (86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO public.paises VALUES (87, 'GH', 'Ghana');
INSERT INTO public.paises VALUES (88, 'GI', 'Gibraltar');
INSERT INTO public.paises VALUES (89, 'GD', 'Granada');
INSERT INTO public.paises VALUES (90, 'GR', 'Grecia');
INSERT INTO public.paises VALUES (91, 'GL', 'Groenlandia');
INSERT INTO public.paises VALUES (92, 'GP', 'Guadalupe');
INSERT INTO public.paises VALUES (93, 'GU', 'Guam');
INSERT INTO public.paises VALUES (94, 'GT', 'Guatemala');
INSERT INTO public.paises VALUES (95, 'GF', 'Guayana Francesa');
INSERT INTO public.paises VALUES (96, 'GN', 'Guinea');
INSERT INTO public.paises VALUES (97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO public.paises VALUES (98, 'GW', 'Guinea-Bissau');
INSERT INTO public.paises VALUES (99, 'GY', 'Guyana');
INSERT INTO public.paises VALUES (100, 'HT', 'Haití');
INSERT INTO public.paises VALUES (101, 'HM', 'Islas Heard y McDonald');
INSERT INTO public.paises VALUES (102, 'HN', 'Honduras');
INSERT INTO public.paises VALUES (103, 'HK', 'Hong Kong');
INSERT INTO public.paises VALUES (104, 'HU', 'Hungría');
INSERT INTO public.paises VALUES (105, 'IN', 'India');
INSERT INTO public.paises VALUES (106, 'ID', 'Indonesia');
INSERT INTO public.paises VALUES (107, 'IR', 'Irán');
INSERT INTO public.paises VALUES (108, 'IQ', 'Iraq');
INSERT INTO public.paises VALUES (109, 'IE', 'Irlanda');
INSERT INTO public.paises VALUES (110, 'IS', 'Islandia');
INSERT INTO public.paises VALUES (111, 'IL', 'Israel');
INSERT INTO public.paises VALUES (112, 'IT', 'Italia');
INSERT INTO public.paises VALUES (113, 'JM', 'Jamaica');
INSERT INTO public.paises VALUES (114, 'JP', 'Japón');
INSERT INTO public.paises VALUES (115, 'JO', 'Jordania');
INSERT INTO public.paises VALUES (116, 'KZ', 'Kazajstán');
INSERT INTO public.paises VALUES (117, 'KE', 'Kenia');
INSERT INTO public.paises VALUES (118, 'KG', 'Kirguistán');
INSERT INTO public.paises VALUES (119, 'KI', 'Kiribati');
INSERT INTO public.paises VALUES (120, 'KW', 'Kuwait');
INSERT INTO public.paises VALUES (121, 'LA', 'Laos');
INSERT INTO public.paises VALUES (122, 'LS', 'Lesotho');
INSERT INTO public.paises VALUES (123, 'LV', 'Letonia');
INSERT INTO public.paises VALUES (124, 'LB', 'Líbano');
INSERT INTO public.paises VALUES (125, 'LR', 'Liberia');
INSERT INTO public.paises VALUES (126, 'LY', 'Libia');
INSERT INTO public.paises VALUES (127, 'LI', 'Liechtenstein');
INSERT INTO public.paises VALUES (128, 'LT', 'Lituania');
INSERT INTO public.paises VALUES (129, 'LU', 'Luxemburgo');
INSERT INTO public.paises VALUES (130, 'MO', 'Macao');
INSERT INTO public.paises VALUES (131, 'MK', 'ARY Macedonia');
INSERT INTO public.paises VALUES (132, 'MG', 'Madagascar');
INSERT INTO public.paises VALUES (133, 'MY', 'Malasia');
INSERT INTO public.paises VALUES (134, 'MW', 'Malawi');
INSERT INTO public.paises VALUES (135, 'MV', 'Maldivas');
INSERT INTO public.paises VALUES (136, 'ML', 'Malí');
INSERT INTO public.paises VALUES (137, 'MT', 'Malta');
INSERT INTO public.paises VALUES (138, 'FK', 'Islas Malvinas');
INSERT INTO public.paises VALUES (139, 'MP', 'Islas Marianas del Norte');
INSERT INTO public.paises VALUES (140, 'MA', 'Marruecos');
INSERT INTO public.paises VALUES (141, 'MH', 'Islas Marshall');
INSERT INTO public.paises VALUES (142, 'MQ', 'Martinica');
INSERT INTO public.paises VALUES (143, 'MU', 'Mauricio');
INSERT INTO public.paises VALUES (144, 'MR', 'Mauritania');
INSERT INTO public.paises VALUES (145, 'YT', 'Mayotte');
INSERT INTO public.paises VALUES (146, 'MX', 'México');
INSERT INTO public.paises VALUES (147, 'FM', 'Micronesia');
INSERT INTO public.paises VALUES (148, 'MD', 'Moldavia');
INSERT INTO public.paises VALUES (149, 'MC', 'Mónaco');
INSERT INTO public.paises VALUES (150, 'MN', 'Mongolia');
INSERT INTO public.paises VALUES (151, 'MS', 'Montserrat');
INSERT INTO public.paises VALUES (152, 'MZ', 'Mozambique');
INSERT INTO public.paises VALUES (153, 'MM', 'Myanmar');
INSERT INTO public.paises VALUES (154, 'NA', 'Namibia');
INSERT INTO public.paises VALUES (155, 'NR', 'Nauru');
INSERT INTO public.paises VALUES (156, 'NP', 'Nepal');
INSERT INTO public.paises VALUES (157, 'NI', 'Nicaragua');
INSERT INTO public.paises VALUES (158, 'NE', 'Níger');
INSERT INTO public.paises VALUES (159, 'NG', 'Nigeria');
INSERT INTO public.paises VALUES (160, 'NU', 'Niue');
INSERT INTO public.paises VALUES (161, 'NF', 'Isla Norfolk');
INSERT INTO public.paises VALUES (162, 'NO', 'Noruega');
INSERT INTO public.paises VALUES (163, 'NC', 'Nueva Caledonia');
INSERT INTO public.paises VALUES (164, 'NZ', 'Nueva Zelanda');
INSERT INTO public.paises VALUES (165, 'OM', 'Omán');
INSERT INTO public.paises VALUES (166, 'NL', 'Países Bajos');
INSERT INTO public.paises VALUES (167, 'PK', 'Pakistán');
INSERT INTO public.paises VALUES (168, 'PW', 'Palau');
INSERT INTO public.paises VALUES (169, 'PS', 'Palestina');
INSERT INTO public.paises VALUES (170, 'PA', 'Panamá');
INSERT INTO public.paises VALUES (171, 'PG', 'Papúa Nueva Guinea');
INSERT INTO public.paises VALUES (172, 'PY', 'Paraguay');
INSERT INTO public.paises VALUES (173, 'PE', 'Perú');
INSERT INTO public.paises VALUES (174, 'PN', 'Islas Pitcairn');
INSERT INTO public.paises VALUES (175, 'PF', 'Polinesia Francesa');
INSERT INTO public.paises VALUES (176, 'PL', 'Polonia');
INSERT INTO public.paises VALUES (177, 'PT', 'Portugal');
INSERT INTO public.paises VALUES (178, 'PR', 'Puerto Rico');
INSERT INTO public.paises VALUES (179, 'QA', 'Qatar');
INSERT INTO public.paises VALUES (180, 'GB', 'Reino Unido');
INSERT INTO public.paises VALUES (181, 'RE', 'Reunión');
INSERT INTO public.paises VALUES (182, 'RW', 'Ruanda');
INSERT INTO public.paises VALUES (183, 'RO', 'Rumania');
INSERT INTO public.paises VALUES (184, 'RU', 'Rusia');
INSERT INTO public.paises VALUES (185, 'EH', 'Sahara Occidental');
INSERT INTO public.paises VALUES (186, 'SB', 'Islas Salomón');
INSERT INTO public.paises VALUES (187, 'WS', 'Samoa');
INSERT INTO public.paises VALUES (188, 'AS', 'Samoa Americana');
INSERT INTO public.paises VALUES (189, 'KN', 'San Cristóbal y Nevis');
INSERT INTO public.paises VALUES (190, 'SM', 'San Marino');
INSERT INTO public.paises VALUES (191, 'PM', 'San Pedro y Miquelón');
INSERT INTO public.paises VALUES (192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO public.paises VALUES (193, 'SH', 'Santa Helena');
INSERT INTO public.paises VALUES (194, 'LC', 'Santa Lucía');
INSERT INTO public.paises VALUES (195, 'ST', 'Santo Tomé y Príncipe');
INSERT INTO public.paises VALUES (196, 'SN', 'Senegal');
INSERT INTO public.paises VALUES (197, 'CS', 'Serbia y Montenegro');
INSERT INTO public.paises VALUES (198, 'SC', 'Seychelles');
INSERT INTO public.paises VALUES (199, 'SL', 'Sierra Leona');
INSERT INTO public.paises VALUES (200, 'SG', 'Singapur');
INSERT INTO public.paises VALUES (201, 'SY', 'Siria');
INSERT INTO public.paises VALUES (202, 'SO', 'Somalia');
INSERT INTO public.paises VALUES (203, 'LK', 'Sri Lanka');
INSERT INTO public.paises VALUES (204, 'SZ', 'Suazilandia');
INSERT INTO public.paises VALUES (205, 'ZA', 'Sudáfrica');
INSERT INTO public.paises VALUES (206, 'SD', 'Sudán');
INSERT INTO public.paises VALUES (207, 'SE', 'Suecia');
INSERT INTO public.paises VALUES (208, 'CH', 'Suiza');
INSERT INTO public.paises VALUES (209, 'SR', 'Surinam');
INSERT INTO public.paises VALUES (210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO public.paises VALUES (211, 'TH', 'Tailandia');
INSERT INTO public.paises VALUES (212, 'TW', 'Taiwán');
INSERT INTO public.paises VALUES (213, 'TZ', 'Tanzania');
INSERT INTO public.paises VALUES (214, 'TJ', 'Tayikistán');
INSERT INTO public.paises VALUES (215, 'IO', 'Territorio Británico del Océano Índico');
INSERT INTO public.paises VALUES (216, 'TF', 'Territorios Australes Franceses');
INSERT INTO public.paises VALUES (217, 'TL', 'Timor Oriental');
INSERT INTO public.paises VALUES (218, 'TG', 'Togo');
INSERT INTO public.paises VALUES (219, 'TK', 'Tokelau');
INSERT INTO public.paises VALUES (220, 'TO', 'Tonga');
INSERT INTO public.paises VALUES (221, 'TT', 'Trinidad y Tobago');
INSERT INTO public.paises VALUES (222, 'TN', 'Túnez');
INSERT INTO public.paises VALUES (223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO public.paises VALUES (224, 'TM', 'Turkmenistán');
INSERT INTO public.paises VALUES (225, 'TR', 'Turquía');
INSERT INTO public.paises VALUES (226, 'TV', 'Tuvalu');
INSERT INTO public.paises VALUES (227, 'UA', 'Ucrania');
INSERT INTO public.paises VALUES (228, 'UG', 'Uganda');
INSERT INTO public.paises VALUES (229, 'UY', 'Uruguay');
INSERT INTO public.paises VALUES (230, 'UZ', 'Uzbekistán');
INSERT INTO public.paises VALUES (231, 'VU', 'Vanuatu');
INSERT INTO public.paises VALUES (232, 'VE', 'Venezuela');
INSERT INTO public.paises VALUES (233, 'VN', 'Vietnam');
INSERT INTO public.paises VALUES (234, 'VG', 'Islas Vírgenes Británicas');
INSERT INTO public.paises VALUES (235, 'VI', 'Islas Vírgenes de los Estados Unidos');
INSERT INTO public.paises VALUES (236, 'WF', 'Wallis y Futuna');
INSERT INTO public.paises VALUES (237, 'YE', 'Yemen');
INSERT INTO public.paises VALUES (238, 'DJ', 'Yibuti');
INSERT INTO public.paises VALUES (239, 'ZM', 'Zambia');
INSERT INTO public.paises VALUES (240, 'ZW', 'Zimbabue');


--
-- TOC entry 3435 (class 0 OID 232348)
-- Dependencies: 228
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.productos VALUES (21, 'Arroz', 9.00, 5485.00, 'Bolsa de arroz blanco', 2);
INSERT INTO public.productos VALUES (22, 'Sal', 15.00, 645.00, 'Sal de mesa', 2);
INSERT INTO public.productos VALUES (23, 'Azúcar', 12.00, 1085.00, 'Azúcar blanca', 2);
INSERT INTO public.productos VALUES (24, 'Aceite de Oliva', 4.00, 13185.00, 'Botella de aceite de oliva extra virgen', 2);
INSERT INTO public.productos VALUES (25, 'Vinagre', 8.00, 3285.00, 'Botella de vinagre de vino blanco', 2);
INSERT INTO public.productos VALUES (26, 'Sopa Instantánea', 6.00, 2185.00, 'Sobre de sopa instantánea de pollo', 2);
INSERT INTO public.productos VALUES (27, 'Fideos Instantáneos', 5.00, 3945.00, 'Taza de fideos instantáneos de huevo', 2);
INSERT INTO public.productos VALUES (28, 'Gel de Ducha', 10.00, 8785.00, 'Botella de gel de ducha refrescante', 2);
INSERT INTO public.productos VALUES (29, 'Cepillo de Dientes', 12.00, 4385.00, 'Cepillo de dientes de cerdas suaves', 2);
INSERT INTO public.productos VALUES (30, 'Pasta de Dientes', 9.00, 5485.00, 'Tubo de pasta de dientes con flúor', 2);
INSERT INTO public.productos VALUES (31, 'Papel Higiénico', 20.00, 2185.00, 'Rollo de papel higiénico de 2 capas', 2);
INSERT INTO public.productos VALUES (32, 'Toallas de Papel', 15.00, 3285.00, 'Paquete de toallas de papel absorbentes', 2);
INSERT INTO public.productos VALUES (33, 'Algodón', 18.00, 1745.00, 'Bolsa de bolas de algodón', 2);
INSERT INTO public.productos VALUES (42, 'Linterna', 4.00, 10985.00, 'Linterna LED de bolsillo', 3);
INSERT INTO public.productos VALUES (43, 'Encendedor', 10.00, 1085.00, 'Encendedor desechable', 3);
INSERT INTO public.productos VALUES (44, 'Gafas de Sol', 7.00, 8785.00, 'Gafas de sol con protección UV', 3);
INSERT INTO public.productos VALUES (45, 'Auriculares', 5.00, 28585.00, 'Auriculares inalámbricos Bluetooth', 3);
INSERT INTO public.productos VALUES (46, 'Libreta', 8.00, 6585.00, 'Libreta de notas con tapa dura', 3);
INSERT INTO public.productos VALUES (47, 'Plumas', 10.00, 4385.00, 'Paquete de plumas de tinta negra', 3);
INSERT INTO public.productos VALUES (15, 'Jugo de Naranja', 6.00, 6052.60, 'Botella de jugo de naranja natural', 1);
INSERT INTO public.productos VALUES (6, 'Cerveza', 15.00, 4732.60, 'Lata de cerveza lager', 1);
INSERT INTO public.productos VALUES (1, 'Galletas', 10.00, 7900.60, 'Paquete de galletas de chocolate', 1);
INSERT INTO public.productos VALUES (2, 'Coca-Cola', 5.00, 5260.60, 'Refresco de cola de 2 litros', 1);
INSERT INTO public.productos VALUES (3, 'Papas Fritas', 8.00, 3940.60, 'Bolsa de papas fritas sabor original', 1);
INSERT INTO public.productos VALUES (4, 'Chocolate', 12.00, 2620.60, 'Barra de chocolate con leche', 1);
INSERT INTO public.productos VALUES (5, 'Agua Mineral', 20.00, 2092.60, 'Botella de agua mineral de 500 ml', 1);
INSERT INTO public.productos VALUES (7, 'Chicles', 30.00, 2620.60, 'Paquete de chicles sabor menta', 1);
INSERT INTO public.productos VALUES (8, 'Pan de Molde', 6.00, 6580.60, 'Pan de molde integral', 1);
INSERT INTO public.productos VALUES (9, 'Yogur', 4.00, 3412.60, 'Yogur natural sin azúcar', 1);
INSERT INTO public.productos VALUES (10, 'Helado', 3.00, 10540.60, 'Tarro de helado de vainilla', 1);
INSERT INTO public.productos VALUES (11, 'Café', 7.00, 11860.60, 'Café molido tostado', 1);
INSERT INTO public.productos VALUES (12, 'Leche', 9.00, 3148.60, 'Botella de leche semidesnatada', 1);
INSERT INTO public.productos VALUES (13, 'Gaseosa', 11.00, 2620.60, 'Botella de gaseosa de naranja', 1);
INSERT INTO public.productos VALUES (14, 'Mantequilla', 2.00, 7372.60, 'Barra de mantequilla', 1);
INSERT INTO public.productos VALUES (34, 'Jabón de Manos', 7.00, 6585.00, 'Botella de jabón líquido para manos', 2);
INSERT INTO public.productos VALUES (35, 'Cinta Adhesiva', 6.00, 4385.00, 'Rollo de cinta adhesiva transparente', 2);
INSERT INTO public.productos VALUES (36, 'Baterías', 10.00, 7685.00, 'Paquete de baterías alcalinas AA', 2);
INSERT INTO public.productos VALUES (37, 'Cable USB', 8.00, 6585.00, 'Cable USB de carga y sincronización', 2);
INSERT INTO public.productos VALUES (61, 'Juego de Destornilladores', 7.00, 9885.00, 'Juego de destornilladores Phillips y planos', 4);
INSERT INTO public.productos VALUES (62, 'Candado', 6.00, 8785.00, 'Candado de combinación de 4 dígitos', 4);
INSERT INTO public.productos VALUES (63, 'Cargador de Teléfono', 8.00, 12085.00, 'Cargador de pared USB', 4);
INSERT INTO public.productos VALUES (64, 'Lápiz', 10.00, 1085.00, 'Lápiz de grafito número 2', 4);
INSERT INTO public.productos VALUES (65, 'Sacapuntas', 5.00, 1745.00, 'Sacapuntas con depósito', 4);
INSERT INTO public.productos VALUES (66, 'Mochila', 4.00, 35185.00, 'Mochila resistente al agua', 4);
INSERT INTO public.productos VALUES (67, 'Caja de Herramientas', 6.00, 21985.00, 'Caja de herramientas de plástico', 4);
INSERT INTO public.productos VALUES (68, 'Destapacaños', 7.00, 6585.00, 'Destapacaños de goma', 4);
INSERT INTO public.productos VALUES (69, 'Juego de Llaves Allen', 5.00, 15385.00, 'Juego de llaves allen de 9 piezas', 4);
INSERT INTO public.productos VALUES (70, 'Gorra', 8.00, 10985.00, 'Gorra de béisbol ajustable', 4);
INSERT INTO public.productos VALUES (71, 'Bolígrafo', 12.00, 2185.00, 'Bolígrafo retráctil de tinta azul', 4);
INSERT INTO public.productos VALUES (72, 'Agenda Electrónica', 3.00, 43985.00, 'Agenda electrónica con pantalla táctil', 4);
INSERT INTO public.productos VALUES (73, 'Juego de Vasos', 9.00, 18685.00, 'Juego de vasos de vidrio de 6 piezas', 4);
INSERT INTO public.productos VALUES (74, 'Cuchillo de Cocina', 6.00, 17585.00, 'Cuchillo de cocina de acero inoxidable', 4);
INSERT INTO public.productos VALUES (75, 'Set de Organización', 4.00, 28585.00, 'Set de organización para escritorio', 4);
INSERT INTO public.productos VALUES (76, 'Botiquín de Primeros Auxilios', 5.00, 32985.00, 'Botiquín de primeros auxilios básico', 4);
INSERT INTO public.productos VALUES (77, 'Goma de Borrar', 10.00, 1085.00, 'Goma de borrar blanca de borrado suave', 4);
INSERT INTO public.productos VALUES (78, 'Cubiertos Desechables', 12.00, 4385.00, 'Paquete de cubiertos desechables', 4);
INSERT INTO public.productos VALUES (41, 'Cinta Métrica', 6.00, 1745.00, 'Cinta métrica de 2 metros', 3);
INSERT INTO public.productos VALUES (20, 'Pasta', 7.00, 5260.60, 'Paquete de pasta de trigo', 1);
INSERT INTO public.productos VALUES (48, 'Calculadora', 6.00, 7685.00, 'Calculadora de bolsillo', 3);
INSERT INTO public.productos VALUES (49, 'Lápices de Colores', 9.00, 2185.00, 'Caja de lápices de colores', 3);
INSERT INTO public.productos VALUES (50, 'Regla', 12.00, 1745.00, 'Regla de plástico transparente de 30 cm', 3);
INSERT INTO public.productos VALUES (51, 'Carpeta de Archivos', 7.00, 5485.00, 'Carpeta de archivos de cartón', 3);
INSERT INTO public.productos VALUES (52, 'Agenda', 5.00, 10985.00, 'Agenda semanal con tapa de cuero', 3);
INSERT INTO public.productos VALUES (53, 'Tijeras', 9.00, 3285.00, 'Tijeras de acero inoxidable', 3);
INSERT INTO public.productos VALUES (54, 'Cinta Adhesiva', 6.00, 2185.00, 'Rollo de cinta adhesiva decorativa', 3);
INSERT INTO public.productos VALUES (55, 'Caja de Almacenamiento', 8.00, 8785.00, 'Caja de almacenamiento de plástico', 3);
INSERT INTO public.productos VALUES (56, 'Pegamento', 4.00, 4385.00, 'Tubo de pegamento multiusos', 3);
INSERT INTO public.productos VALUES (57, 'Lámpara de Escritorio', 5.00, 21985.00, 'Lámpara de escritorio LED', 3);
INSERT INTO public.productos VALUES (58, 'Papel de Envolver', 10.00, 1745.00, 'Rollo de papel de envolver regalos', 3);
INSERT INTO public.productos VALUES (81, 'Cargador de Pilas', 6.00, 13185.00, 'Cargador de pilas AA y AAA', 5);
INSERT INTO public.productos VALUES (82, 'Sartén', 5.00, 26385.00, 'Sartén antiadherente de 10 pulgadas', 5);
INSERT INTO public.productos VALUES (83, 'Cepillo para el Cabello', 9.00, 7685.00, 'Cepillo para el cabello de cerdas naturales', 5);
INSERT INTO public.productos VALUES (84, 'Libro', 7.00, 17585.00, 'Libro de ficción bestseller', 5);
INSERT INTO public.productos VALUES (85, 'Lápices de Grafito', 10.00, 3285.00, 'Juego de lápices de grafito HB', 5);
INSERT INTO public.productos VALUES (86, 'Portaminas', 8.00, 6585.00, 'Portaminas con recarga de 0.7 mm', 5);
INSERT INTO public.productos VALUES (38, 'Pilas', 12.00, 3945.00, 'Paquete de pilas alcalinas AAA', 2);
INSERT INTO public.productos VALUES (39, 'Papel Aluminio', 9.00, 3285.00, 'Rollo de papel aluminio resistente', 2);
INSERT INTO public.productos VALUES (40, 'Guantes de Látex', 15.00, 2185.00, 'Par de guantes desechables de látex', 2);
INSERT INTO public.productos VALUES (59, 'Bolsas de Basura', 12.00, 5485.00, 'Rollo de bolsas de basura de 30 litros', 3);
INSERT INTO public.productos VALUES (60, 'Almohadillas de Algodón', 9.00, 2185.00, 'Bolsa de almohadillas de algodón', 3);
INSERT INTO public.productos VALUES (79, 'Cuaderno', 8.00, 3285.00, 'Cuaderno de espiral con rayas', 4);
INSERT INTO public.productos VALUES (80, 'Marcadores', 7.00, 5485.00, 'Paquete de marcadores de colores', 4);
INSERT INTO public.productos VALUES (87, 'Tijeras de Papel', 6.00, 3285.00, 'Tijeras de papel con punta redonda', 5);
INSERT INTO public.productos VALUES (88, 'Reloj Despertador', 4.00, 15385.00, 'Reloj despertador analógico', 5);
INSERT INTO public.productos VALUES (89, 'Bolsa de Congelación', 10.00, 5485.00, 'Caja de bolsas de congelación de 1 litro', 5);
INSERT INTO public.productos VALUES (90, 'Set de Tazas', 5.00, 20885.00, 'Set de tazas de cerámica de 4 piezas', 5);
INSERT INTO public.productos VALUES (91, 'Caja de Té', 8.00, 8785.00, 'Caja de té surtido de 40 bolsitas', 5);
INSERT INTO public.productos VALUES (92, 'Maquinilla de Afeitar', 7.00, 4385.00, 'Maquinilla de afeitar desechable', 5);
INSERT INTO public.productos VALUES (93, 'Cepillo de Limpieza', 9.00, 6585.00, 'Cepillo de limpieza multiusos', 5);
INSERT INTO public.productos VALUES (94, 'Termómetro', 6.00, 32985.00, 'Termómetro digital de infrarrojos', 5);
INSERT INTO public.productos VALUES (95, 'Baterías Recargables', 5.00, 16485.00, 'Pack de baterías recargables AA', 5);
INSERT INTO public.productos VALUES (96, 'Pañuelos de Papel', 9.00, 2185.00, 'Caja de pañuelos de papel', 5);
INSERT INTO public.productos VALUES (97, 'Cargador de Coche', 6.00, 8785.00, 'Cargador de coche USB', 5);
INSERT INTO public.productos VALUES (98, 'Cenicero', 4.00, 5485.00, 'Cenicero de bolsillo portátil', 5);
INSERT INTO public.productos VALUES (16, 'Huevos', 8.00, 7900.60, 'Docena de huevos', 1);
INSERT INTO public.productos VALUES (17, 'Queso', 5.00, 9220.60, 'Cuña de queso cheddar', 1);
INSERT INTO public.productos VALUES (18, 'Tomate', 14.00, 1300.60, 'Tomate fresco', 1);
INSERT INTO public.productos VALUES (19, 'Cebolla', 10.00, 1036.60, 'Cebolla blanca', 1);


--
-- TOC entry 3443 (class 0 OID 232479)
-- Dependencies: 237
-- Data for Name: productos2; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.productos2 VALUES (21, 'Arroz', 9.00, 5480.00, 'Bolsa de arroz blanco', 2);
INSERT INTO public.productos2 VALUES (22, 'Sal', 15.00, 640.00, 'Sal de mesa', 2);
INSERT INTO public.productos2 VALUES (23, 'Azúcar', 12.00, 1080.00, 'Azúcar blanca', 2);
INSERT INTO public.productos2 VALUES (24, 'Aceite de Oliva', 4.00, 13180.00, 'Botella de aceite de oliva extra virgen', 2);
INSERT INTO public.productos2 VALUES (25, 'Vinagre', 8.00, 3280.00, 'Botella de vinagre de vino blanco', 2);
INSERT INTO public.productos2 VALUES (26, 'Sopa Instantánea', 6.00, 2180.00, 'Sobre de sopa instantánea de pollo', 2);
INSERT INTO public.productos2 VALUES (27, 'Fideos Instantáneos', 5.00, 3940.00, 'Taza de fideos instantáneos de huevo', 2);
INSERT INTO public.productos2 VALUES (28, 'Gel de Ducha', 10.00, 8780.00, 'Botella de gel de ducha refrescante', 2);
INSERT INTO public.productos2 VALUES (29, 'Cepillo de Dientes', 12.00, 4380.00, 'Cepillo de dientes de cerdas suaves', 2);
INSERT INTO public.productos2 VALUES (30, 'Pasta de Dientes', 9.00, 5480.00, 'Tubo de pasta de dientes con flúor', 2);
INSERT INTO public.productos2 VALUES (31, 'Papel Higiénico', 20.00, 2180.00, 'Rollo de papel higiénico de 2 capas', 2);
INSERT INTO public.productos2 VALUES (32, 'Toallas de Papel', 15.00, 3280.00, 'Paquete de toallas de papel absorbentes', 2);
INSERT INTO public.productos2 VALUES (33, 'Algodón', 18.00, 1740.00, 'Bolsa de bolas de algodón', 2);
INSERT INTO public.productos2 VALUES (42, 'Linterna', 4.00, 10980.00, 'Linterna LED de bolsillo', 3);
INSERT INTO public.productos2 VALUES (43, 'Encendedor', 10.00, 1080.00, 'Encendedor desechable', 3);
INSERT INTO public.productos2 VALUES (44, 'Gafas de Sol', 7.00, 8780.00, 'Gafas de sol con protección UV', 3);
INSERT INTO public.productos2 VALUES (45, 'Auriculares', 5.00, 28580.00, 'Auriculares inalámbricos Bluetooth', 3);
INSERT INTO public.productos2 VALUES (46, 'Libreta', 8.00, 6580.00, 'Libreta de notas con tapa dura', 3);
INSERT INTO public.productos2 VALUES (47, 'Plumas', 10.00, 4380.00, 'Paquete de plumas de tinta negra', 3);
INSERT INTO public.productos2 VALUES (15, 'Jugo de Naranja', 6.00, 6047.60, 'Botella de jugo de naranja natural', 1);
INSERT INTO public.productos2 VALUES (20, 'Pasta', 7.00, 5255.60, 'Paquete de pasta de trigo', 1);
INSERT INTO public.productos2 VALUES (6, 'Cerveza', 15.00, 4727.60, 'Lata de cerveza lager', 1);
INSERT INTO public.productos2 VALUES (1, 'Galletas', 10.00, 7895.60, 'Paquete de galletas de chocolate', 1);
INSERT INTO public.productos2 VALUES (2, 'Coca-Cola', 5.00, 5255.60, 'Refresco de cola de 2 litros', 1);
INSERT INTO public.productos2 VALUES (3, 'Papas Fritas', 8.00, 3935.60, 'Bolsa de papas fritas sabor original', 1);
INSERT INTO public.productos2 VALUES (4, 'Chocolate', 12.00, 2615.60, 'Barra de chocolate con leche', 1);
INSERT INTO public.productos2 VALUES (5, 'Agua Mineral', 20.00, 2087.60, 'Botella de agua mineral de 500 ml', 1);
INSERT INTO public.productos2 VALUES (7, 'Chicles', 30.00, 2615.60, 'Paquete de chicles sabor menta', 1);
INSERT INTO public.productos2 VALUES (8, 'Pan de Molde', 6.00, 6575.60, 'Pan de molde integral', 1);
INSERT INTO public.productos2 VALUES (9, 'Yogur', 4.00, 3407.60, 'Yogur natural sin azúcar', 1);
INSERT INTO public.productos2 VALUES (10, 'Helado', 3.00, 10535.60, 'Tarro de helado de vainilla', 1);
INSERT INTO public.productos2 VALUES (11, 'Café', 7.00, 11855.60, 'Café molido tostado', 1);
INSERT INTO public.productos2 VALUES (12, 'Leche', 9.00, 3143.60, 'Botella de leche semidesnatada', 1);
INSERT INTO public.productos2 VALUES (13, 'Gaseosa', 11.00, 2615.60, 'Botella de gaseosa de naranja', 1);
INSERT INTO public.productos2 VALUES (14, 'Mantequilla', 2.00, 7367.60, 'Barra de mantequilla', 1);
INSERT INTO public.productos2 VALUES (34, 'Jabón de Manos', 7.00, 6580.00, 'Botella de jabón líquido para manos', 2);
INSERT INTO public.productos2 VALUES (35, 'Cinta Adhesiva', 6.00, 4380.00, 'Rollo de cinta adhesiva transparente', 2);
INSERT INTO public.productos2 VALUES (36, 'Baterías', 10.00, 7680.00, 'Paquete de baterías alcalinas AA', 2);
INSERT INTO public.productos2 VALUES (37, 'Cable USB', 8.00, 6580.00, 'Cable USB de carga y sincronización', 2);
INSERT INTO public.productos2 VALUES (61, 'Juego de Destornilladores', 7.00, 9880.00, 'Juego de destornilladores Phillips y planos', 4);
INSERT INTO public.productos2 VALUES (62, 'Candado', 6.00, 8780.00, 'Candado de combinación de 4 dígitos', 4);
INSERT INTO public.productos2 VALUES (63, 'Cargador de Teléfono', 8.00, 12080.00, 'Cargador de pared USB', 4);
INSERT INTO public.productos2 VALUES (64, 'Lápiz', 10.00, 1080.00, 'Lápiz de grafito número 2', 4);
INSERT INTO public.productos2 VALUES (65, 'Sacapuntas', 5.00, 1740.00, 'Sacapuntas con depósito', 4);
INSERT INTO public.productos2 VALUES (66, 'Mochila', 4.00, 35180.00, 'Mochila resistente al agua', 4);
INSERT INTO public.productos2 VALUES (67, 'Caja de Herramientas', 6.00, 21980.00, 'Caja de herramientas de plástico', 4);
INSERT INTO public.productos2 VALUES (68, 'Destapacaños', 7.00, 6580.00, 'Destapacaños de goma', 4);
INSERT INTO public.productos2 VALUES (69, 'Juego de Llaves Allen', 5.00, 15380.00, 'Juego de llaves allen de 9 piezas', 4);
INSERT INTO public.productos2 VALUES (70, 'Gorra', 8.00, 10980.00, 'Gorra de béisbol ajustable', 4);
INSERT INTO public.productos2 VALUES (71, 'Bolígrafo', 12.00, 2180.00, 'Bolígrafo retráctil de tinta azul', 4);
INSERT INTO public.productos2 VALUES (72, 'Agenda Electrónica', 3.00, 43980.00, 'Agenda electrónica con pantalla táctil', 4);
INSERT INTO public.productos2 VALUES (73, 'Juego de Vasos', 9.00, 18680.00, 'Juego de vasos de vidrio de 6 piezas', 4);
INSERT INTO public.productos2 VALUES (74, 'Cuchillo de Cocina', 6.00, 17580.00, 'Cuchillo de cocina de acero inoxidable', 4);
INSERT INTO public.productos2 VALUES (75, 'Set de Organización', 4.00, 28580.00, 'Set de organización para escritorio', 4);
INSERT INTO public.productos2 VALUES (76, 'Botiquín de Primeros Auxilios', 5.00, 32980.00, 'Botiquín de primeros auxilios básico', 4);
INSERT INTO public.productos2 VALUES (77, 'Goma de Borrar', 10.00, 1080.00, 'Goma de borrar blanca de borrado suave', 4);
INSERT INTO public.productos2 VALUES (78, 'Cubiertos Desechables', 12.00, 4380.00, 'Paquete de cubiertos desechables', 4);
INSERT INTO public.productos2 VALUES (41, 'Cinta Métrica', 6.00, 1740.00, 'Cinta métrica de 2 metros', 3);
INSERT INTO public.productos2 VALUES (48, 'Calculadora', 6.00, 7680.00, 'Calculadora de bolsillo', 3);
INSERT INTO public.productos2 VALUES (49, 'Lápices de Colores', 9.00, 2180.00, 'Caja de lápices de colores', 3);
INSERT INTO public.productos2 VALUES (50, 'Regla', 12.00, 1740.00, 'Regla de plástico transparente de 30 cm', 3);
INSERT INTO public.productos2 VALUES (51, 'Carpeta de Archivos', 7.00, 5480.00, 'Carpeta de archivos de cartón', 3);
INSERT INTO public.productos2 VALUES (52, 'Agenda', 5.00, 10980.00, 'Agenda semanal con tapa de cuero', 3);
INSERT INTO public.productos2 VALUES (53, 'Tijeras', 9.00, 3280.00, 'Tijeras de acero inoxidable', 3);
INSERT INTO public.productos2 VALUES (54, 'Cinta Adhesiva', 6.00, 2180.00, 'Rollo de cinta adhesiva decorativa', 3);
INSERT INTO public.productos2 VALUES (55, 'Caja de Almacenamiento', 8.00, 8780.00, 'Caja de almacenamiento de plástico', 3);
INSERT INTO public.productos2 VALUES (56, 'Pegamento', 4.00, 4380.00, 'Tubo de pegamento multiusos', 3);
INSERT INTO public.productos2 VALUES (57, 'Lámpara de Escritorio', 5.00, 21980.00, 'Lámpara de escritorio LED', 3);
INSERT INTO public.productos2 VALUES (58, 'Papel de Envolver', 10.00, 1740.00, 'Rollo de papel de envolver regalos', 3);
INSERT INTO public.productos2 VALUES (81, 'Cargador de Pilas', 6.00, 13180.00, 'Cargador de pilas AA y AAA', 5);
INSERT INTO public.productos2 VALUES (82, 'Sartén', 5.00, 26380.00, 'Sartén antiadherente de 10 pulgadas', 5);
INSERT INTO public.productos2 VALUES (83, 'Cepillo para el Cabello', 9.00, 7680.00, 'Cepillo para el cabello de cerdas naturales', 5);
INSERT INTO public.productos2 VALUES (84, 'Libro', 7.00, 17580.00, 'Libro de ficción bestseller', 5);
INSERT INTO public.productos2 VALUES (85, 'Lápices de Grafito', 10.00, 3280.00, 'Juego de lápices de grafito HB', 5);
INSERT INTO public.productos2 VALUES (86, 'Portaminas', 8.00, 6580.00, 'Portaminas con recarga de 0.7 mm', 5);
INSERT INTO public.productos2 VALUES (38, 'Pilas', 12.00, 3940.00, 'Paquete de pilas alcalinas AAA', 2);
INSERT INTO public.productos2 VALUES (39, 'Papel Aluminio', 9.00, 3280.00, 'Rollo de papel aluminio resistente', 2);
INSERT INTO public.productos2 VALUES (40, 'Guantes de Látex', 15.00, 2180.00, 'Par de guantes desechables de látex', 2);
INSERT INTO public.productos2 VALUES (59, 'Bolsas de Basura', 12.00, 5480.00, 'Rollo de bolsas de basura de 30 litros', 3);
INSERT INTO public.productos2 VALUES (60, 'Almohadillas de Algodón', 9.00, 2180.00, 'Bolsa de almohadillas de algodón', 3);
INSERT INTO public.productos2 VALUES (79, 'Cuaderno', 8.00, 3280.00, 'Cuaderno de espiral con rayas', 4);
INSERT INTO public.productos2 VALUES (80, 'Marcadores', 7.00, 5480.00, 'Paquete de marcadores de colores', 4);
INSERT INTO public.productos2 VALUES (87, 'Tijeras de Papel', 6.00, 3280.00, 'Tijeras de papel con punta redonda', 5);
INSERT INTO public.productos2 VALUES (88, 'Reloj Despertador', 4.00, 15380.00, 'Reloj despertador analógico', 5);
INSERT INTO public.productos2 VALUES (89, 'Bolsa de Congelación', 10.00, 5480.00, 'Caja de bolsas de congelación de 1 litro', 5);
INSERT INTO public.productos2 VALUES (90, 'Set de Tazas', 5.00, 20880.00, 'Set de tazas de cerámica de 4 piezas', 5);
INSERT INTO public.productos2 VALUES (91, 'Caja de Té', 8.00, 8780.00, 'Caja de té surtido de 40 bolsitas', 5);
INSERT INTO public.productos2 VALUES (92, 'Maquinilla de Afeitar', 7.00, 4380.00, 'Maquinilla de afeitar desechable', 5);
INSERT INTO public.productos2 VALUES (93, 'Cepillo de Limpieza', 9.00, 6580.00, 'Cepillo de limpieza multiusos', 5);
INSERT INTO public.productos2 VALUES (94, 'Termómetro', 6.00, 32980.00, 'Termómetro digital de infrarrojos', 5);
INSERT INTO public.productos2 VALUES (95, 'Baterías Recargables', 5.00, 16480.00, 'Pack de baterías recargables AA', 5);
INSERT INTO public.productos2 VALUES (96, 'Pañuelos de Papel', 9.00, 2180.00, 'Caja de pañuelos de papel', 5);
INSERT INTO public.productos2 VALUES (97, 'Cargador de Coche', 6.00, 8780.00, 'Cargador de coche USB', 5);
INSERT INTO public.productos2 VALUES (98, 'Cenicero', 4.00, 5480.00, 'Cenicero de bolsillo portátil', 5);
INSERT INTO public.productos2 VALUES (16, 'Huevos', 8.00, 7895.60, 'Docena de huevos', 1);
INSERT INTO public.productos2 VALUES (17, 'Queso', 5.00, 9215.60, 'Cuña de queso cheddar', 1);
INSERT INTO public.productos2 VALUES (18, 'Tomate', 14.00, 1295.60, 'Tomate fresco', 1);
INSERT INTO public.productos2 VALUES (19, 'Cebolla', 10.00, 1031.60, 'Cebolla blanca', 1);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 215
-- Name: barrios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barrios_id_seq', 20, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 230
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_seq', 5, true);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 217
-- Name: ciudades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudades_id_seq', 1, false);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 250, true);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 221
-- Name: departamentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_id_seq', 1, false);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 223
-- Name: facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facturas_id_seq', 1001, true);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 225
-- Name: facturas_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facturas_item_id_seq', 2940, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 227
-- Name: paises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paises_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 229
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 98, true);


--
-- TOC entry 3252 (class 2606 OID 232363)
-- Name: barrios barrios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barrios
    ADD CONSTRAINT barrios_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 232420)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 232365)
-- Name: ciudades ciudades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 232367)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 232369)
-- Name: departamentos departamentos_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_codigo_key UNIQUE (codigo);


--
-- TOC entry 3260 (class 2606 OID 232371)
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 232373)
-- Name: facturas_item facturas_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas_item
    ADD CONSTRAINT facturas_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 232375)
-- Name: facturas facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 232377)
-- Name: paises paises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 232379)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 232380)
-- Name: clientes clientes_ciudad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_ciudad_id_fkey FOREIGN KEY (ciudad_id) REFERENCES public.ciudades(id);


--
-- TOC entry 3272 (class 2606 OID 232385)
-- Name: departamentos departamentos_paises_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_paises_id_fkey FOREIGN KEY (paises_id) REFERENCES public.paises(id);


--
-- TOC entry 3273 (class 2606 OID 232390)
-- Name: facturas facturas_cliente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(id) NOT VALID;


--
-- TOC entry 3274 (class 2606 OID 232395)
-- Name: facturas_item facturas_item_factura_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas_item
    ADD CONSTRAINT facturas_item_factura_id_fkey FOREIGN KEY (factura_id) REFERENCES public.facturas(id) NOT VALID;


--
-- TOC entry 3275 (class 2606 OID 232400)
-- Name: facturas_item facturas_item_producto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas_item
    ADD CONSTRAINT facturas_item_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.productos(id) NOT VALID;


--
-- TOC entry 3276 (class 2606 OID 232421)
-- Name: productos productos_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias(id);


--
-- TOC entry 3441 (class 0 OID 232465)
-- Dependencies: 235 3446
-- Name: ventas_por_fecha; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.ventas_por_fecha;


-- Completed on 2024-04-01 20:47:48

--
-- PostgreSQL database dump complete
--

