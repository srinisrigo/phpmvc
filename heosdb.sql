--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

-- Started on 2018-04-18 14:52:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "HEOSAPR17";
--
-- TOC entry 3561 (class 1262 OID 4517383)
-- Name: HEOSAPR17; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "HEOSAPR17" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';


ALTER DATABASE "HEOSAPR17" OWNER TO postgres;

\connect "HEOSAPR17"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 185 (class 1259 OID 4517748)
-- Name: 146eee176vimal71_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "146eee176vimal71_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "146eee176vimal71_seq" OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 4517750)
-- Name: 146eee176vimal71; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "146eee176vimal71" (
    recordid bigint DEFAULT nextval('"146eee176vimal71_seq"'::regclass) NOT NULL,
    studentid character varying(20) DEFAULT NULL::character varying,
    studentname character varying(75) DEFAULT NULL::character varying,
    test integer,
    total integer,
    status character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE "146eee176vimal71" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 4517759)
-- Name: agentmaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE agentmaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE agentmaster_seq OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 4517761)
-- Name: agentmaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE agentmaster (
    agentid bigint DEFAULT nextval('agentmaster_seq'::regclass) NOT NULL,
    agentcode character varying(5) DEFAULT ''::character varying NOT NULL,
    agentname character varying(50) DEFAULT NULL::character varying,
    agentcategory character varying(25) DEFAULT NULL::character varying,
    mainagentcode character varying(5) DEFAULT NULL::character varying,
    agentaddress character varying(250) DEFAULT ''::character varying NOT NULL,
    agentmailid character varying(50) DEFAULT NULL::character varying,
    agentphno character varying(50) DEFAULT NULL::character varying,
    agentmobileno character varying(50) DEFAULT NULL::character varying,
    agentfaxno character varying(50) DEFAULT NULL::character varying,
    agentcommission double precision,
    agentaccountno character varying(50) DEFAULT NULL::character varying,
    agentmodeofpayment character varying(50) DEFAULT ''::character varying NOT NULL,
    paymentdurationno integer DEFAULT 0 NOT NULL,
    paymentduration character varying(30) DEFAULT NULL::character varying
);


ALTER TABLE agentmaster OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 4517783)
-- Name: applicantdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE applicantdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE applicantdetails_seq OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 4517785)
-- Name: applicantdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE applicantdetails (
    recordid bigint DEFAULT nextval('applicantdetails_seq'::regclass) NOT NULL,
    title character varying(8) DEFAULT NULL::character varying,
    firstname character varying(30) DEFAULT NULL::character varying,
    middlename character varying(30) DEFAULT NULL::character varying,
    lastname character varying(30) DEFAULT NULL::character varying,
    intake character varying(15) DEFAULT NULL::character varying,
    levelofeducation character varying(10) DEFAULT NULL::character varying,
    experience smallint DEFAULT '0'::smallint NOT NULL,
    course character varying(50) DEFAULT ''::character varying NOT NULL,
    mailid character varying(80) DEFAULT ''::character varying NOT NULL,
    applicantid character varying(25) DEFAULT NULL::character varying,
    password character varying(20) DEFAULT NULL::character varying,
    countryresidence character varying(30) DEFAULT NULL::character varying,
    ipaddress character varying(15) DEFAULT NULL::character varying,
    address character varying(225) DEFAULT NULL::character varying,
    postcode character varying(8) DEFAULT NULL::character varying,
    citizenof character varying(8) DEFAULT NULL::character varying,
    phonenumber character varying(30) DEFAULT NULL::character varying,
    mobilenumber character varying(25) DEFAULT NULL::character varying,
    faxnumber character varying(30) DEFAULT NULL::character varying,
    dateofbirth date,
    passportnumber character varying(30) DEFAULT NULL::character varying,
    passportcopy character varying(30) DEFAULT NULL::character varying,
    photocopy character varying(30) DEFAULT NULL::character varying,
    course1 character varying(50) DEFAULT NULL::character varying,
    institute1 character varying(50) DEFAULT NULL::character varying,
    duration1 integer,
    grade1 character(2) DEFAULT NULL::bpchar,
    course2 character varying(50) DEFAULT NULL::character varying,
    institute2 character varying(50) DEFAULT NULL::character varying,
    duration2 integer,
    grade2 character(2) DEFAULT NULL::bpchar,
    employer1 character varying(50) DEFAULT NULL::character varying,
    designation1 character varying(45) DEFAULT NULL::character varying,
    startdate1 date,
    enddate1 date,
    employer2 character varying(50) DEFAULT NULL::character varying,
    designation2 character varying(45) DEFAULT NULL::character varying,
    startdate2 date,
    enddate2 date,
    refname1 character varying(50) DEFAULT NULL::character varying,
    refoccupation1 character varying(45) DEFAULT NULL::character varying,
    refinstitution1 character varying(50) DEFAULT NULL::character varying,
    refrelationship1 character varying(45) DEFAULT NULL::character varying,
    refphonenumber1 character varying(30) DEFAULT NULL::character varying,
    refemail1 character varying(80) DEFAULT NULL::character varying,
    refname2 character varying(50) DEFAULT NULL::character varying,
    refoccupation2 character varying(45) DEFAULT NULL::character varying,
    refinstitution2 character varying(50) DEFAULT NULL::character varying,
    refrelationship2 character varying(45) DEFAULT NULL::character varying,
    refphonenumber2 character varying(30) DEFAULT NULL::character varying,
    refemail2 character varying(80) DEFAULT NULL::character varying,
    status smallint,
    visa smallint,
    appfill smallint DEFAULT '0'::smallint
);


ALTER TABLE applicantdetails OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 4517839)
-- Name: arreardetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE arreardetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE arreardetails_seq OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 4517841)
-- Name: arreardetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE arreardetails (
    recordid integer DEFAULT nextval('arreardetails_seq'::regclass) NOT NULL,
    intake character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term integer,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    noofstudents integer,
    criteria character varying(50) DEFAULT NULL::character varying,
    examnameid integer,
    sectionid integer
);


ALTER TABLE arreardetails OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 4517851)
-- Name: assestmentdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE assestmentdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assestmentdetails_seq OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 4517853)
-- Name: assestmentdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE assestmentdetails (
    assestmenid integer DEFAULT nextval('assestmentdetails_seq'::regclass) NOT NULL,
    criteria character varying(50) DEFAULT NULL::character varying,
    assestmenttype character varying(50) DEFAULT NULL::character varying,
    marks integer DEFAULT 0 NOT NULL,
    defaultmark integer DEFAULT 0 NOT NULL
);


ALTER TABLE assestmentdetails OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 4517863)
-- Name: aug2008_level1_eee_1_eee601_sam_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level1_eee_1_eee601_sam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level1_eee_1_eee601_sam_seq OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 4517865)
-- Name: aug2008_level1_eee_1_eee601_sam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level1_eee_1_eee601_sam (
    recordid bigint DEFAULT nextval('aug2008_level1_eee_1_eee601_sam_seq'::regclass) NOT NULL,
    universityname character varying(50) DEFAULT NULL::character varying,
    studentid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    theory bigint,
    practical bigint,
    assignment bigint,
    total bigint,
    pass character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level1_eee_1_eee601_sam OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 4517875)
-- Name: aug2008_level1_eee_a_1_midterm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level1_eee_a_1_midterm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level1_eee_a_1_midterm_seq OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 4517877)
-- Name: aug2008_level1_eee_a_1_midterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level1_eee_a_1_midterm (
    examid bigint DEFAULT nextval('aug2008_level1_eee_a_1_midterm_seq'::regclass) NOT NULL,
    section character varying(5) DEFAULT NULL::character varying,
    termno character varying(50) DEFAULT NULL::character varying,
    nameoftheexam character varying(50) DEFAULT NULL::character varying,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    slotname character varying(50) DEFAULT NULL::character varying,
    arrear character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level1_eee_a_1_midterm OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 4517890)
-- Name: aug2008_level1_mech_2_eee503_assestment1_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level1_mech_2_eee503_assestment1_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level1_mech_2_eee503_assestment1_seq OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 4517892)
-- Name: aug2008_level1_mech_2_eee503_assestment1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level1_mech_2_eee503_assestment1 (
    recordid bigint DEFAULT nextval('aug2008_level1_mech_2_eee503_assestment1_seq'::regclass) NOT NULL,
    universityname character varying(50) DEFAULT NULL::character varying,
    studentid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    theory bigint,
    practical bigint,
    assignment bigint,
    total bigint,
    pass character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level1_mech_2_eee503_assestment1 OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 4517902)
-- Name: aug2008_level2_it_1_eee601_saas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level2_it_1_eee601_saas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level2_it_1_eee601_saas_seq OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 4517904)
-- Name: aug2008_level2_it_1_eee601_saas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level2_it_1_eee601_saas (
    recordid bigint DEFAULT nextval('aug2008_level2_it_1_eee601_saas_seq'::regclass) NOT NULL,
    universityname character varying(50) DEFAULT NULL::character varying,
    studentid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    theory bigint,
    practical bigint,
    assignment bigint,
    total bigint,
    pass character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level2_it_1_eee601_saas OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 4517914)
-- Name: aug2008_level2_it_2_mf331_sam_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level2_it_2_mf331_sam_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level2_it_2_mf331_sam_seq OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 4517916)
-- Name: aug2008_level2_it_2_mf331_sam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level2_it_2_mf331_sam (
    recordid bigint DEFAULT nextval('aug2008_level2_it_2_mf331_sam_seq'::regclass) NOT NULL,
    universityname character varying(50) DEFAULT NULL::character varying,
    studentid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    theory bigint,
    practical bigint,
    assignment bigint,
    total bigint,
    pass character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level2_it_2_mf331_sam OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 4517926)
-- Name: aug2008_level2_it_a_2_midterm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level2_it_a_2_midterm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level2_it_a_2_midterm_seq OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 4517928)
-- Name: aug2008_level2_it_a_2_midterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level2_it_a_2_midterm (
    examid bigint DEFAULT nextval('aug2008_level2_it_a_2_midterm_seq'::regclass) NOT NULL,
    section character varying(5) DEFAULT NULL::character varying,
    termno character varying(50) DEFAULT NULL::character varying,
    nameoftheexam character varying(50) DEFAULT NULL::character varying,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    slotname character varying(50) DEFAULT NULL::character varying,
    arrear character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level2_it_a_2_midterm OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 4517941)
-- Name: aug2008_level2_it_b_2_midterm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aug2008_level2_it_b_2_midterm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aug2008_level2_it_b_2_midterm_seq OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 4517943)
-- Name: aug2008_level2_it_b_2_midterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE aug2008_level2_it_b_2_midterm (
    examid bigint DEFAULT nextval('aug2008_level2_it_b_2_midterm_seq'::regclass) NOT NULL,
    section character varying(5) DEFAULT NULL::character varying,
    termno character varying(50) DEFAULT NULL::character varying,
    nameoftheexam character varying(50) DEFAULT NULL::character varying,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    slotname character varying(50) DEFAULT NULL::character varying,
    arrear character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE aug2008_level2_it_b_2_midterm OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 4517956)
-- Name: balance_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE balance_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE balance_seq OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 4517958)
-- Name: balance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE balance (
    recordid bigint DEFAULT nextval('balance_seq'::regclass) NOT NULL,
    accountnumber bigint DEFAULT '0'::bigint NOT NULL,
    accountname character varying(80) DEFAULT NULL::character varying,
    bankname character varying(100) DEFAULT NULL::character varying,
    branchname character varying(50) DEFAULT NULL::character varying,
    total double precision,
    balance double precision DEFAULT '0'::double precision NOT NULL,
    curdate date,
    lastbalance double precision DEFAULT '0'::double precision NOT NULL,
    lastdate date,
    tablename character varying(80) DEFAULT NULL::character varying
);


ALTER TABLE balance OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 4517971)
-- Name: bankdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bankdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bankdetails_seq OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 4517973)
-- Name: bankdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bankdetails (
    recordid bigint DEFAULT nextval('bankdetails_seq'::regclass) NOT NULL,
    accountnumber bigint,
    accountname character varying(75) DEFAULT NULL::character varying,
    balance double precision,
    bankname character varying(80) DEFAULT NULL::character varying,
    branchname character varying(80) DEFAULT NULL::character varying,
    sortcode character varying(20) DEFAULT NULL::character varying,
    branchaddress character varying(250) DEFAULT ''::character varying NOT NULL,
    opendate date,
    contactperson character varying(80) DEFAULT NULL::character varying,
    phonenumber character varying(50) DEFAULT NULL::character varying,
    faxnumber character varying(50) DEFAULT NULL::character varying,
    website character varying(80) DEFAULT NULL::character varying,
    balancedate date
);


ALTER TABLE bankdetails OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 4517991)
-- Name: billdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE billdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE billdetails_seq OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 4517993)
-- Name: billdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE billdetails (
    recordid bigint DEFAULT nextval('billdetails_seq'::regclass) NOT NULL,
    invoicenumber character varying(50) DEFAULT NULL::character varying,
    quantity1 integer,
    particular1 character varying(150) DEFAULT NULL::character varying,
    price1 double precision,
    amount1 double precision,
    quantity2 integer,
    particular2 character varying(150) DEFAULT NULL::character varying,
    price2 double precision,
    amount2 double precision,
    quantity3 integer,
    particular3 character varying(150) DEFAULT NULL::character varying,
    price3 double precision,
    amount3 double precision,
    quantity4 integer,
    particular4 character varying(150) DEFAULT NULL::character varying,
    price4 double precision,
    amount4 double precision,
    quantity5 integer,
    particular5 character varying(150) DEFAULT NULL::character varying,
    price5 double precision,
    amount5 double precision,
    quantity6 integer,
    particular6 character varying(150) DEFAULT NULL::character varying,
    price6 double precision,
    amount6 double precision,
    quantity7 integer,
    particular7 character varying(150) DEFAULT NULL::character varying,
    price7 double precision,
    amount7 double precision,
    quantity8 integer,
    particular8 character varying(150) DEFAULT NULL::character varying,
    price8 double precision,
    amount8 double precision,
    quantity9 integer,
    particular9 character varying(150) DEFAULT NULL::character varying,
    price9 double precision,
    amount9 double precision,
    quantity10 integer,
    particular10 character varying(150) DEFAULT NULL::character varying,
    price10 double precision,
    amount10 double precision,
    quantity11 integer,
    particular11 character varying(150) DEFAULT NULL::character varying,
    price11 double precision,
    amount11 double precision,
    quantity12 integer,
    particular12 character varying(150) DEFAULT NULL::character varying,
    price12 double precision,
    amount12 double precision,
    quantity13 integer,
    particular13 character varying(150) DEFAULT NULL::character varying,
    price13 double precision,
    amount13 double precision,
    quantity14 integer,
    particular14 character varying(150) DEFAULT NULL::character varying,
    price14 double precision,
    amount14 double precision,
    quantity15 integer,
    particular15 character varying(150) DEFAULT NULL::character varying,
    price15 double precision,
    amount15 double precision,
    quantity16 integer,
    particular16 character varying(150) DEFAULT NULL::character varying,
    price16 double precision,
    amount16 double precision,
    quantity17 integer,
    particular17 character varying(150) DEFAULT NULL::character varying,
    price17 double precision,
    amount17 double precision,
    quantity18 integer,
    particular18 character varying(150) DEFAULT NULL::character varying,
    price18 double precision,
    amount18 double precision,
    quantity19 integer,
    particular19 character varying(150) DEFAULT NULL::character varying,
    price19 double precision,
    amount19 double precision,
    quantity20 integer,
    particular20 character varying(150) DEFAULT NULL::character varying,
    price20 double precision,
    amount20 double precision,
    others double precision,
    taxamount double precision,
    total double precision
);


ALTER TABLE billdetails OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 4518023)
-- Name: bookissue_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bookissue_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookissue_seq OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 4518025)
-- Name: bookissue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bookissue (
    issueid bigint DEFAULT nextval('bookissue_seq'::regclass) NOT NULL,
    userid character varying(50) DEFAULT NULL::character varying,
    bookcode character varying(50) DEFAULT NULL::character varying,
    dateofissue date,
    dateofexpiry date
);


ALTER TABLE bookissue OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 4518033)
-- Name: bookmaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bookmaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bookmaster_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 4518035)
-- Name: bookmaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bookmaster (
    bookno bigint DEFAULT nextval('bookmaster_seq'::regclass) NOT NULL,
    bookcode character varying(50) DEFAULT NULL::character varying,
    title character varying(100) DEFAULT ''::character varying NOT NULL,
    author character varying(150) DEFAULT ''::character varying NOT NULL,
    publicationid integer DEFAULT 0 NOT NULL,
    isbnno bigint,
    noofcopy bigint,
    price double precision,
    racknoid integer DEFAULT 0 NOT NULL,
    checkcd integer DEFAULT 0 NOT NULL,
    referencebook integer DEFAULT 0 NOT NULL
);


ALTER TABLE bookmaster OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 4518048)
-- Name: cohortdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cohortdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cohortdetails_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 4518050)
-- Name: cohortdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cohortdetails (
    cohortid bigint DEFAULT nextval('cohortdetails_seq'::regclass) NOT NULL,
    intake character varying(100) DEFAULT '0'::character varying NOT NULL,
    startdate date,
    extensiondate1 date,
    extensiondate2 date
);


ALTER TABLE cohortdetails OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 4518057)
-- Name: collegedetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE collegedetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE collegedetails_seq OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 4518059)
-- Name: collegedetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE collegedetails (
    collegeid bigint DEFAULT nextval('collegedetails_seq'::regclass) NOT NULL,
    collegename character varying(100) DEFAULT ''::character varying NOT NULL,
    collegelogo text,
    templatedesign text,
    letterheaddimensions text NOT NULL,
    location character varying(200) DEFAULT NULL::character varying,
    address character varying(200) DEFAULT NULL::character varying,
    countryid integer,
    faxno numeric(20,0) DEFAULT NULL::numeric,
    phoneno character varying(20) DEFAULT '0'::character varying NOT NULL,
    email character varying(100) DEFAULT ''::character varying NOT NULL,
    website character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE collegedetails OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 4518075)
-- Name: countdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countdetails (
    intake character varying(40) DEFAULT ''::character varying NOT NULL,
    application integer DEFAULT 0,
    student integer DEFAULT 0,
    staff integer DEFAULT 0 NOT NULL
);


ALTER TABLE countdetails OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 4518082)
-- Name: countrydepositdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE countrydepositdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE countrydepositdetails_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 4518084)
-- Name: countrydepositdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countrydepositdetails (
    countrydepositdetailsid integer DEFAULT nextval('countrydepositdetails_seq'::regclass) NOT NULL,
    countryid integer DEFAULT 0 NOT NULL,
    courseid integer DEFAULT 0 NOT NULL,
    deposit double precision,
    fees double precision
);


ALTER TABLE countrydepositdetails OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 4518092)
-- Name: countrydetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE countrydetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE countrydetails_seq OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 4518094)
-- Name: countrydetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE countrydetails (
    countryid bigint DEFAULT nextval('countrydetails_seq'::regclass) NOT NULL,
    countrycode character varying(5) DEFAULT ''::character varying NOT NULL,
    countryname character varying(50) DEFAULT NULL::character varying,
    nationality character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE countrydetails OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 4518103)
-- Name: coursedetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE coursedetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE coursedetails_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 4518105)
-- Name: coursedetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE coursedetails (
    courseid bigint DEFAULT nextval('coursedetails_seq'::regclass) NOT NULL,
    coursecode character varying(10) DEFAULT ''::character varying NOT NULL,
    coursename character varying(50) DEFAULT NULL::character varying,
    courseduration character varying(10) DEFAULT '0'::character varying NOT NULL,
    modeofcourse character varying(50) DEFAULT '0'::character varying NOT NULL,
    universityid integer DEFAULT 0 NOT NULL,
    markschemeid integer DEFAULT 0 NOT NULL,
    scholarship character varying(50) DEFAULT NULL::character varying,
    defaultdeposit double precision,
    defaultfees double precision,
    noofsubjects integer,
    levelofthecourse character varying(50) DEFAULT NULL::character varying,
    maximuminstalments integer,
    noofterms integer DEFAULT 0 NOT NULL,
    experience smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE coursedetails OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 4518122)
-- Name: customerdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customerdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customerdetails_seq OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 4518124)
-- Name: customerdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customerdetails (
    recordid bigint DEFAULT nextval('customerdetails_seq'::regclass) NOT NULL,
    customerid character varying(50) DEFAULT ''::character varying NOT NULL,
    customername character varying(50) DEFAULT NULL::character varying,
    customeraddress character varying(160) DEFAULT NULL::character varying,
    contactperson character varying(50) DEFAULT NULL::character varying,
    phonenumber character varying(50) DEFAULT NULL::character varying,
    faxnumber character varying(50) DEFAULT NULL::character varying,
    emailid character varying(50) DEFAULT NULL::character varying,
    accountnumber character varying(50) DEFAULT NULL::character varying,
    bankname character varying(50) DEFAULT NULL::character varying,
    branchname character varying(50) DEFAULT NULL::character varying,
    productdetails character varying(250) DEFAULT NULL::character varying
);


ALTER TABLE customerdetails OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 4518144)
-- Name: deposit_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE deposit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE deposit_seq OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 4518146)
-- Name: deposit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE deposit (
    recordid bigint DEFAULT nextval('deposit_seq'::regclass) NOT NULL,
    depositamount double precision,
    depositaccount integer,
    depositby character varying(100) DEFAULT NULL::character varying,
    reference character varying(150) DEFAULT NULL::character varying,
    mode character varying(40) DEFAULT NULL::character varying,
    number integer,
    dddate date,
    bankname character varying(50) DEFAULT NULL::character varying,
    branch character varying(50) DEFAULT NULL::character varying,
    ddto character varying(150) DEFAULT NULL::character varying
);


ALTER TABLE deposit OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 4518161)
-- Name: embassyaddress_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE embassyaddress_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE embassyaddress_seq OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 4518163)
-- Name: embassyaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE embassyaddress (
    embassyaddressid integer DEFAULT nextval('embassyaddress_seq'::regclass) NOT NULL,
    countryid integer,
    embassycode character varying(30) DEFAULT ''::character varying NOT NULL,
    address character varying(250) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE embassyaddress OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 4518171)
-- Name: examnames_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE examnames_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE examnames_seq OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 4518173)
-- Name: examnames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE examnames (
    examname character varying(30) DEFAULT NULL::character varying,
    examnameid integer DEFAULT nextval('examnames_seq'::regclass) NOT NULL
);


ALTER TABLE examnames OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 4518180)
-- Name: examttslot_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE examttslot_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE examttslot_seq OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 4518182)
-- Name: examttslot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE examttslot (
    slotid integer DEFAULT nextval('examttslot_seq'::regclass) NOT NULL,
    examnameid integer DEFAULT 0 NOT NULL,
    slotname character varying(50) DEFAULT NULL::character varying,
    fromtime character varying(20) DEFAULT NULL::character varying,
    totime character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE examttslot OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 4518192)
-- Name: feb2009_level1_eee_1_eee601_vimal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE feb2009_level1_eee_1_eee601_vimal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE feb2009_level1_eee_1_eee601_vimal_seq OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 4518194)
-- Name: feb2009_level1_eee_1_eee601_vimal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE feb2009_level1_eee_1_eee601_vimal (
    recordid bigint DEFAULT nextval('feb2009_level1_eee_1_eee601_vimal_seq'::regclass) NOT NULL,
    universityname character varying(50) DEFAULT NULL::character varying,
    studentid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    theory bigint,
    practical bigint,
    assignment bigint,
    total bigint,
    pass character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE feb2009_level1_eee_1_eee601_vimal OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 4518204)
-- Name: feb2009_level1_eee_a_3_midterm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE feb2009_level1_eee_a_3_midterm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE feb2009_level1_eee_a_3_midterm_seq OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 4518206)
-- Name: feb2009_level1_eee_a_3_midterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE feb2009_level1_eee_a_3_midterm (
    examid bigint DEFAULT nextval('feb2009_level1_eee_a_3_midterm_seq'::regclass) NOT NULL,
    section character varying(5) DEFAULT NULL::character varying,
    termno character varying(50) DEFAULT NULL::character varying,
    nameoftheexam character varying(50) DEFAULT NULL::character varying,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    slotname character varying(50) DEFAULT NULL::character varying,
    arrear character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE feb2009_level1_eee_a_3_midterm OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 4518219)
-- Name: firstyear_be_aug2008_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE firstyear_be_aug2008_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE firstyear_be_aug2008_a_seq OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 4518221)
-- Name: firstyear_be_aug2008_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE firstyear_be_aug2008_a (
    timetableid bigint DEFAULT nextval('firstyear_be_aug2008_a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE firstyear_be_aug2008_a OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 4518236)
-- Name: firstyear_sci14_aug2008_b_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE firstyear_sci14_aug2008_b_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE firstyear_sci14_aug2008_b_seq OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 4518238)
-- Name: firstyear_sci14_aug2008_b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE firstyear_sci14_aug2008_b (
    timetableid bigint DEFAULT nextval('firstyear_sci14_aug2008_b_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE firstyear_sci14_aug2008_b OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 4518253)
-- Name: firstyearsci14aug2008b_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE firstyearsci14aug2008b_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE firstyearsci14aug2008b_seq OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 4518255)
-- Name: firstyearsci14aug2008b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE firstyearsci14aug2008b (
    timetableid bigint DEFAULT nextval('firstyearsci14aug2008b_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE firstyearsci14aug2008b OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 4518270)
-- Name: icici101_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE icici101_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE icici101_seq OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 4518272)
-- Name: icici101; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE icici101 (
    recordid bigint DEFAULT nextval('icici101_seq'::regclass) NOT NULL,
    crdr character varying(50) DEFAULT NULL::character varying,
    remarks character varying(200) DEFAULT NULL::character varying,
    currentdate date,
    amount double precision,
    balance double precision,
    CONSTRAINT icici101_recordid_check CHECK ((recordid > 0))
);


ALTER TABLE icici101 OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 4518281)
-- Name: icici_pro6022_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE icici_pro6022_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE icici_pro6022_seq OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 4518283)
-- Name: icici_pro6022; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE icici_pro6022 (
    recordid bigint DEFAULT nextval('icici_pro6022_seq'::regclass) NOT NULL,
    crdr character varying(50) DEFAULT NULL::character varying,
    remarks character varying(200) DEFAULT NULL::character varying,
    currentdate date,
    amount double precision,
    balance double precision,
    CONSTRAINT icici_pro6022_recordid_check CHECK ((recordid > 0))
);


ALTER TABLE icici_pro6022 OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 4518292)
-- Name: infrastructuredetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE infrastructuredetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE infrastructuredetails_seq OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 4518294)
-- Name: infrastructuredetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE infrastructuredetails (
    halliid bigint DEFAULT nextval('infrastructuredetails_seq'::regclass) NOT NULL,
    hallname character varying(50) DEFAULT NULL::character varying,
    hallcapacity integer,
    computerfacility integer
);


ALTER TABLE infrastructuredetails OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 4518301)
-- Name: karthik_be_may2008_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE karthik_be_may2008_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE karthik_be_may2008_a_seq OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 4518303)
-- Name: karthik_be_may2008_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE karthik_be_may2008_a (
    timetableid bigint DEFAULT nextval('karthik_be_may2008_a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE karthik_be_may2008_a OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 4518318)
-- Name: khus_sci14_aug2008_b_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE khus_sci14_aug2008_b_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE khus_sci14_aug2008_b_seq OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 4518320)
-- Name: khus_sci14_aug2008_b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE khus_sci14_aug2008_b (
    timetableid bigint DEFAULT nextval('khus_sci14_aug2008_b_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE khus_sci14_aug2008_b OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 4518335)
-- Name: leavemaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE leavemaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE leavemaster_seq OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 4518337)
-- Name: leavemaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE leavemaster (
    leaveid bigint DEFAULT nextval('leavemaster_seq'::regclass) NOT NULL,
    typeofleave character varying(50) DEFAULT NULL::character varying,
    intake character varying(50) DEFAULT NULL::character varying,
    course character varying(50) DEFAULT NULL::character varying,
    section character(1) DEFAULT NULL::bpchar,
    date1 date,
    date2 date,
    slot smallint,
    leavereason character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE leavemaster OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 4518348)
-- Name: markschemedetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE markschemedetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE markschemedetails_seq OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 4518350)
-- Name: markschemedetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE markschemedetails (
    markschemeid integer DEFAULT nextval('markschemedetails_seq'::regclass) NOT NULL,
    markschemename character varying(50) DEFAULT NULL::character varying,
    markschemecycleno bigint,
    upperlimit1 double precision,
    symbol1 character varying(30) DEFAULT NULL::character varying,
    lowerlimit1 double precision,
    grade1 character varying(5) DEFAULT NULL::character varying,
    upperlimit2 double precision,
    symbol2 character varying(30) DEFAULT NULL::character varying,
    lowerlimit2 double precision,
    grade2 character varying(5) DEFAULT NULL::character varying,
    upperlimit3 double precision,
    symbol3 character varying(30) DEFAULT NULL::character varying,
    lowerlimit3 double precision,
    grade3 character varying(5) DEFAULT NULL::character varying,
    upperlimit4 double precision,
    symbol4 character varying(30) DEFAULT NULL::character varying,
    lowerlimit4 double precision,
    grade4 character varying(5) DEFAULT NULL::character varying,
    upperlimit5 double precision,
    symbol5 character varying(30) DEFAULT NULL::character varying,
    lowerlimit5 double precision,
    grade5 character varying(5) DEFAULT NULL::character varying,
    upperlimit6 double precision,
    symbol6 character varying(30) DEFAULT NULL::character varying,
    lowerlimit6 double precision,
    grade6 character varying(5) DEFAULT NULL::character varying,
    upperlimit7 double precision,
    symbol7 character varying(30) DEFAULT NULL::character varying,
    lowerlimit7 double precision,
    grade7 character varying(5) DEFAULT NULL::character varying,
    upperlimit8 double precision,
    symbol8 character varying(30) DEFAULT NULL::character varying,
    lowerlimit8 double precision,
    grade8 character varying(5) DEFAULT NULL::character varying,
    upperlimit9 double precision,
    symbol9 character varying(30) DEFAULT NULL::character varying,
    lowerlimit9 double precision,
    grade9 character varying(5) DEFAULT NULL::character varying,
    upperlimit10 double precision,
    symbol10 character varying(30) DEFAULT NULL::character varying,
    lowerlimit10 double precision,
    grade10 character varying(5) DEFAULT NULL::character varying,
    upperlimit11 double precision,
    symbol11 character varying(30) DEFAULT NULL::character varying,
    lowerlimit11 double precision,
    grade11 character varying(5) DEFAULT NULL::character varying,
    upperlimit12 double precision,
    symbol12 character varying(30) DEFAULT NULL::character varying,
    lowerlimit12 double precision,
    grade12 character varying(5) DEFAULT NULL::character varying,
    upperlimit13 double precision,
    symbol13 character varying(30) DEFAULT NULL::character varying,
    lowerlimit13 double precision,
    grade13 character varying(5) DEFAULT NULL::character varying,
    upperlimit14 double precision,
    symbol14 character varying(30) DEFAULT NULL::character varying,
    lowerlimit14 double precision,
    grade14 character varying(5) DEFAULT NULL::character varying,
    upperlimit15 double precision,
    symbol15 character varying(30) DEFAULT NULL::character varying,
    lowerlimit15 double precision,
    grade15 character varying(5) DEFAULT NULL::character varying,
    upperlimit16 double precision,
    symbol16 character varying(30) DEFAULT NULL::character varying,
    lowerlimit16 double precision,
    grade16 character varying(5) DEFAULT NULL::character varying,
    upperlimit17 double precision,
    symbol17 character varying(30) DEFAULT NULL::character varying,
    lowerlimit17 double precision,
    grade17 character varying(5) DEFAULT NULL::character varying,
    upperlimit18 double precision,
    symbol18 character varying(30) DEFAULT NULL::character varying,
    lowerlimit18 double precision,
    grade18 character varying(5) DEFAULT NULL::character varying,
    upperlimit19 double precision,
    symbol19 character varying(30) DEFAULT NULL::character varying,
    lowerlimit19 double precision,
    grade19 character varying(5) DEFAULT NULL::character varying,
    upperlimit20 double precision,
    symbol20 character varying(30) DEFAULT NULL::character varying,
    lowerlimit20 double precision,
    grade20 character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE markschemedetails OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 4518400)
-- Name: menumaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menumaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE menumaster_seq OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 4518402)
-- Name: menumaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE menumaster (
    menuid integer DEFAULT nextval('menumaster_seq'::regclass) NOT NULL,
    menuname character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE menumaster OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 4518409)
-- Name: menurights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE menurights (
    userid integer,
    usertype character varying(50) DEFAULT NULL::character varying,
    menuid integer
);


ALTER TABLE menurights OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 4518413)
-- Name: omkar_be_may2009_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE omkar_be_may2009_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE omkar_be_may2009_a_seq OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 4518415)
-- Name: omkar_be_may2009_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE omkar_be_may2009_a (
    timetableid bigint DEFAULT nextval('omkar_be_may2009_a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE omkar_be_may2009_a OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 4518430)
-- Name: omkarbemay2009a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE omkarbemay2009a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE omkarbemay2009a_seq OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 4518432)
-- Name: omkarbemay2009a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE omkarbemay2009a (
    timetableid bigint DEFAULT nextval('omkarbemay2009a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE omkarbemay2009a OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 4518447)
-- Name: paymentdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE paymentdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paymentdetails_seq OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 4518449)
-- Name: paymentdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paymentdetails (
    recordid bigint DEFAULT nextval('paymentdetails_seq'::regclass) NOT NULL,
    amount double precision,
    accountnumber character varying(50) DEFAULT NULL::character varying,
    description character varying(70) DEFAULT NULL::character varying,
    paymode character varying(50) DEFAULT NULL::character varying,
    cdnumber integer,
    cddate date,
    bankname character varying(50) DEFAULT NULL::character varying,
    branch character varying(50) DEFAULT NULL::character varying,
    towhom character varying(50) DEFAULT NULL::character varying,
    done character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE paymentdetails OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 4518462)
-- Name: paythis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paythis (
    recordid bigint,
    onoff character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE paythis OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 4518466)
-- Name: persondetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persondetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persondetails_seq OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 4518468)
-- Name: persondetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persondetails (
    recordid bigint DEFAULT nextval('persondetails_seq'::regclass) NOT NULL,
    personid character varying(50) DEFAULT NULL::character varying,
    personname character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE persondetails OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 4518476)
-- Name: pettycash_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pettycash_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pettycash_seq OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 4518478)
-- Name: pettycash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pettycash (
    recordid bigint DEFAULT nextval('pettycash_seq'::regclass) NOT NULL,
    persionid character varying(50) DEFAULT ''::character varying NOT NULL,
    personname character varying(30) DEFAULT NULL::character varying,
    accountnumber integer,
    pettyamount double precision,
    pettydate date,
    pettycarry double precision
);


ALTER TABLE pettycash OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 4518486)
-- Name: publicationdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE publicationdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE publicationdetails_seq OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 4518488)
-- Name: publicationdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicationdetails (
    publicationnameid integer DEFAULT nextval('publicationdetails_seq'::regclass) NOT NULL,
    publicationname character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE publicationdetails OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 4518495)
-- Name: purchase_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE purchase_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE purchase_seq OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 4518497)
-- Name: purchase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE purchase (
    recordid bigint DEFAULT nextval('purchase_seq'::regclass) NOT NULL,
    invoicenumber character varying(50) DEFAULT NULL::character varying,
    customerid character varying(50) DEFAULT NULL::character varying,
    customername character varying(80) DEFAULT NULL::character varying,
    billamount double precision,
    billdate date,
    paidamount double precision DEFAULT '0'::double precision NOT NULL,
    paydate date
);


ALTER TABLE purchase OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 4518507)
-- Name: rack_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rack_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rack_seq OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 4518509)
-- Name: rack; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rack (
    rackid integer DEFAULT nextval('rack_seq'::regclass) NOT NULL,
    rackno character varying(20) DEFAULT ''::character varying NOT NULL,
    noofbooks integer DEFAULT 0 NOT NULL
);


ALTER TABLE rack OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 4518517)
-- Name: random_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE random_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE random_seq OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 4518519)
-- Name: random; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE random (
    sno bigint DEFAULT nextval('random_seq'::regclass) NOT NULL,
    recordid integer,
    invoicenumber character varying(30) DEFAULT NULL::character varying,
    whichdue integer,
    dueamount double precision,
    ckbx character varying(5) DEFAULT NULL::character varying,
    accountnumber integer
);


ALTER TABLE random OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 4518527)
-- Name: refund_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE refund_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE refund_seq OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 4518529)
-- Name: refund; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE refund (
    recordid bigint DEFAULT nextval('refund_seq'::regclass) NOT NULL,
    studentid character varying(80) DEFAULT ''::character varying NOT NULL,
    paidamount double precision,
    refundamount double precision,
    accountnumber bigint,
    mode character varying(50) DEFAULT NULL::character varying,
    cdnumber integer DEFAULT 0,
    dddate date,
    bankname character varying(50) DEFAULT NULL::character varying,
    branch character varying(50) DEFAULT NULL::character varying,
    towhom character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE refund OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 4518541)
-- Name: registrationfeesdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE registrationfeesdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registrationfeesdetails_seq OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 4518543)
-- Name: registrationfeesdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE registrationfeesdetails (
    registrationfeesid bigint DEFAULT nextval('registrationfeesdetails_seq'::regclass) NOT NULL,
    registrationfees bigint DEFAULT '0'::bigint NOT NULL,
    libraryfine bigint
);


ALTER TABLE registrationfeesdetails OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 4518550)
-- Name: salary_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE salary_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE salary_seq OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 4518552)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE salary (
    recordid bigint DEFAULT nextval('salary_seq'::regclass) NOT NULL,
    salarymonth character varying(30) DEFAULT NULL::character varying,
    accountnumber integer,
    salarytotal double precision,
    mode character varying(20) DEFAULT NULL::character varying,
    cdnumber integer,
    cdbankname character varying(50) DEFAULT NULL::character varying,
    cdbranch character varying(50) DEFAULT NULL::character varying,
    cddate date,
    cdto character varying(150) DEFAULT NULL::character varying
);


ALTER TABLE salary OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 4518563)
-- Name: sbnm1515_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sbnm1515_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sbnm1515_seq OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 4518565)
-- Name: sbnm1515; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sbnm1515 (
    recordid bigint DEFAULT nextval('sbnm1515_seq'::regclass) NOT NULL,
    crdr character varying(50) DEFAULT NULL::character varying,
    remarks character varying(200) DEFAULT NULL::character varying,
    currentdate date,
    amount double precision,
    balance double precision,
    CONSTRAINT sbnm1515_recordid_check CHECK ((recordid > 0))
);


ALTER TABLE sbnm1515 OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 4518574)
-- Name: screenmaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE screenmaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE screenmaster_seq OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 4518576)
-- Name: screenmaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE screenmaster (
    screenid bigint DEFAULT nextval('screenmaster_seq'::regclass) NOT NULL,
    screenname character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE screenmaster OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 4518583)
-- Name: screenrights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE screenrights (
    userid integer,
    usertype character varying(50) DEFAULT NULL::character varying,
    screenid integer
);


ALTER TABLE screenrights OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 4518587)
-- Name: sectionmaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sectionmaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sectionmaster_seq OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 4518589)
-- Name: sectionmaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sectionmaster (
    sectionid integer DEFAULT nextval('sectionmaster_seq'::regclass) NOT NULL,
    intake character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    levelofcourse character varying(50) DEFAULT NULL::character varying,
    section character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE sectionmaster OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 4518599)
-- Name: slotrepeat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE slotrepeat (
    week integer DEFAULT 0 NOT NULL,
    "boolean" smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE slotrepeat OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 4518606)
-- Name: srini_eee_aug2008_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE srini_eee_aug2008_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE srini_eee_aug2008_a_seq OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 4518608)
-- Name: srini_eee_aug2008_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE srini_eee_aug2008_a (
    timetableid bigint DEFAULT nextval('srini_eee_aug2008_a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE srini_eee_aug2008_a OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 4518623)
-- Name: srini_mech_aug2008_a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE srini_mech_aug2008_a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE srini_mech_aug2008_a_seq OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 4518625)
-- Name: srini_mech_aug2008_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE srini_mech_aug2008_a (
    timetableid bigint DEFAULT nextval('srini_mech_aug2008_a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE srini_mech_aug2008_a OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 4518640)
-- Name: srini_mech_aug2008_b_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE srini_mech_aug2008_b_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE srini_mech_aug2008_b_seq OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 4518642)
-- Name: srini_mech_aug2008_b; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE srini_mech_aug2008_b (
    timetableid bigint DEFAULT nextval('srini_mech_aug2008_b_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    todaydate date,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE srini_mech_aug2008_b OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 4518657)
-- Name: srinimca02may2008a_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE srinimca02may2008a_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE srinimca02may2008a_seq OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 4518659)
-- Name: srinimca02may2008a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE srinimca02may2008a (
    timetableid bigint DEFAULT nextval('srinimca02may2008a_seq'::regclass) NOT NULL,
    timetablename character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT NULL::character varying,
    term character varying(50) DEFAULT NULL::character varying,
    day character varying(50) DEFAULT NULL::character varying,
    week character varying(50) DEFAULT NULL::character varying,
    slot character varying(50) DEFAULT NULL::character varying,
    subject character varying(50) DEFAULT NULL::character varying,
    staff character varying(50) DEFAULT NULL::character varying,
    roomno character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE srinimca02may2008a OWNER TO postgres;

--
-- TOC entry 308 (class 1259 OID 4518674)
-- Name: staffattendence_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE staffattendence_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffattendence_seq OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 4518676)
-- Name: staffattendence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staffattendence (
    attendenceid integer DEFAULT nextval('staffattendence_seq'::regclass) NOT NULL,
    staffid character varying(50) DEFAULT NULL::character varying,
    department character varying(50) DEFAULT NULL::character varying,
    attendancedate date,
    attendancestatus character varying(50) DEFAULT NULL::character varying,
    reason character varying(50) DEFAULT ''::character varying NOT NULL,
    present text
);


ALTER TABLE staffattendence OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 4518689)
-- Name: staffattendencemark_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE staffattendencemark_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffattendencemark_seq OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 4518691)
-- Name: staffattendencemark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staffattendencemark (
    attendenceid integer DEFAULT nextval('staffattendencemark_seq'::regclass) NOT NULL,
    staffinformationid integer,
    coursecode character varying(50) DEFAULT NULL::character varying,
    present character varying(200) DEFAULT NULL::character varying,
    absent character varying(200) DEFAULT NULL::character varying,
    leavereason text NOT NULL,
    date date
);


ALTER TABLE staffattendencemark OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 4518703)
-- Name: staffavailabilitytimetable_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE staffavailabilitytimetable_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffavailabilitytimetable_seq OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 4518705)
-- Name: staffavailabilitytimetable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staffavailabilitytimetable (
    staffavailabilityid bigint DEFAULT nextval('staffavailabilitytimetable_seq'::regclass) NOT NULL,
    staffid character varying(35) DEFAULT ''::character varying NOT NULL,
    coursecode character varying(25) DEFAULT NULL::character varying,
    subjectcode character varying(25) DEFAULT NULL::character varying,
    availability character varying(20) DEFAULT NULL::character varying
);


ALTER TABLE staffavailabilitytimetable OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 4518715)
-- Name: staffpersonalinformation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE staffpersonalinformation_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffpersonalinformation_seq OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 4518717)
-- Name: staffpersonalinformation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staffpersonalinformation (
    staffinformationid bigint DEFAULT nextval('staffpersonalinformation_seq'::regclass) NOT NULL,
    staffid character varying(50) DEFAULT ''::character varying NOT NULL,
    name character varying(50) DEFAULT NULL::character varying,
    designation character varying(50) DEFAULT NULL::character varying,
    typeofjob character varying(50) DEFAULT NULL::character varying,
    gender character varying(50) DEFAULT NULL::character varying,
    boodgroup character varying(50) DEFAULT NULL::character varying,
    age integer,
    maritalstatus character varying(50) DEFAULT NULL::character varying,
    dateofbirth date,
    dateofjoining date,
    mailid character varying(50) DEFAULT NULL::character varying,
    password character varying(20) DEFAULT NULL::character varying,
    presentaddress character varying(50) DEFAULT NULL::character varying,
    permanentaddress character varying(50) DEFAULT NULL::character varying,
    mobileno character varying(50) DEFAULT NULL::character varying,
    phoneno character varying(50) DEFAULT NULL::character varying,
    religion character varying(50) DEFAULT NULL::character varying,
    community character varying(50) DEFAULT NULL::character varying,
    degree character varying(50) DEFAULT NULL::character varying,
    specification character varying(50) DEFAULT NULL::character varying,
    institutename character varying(100) DEFAULT NULL::character varying,
    universityname character varying(100) DEFAULT NULL::character varying,
    duration character varying(10) DEFAULT NULL::character varying,
    percentage bigint,
    degree1 character varying(50) DEFAULT NULL::character varying,
    specification1 character varying(100) DEFAULT NULL::character varying,
    institutename1 character varying(50) DEFAULT NULL::character varying,
    universityname1 character varying(50) DEFAULT NULL::character varying,
    duration1 character varying(10) DEFAULT NULL::character varying,
    percentage1 bigint,
    compname character varying(50) DEFAULT ''::character varying NOT NULL,
    subject character varying(50) DEFAULT NULL::character varying,
    compdesignation character varying(50) DEFAULT NULL::character varying,
    years smallint,
    rewards character varying(50) DEFAULT NULL::character varying,
    reference character varying(50) DEFAULT NULL::character varying,
    address character varying(50) DEFAULT NULL::character varying,
    compname1 character varying(50) DEFAULT NULL::character varying,
    subject1 character varying(30) DEFAULT NULL::character varying,
    compdesignation1 character varying(50) DEFAULT NULL::character varying,
    years1 smallint,
    rewards1 character varying(50) DEFAULT NULL::character varying,
    reference1 character varying(50) DEFAULT NULL::character varying,
    address1 character varying(50) DEFAULT NULL::character varying,
    department character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE staffpersonalinformation OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 4518764)
-- Name: staffqualificationdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staffqualificationdetails (
    degree character varying(50) DEFAULT NULL::character varying,
    staffid character varying(20) DEFAULT ''::character varying NOT NULL,
    specification character varying(100) DEFAULT NULL::character varying,
    institutename character varying(100) DEFAULT NULL::character varying,
    universityname character varying(100) DEFAULT NULL::character varying,
    duration character varying(50) DEFAULT ''::character varying NOT NULL,
    percentage bigint,
    degree1 character varying(50) DEFAULT NULL::character varying,
    specification1 character varying(100) DEFAULT NULL::character varying,
    institutename1 character varying(100) DEFAULT NULL::character varying,
    universityname1 character varying(100) DEFAULT NULL::character varying,
    duration1 character varying(50) DEFAULT ''::character varying NOT NULL,
    percentage1 bigint,
    name character varying(50) DEFAULT ''::character varying NOT NULL,
    subject character varying(50) DEFAULT ''::character varying NOT NULL,
    designation character varying(50) DEFAULT ''::character varying NOT NULL,
    years smallint DEFAULT '0'::smallint NOT NULL,
    rewards character varying(50) DEFAULT ''::character varying NOT NULL,
    reference character varying(50) DEFAULT ''::character varying NOT NULL,
    address character varying(50) DEFAULT ''::character varying NOT NULL,
    name1 character varying(50) DEFAULT ''::character varying NOT NULL,
    subject1 character varying(50) DEFAULT ''::character varying NOT NULL,
    designation1 character varying(50) DEFAULT ''::character varying NOT NULL,
    years1 smallint DEFAULT '0'::smallint NOT NULL,
    rewards1 character varying(50) DEFAULT ''::character varying NOT NULL,
    reference1 character varying(50) DEFAULT ''::character varying NOT NULL,
    address1 character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE staffqualificationdetails OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 4518795)
-- Name: stand1000_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE stand1000_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stand1000_seq OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 4518797)
-- Name: stand1000; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE stand1000 (
    recordid bigint DEFAULT nextval('stand1000_seq'::regclass) NOT NULL,
    crdr character varying(50) DEFAULT NULL::character varying,
    remarks character varying(200) DEFAULT NULL::character varying,
    currentdate date,
    amount double precision,
    balance double precision,
    CONSTRAINT stand1000_recordid_check CHECK ((recordid > 0))
);


ALTER TABLE stand1000 OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 4518806)
-- Name: studattendencemark_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE studattendencemark_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE studattendencemark_seq OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 4518808)
-- Name: studattendencemark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE studattendencemark (
    attendenceid integer DEFAULT nextval('studattendencemark_seq'::regclass) NOT NULL,
    intake text NOT NULL,
    coursecode character varying(50) DEFAULT ''::character varying NOT NULL,
    present text NOT NULL,
    absent text NOT NULL,
    leavereason text NOT NULL,
    date date,
    subjectcode character varying(50) DEFAULT NULL::character varying,
    section character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE studattendencemark OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 4518820)
-- Name: student_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE student_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE student_seq OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 4518822)
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE student (
    recordid bigint DEFAULT nextval('student_seq'::regclass) NOT NULL,
    studentid character varying(20) DEFAULT ''::character varying NOT NULL,
    studentpwd character varying(20) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    intake character varying(15) DEFAULT NULL::character varying,
    nextintake character varying(10) DEFAULT NULL::character varying,
    levelofeducation character varying(30) DEFAULT NULL::character varying,
    mailid character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(50) DEFAULT ''::character varying NOT NULL,
    section character(1) DEFAULT NULL::bpchar,
    countryresidence character varying(30) DEFAULT NULL::character varying,
    addreassline1 character varying(220) DEFAULT NULL::character varying,
    addressline2 character varying(220) DEFAULT NULL::character varying,
    postcode character varying(8) DEFAULT NULL::character varying,
    citizenof character varying(8) DEFAULT NULL::character varying,
    phonenumber character varying(30) DEFAULT NULL::character varying,
    mobilenumber character varying(25) DEFAULT NULL::character varying,
    faxnumber character varying(30) DEFAULT NULL::character varying,
    dateofbirth date,
    passportnumber character varying(30) DEFAULT NULL::character varying,
    course1 character varying(50) DEFAULT NULL::character varying,
    institute1 character varying(50) DEFAULT NULL::character varying,
    duration1 integer,
    grade1 character(2) DEFAULT NULL::bpchar,
    course2 character varying(50) DEFAULT NULL::character varying,
    institute2 character varying(50) DEFAULT NULL::character varying,
    duration2 integer,
    grade2 character(2) DEFAULT NULL::bpchar,
    employer1 character varying(50) DEFAULT NULL::character varying,
    designation1 character varying(45) DEFAULT NULL::character varying,
    startdate1 date,
    enddate1 date,
    employer2 character varying(50) DEFAULT NULL::character varying,
    designation2 character varying(45) DEFAULT NULL::character varying,
    startdate2 date,
    enddate2 date,
    refname1 character varying(50) DEFAULT NULL::character varying,
    refoccupation1 character varying(45) DEFAULT NULL::character varying,
    refinstitution1 character varying(50) DEFAULT NULL::character varying,
    refrelationship1 character varying(45) DEFAULT NULL::character varying,
    refphonenumber1 character varying(30) DEFAULT NULL::character varying,
    refemail1 character varying(80) DEFAULT NULL::character varying,
    refname2 character varying(50) DEFAULT NULL::character varying,
    refoccupation2 character varying(45) DEFAULT NULL::character varying,
    refinstitution2 character varying(50) DEFAULT NULL::character varying,
    refrelationship2 character varying(45) DEFAULT NULL::character varying,
    refphonenumber2 character varying(30) DEFAULT NULL::character varying,
    refemail2 character varying(80) DEFAULT NULL::character varying,
    transferbranch character varying(15) DEFAULT NULL::character varying,
    courseamount double precision,
    feepaid double precision,
    fine double precision,
    examfee double precision,
    visa smallint,
    englishclass smallint,
    discontinued smallint,
    agentid character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE student OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 4518873)
-- Name: studentfinanace_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE studentfinanace_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE studentfinanace_seq OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 4518875)
-- Name: studentfinanace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE studentfinanace (
    recordid bigint DEFAULT nextval('studentfinanace_seq'::regclass) NOT NULL,
    studentid character varying(50) DEFAULT NULL::character varying,
    registrationid character varying(50) DEFAULT NULL::character varying,
    studentname character varying(50) DEFAULT NULL::character varying,
    branchname character varying(50) DEFAULT NULL::character varying,
    intake character varying(50) DEFAULT NULL::character varying,
    totalfeeamount double precision,
    initialdeposit double precision,
    nextpaydate date,
    dueamount double precision,
    balance double precision,
    fineamount double precision,
    exambookfee double precision,
    transferofbranch character varying(50) DEFAULT NULL::character varying,
    discontinued character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE studentfinanace OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 4518888)
-- Name: studentsubject_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE studentsubject_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE studentsubject_seq OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 4518890)
-- Name: studentsubject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE studentsubject (
    recordid bigint DEFAULT nextval('studentsubject_seq'::regclass) NOT NULL,
    studentid character varying(15) DEFAULT NULL::character varying,
    subjectcode character varying(15) DEFAULT NULL::character varying,
    termno integer,
    mark integer,
    reason character varying(150) DEFAULT NULL::character varying
);


ALTER TABLE studentsubject OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 4518899)
-- Name: subjectcreditdetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE subjectcreditdetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subjectcreditdetails_seq OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 4518901)
-- Name: subjectcreditdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE subjectcreditdetails (
    subjectcreditid integer DEFAULT nextval('subjectcreditdetails_seq'::regclass) NOT NULL,
    subjectcode character varying(20) DEFAULT ''::character varying NOT NULL,
    subjectname character varying(100) DEFAULT NULL::character varying,
    normalcredit integer DEFAULT 0 NOT NULL,
    ectscredit integer,
    coursecode character varying(10) DEFAULT ''::character varying NOT NULL,
    termnumber integer DEFAULT 0 NOT NULL
);


ALTER TABLE subjectcreditdetails OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 4518912)
-- Name: timetablesettings_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE timetablesettings_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE timetablesettings_seq OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 4518914)
-- Name: timetablesettings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE timetablesettings (
    settingsid integer DEFAULT nextval('timetablesettings_seq'::regclass) NOT NULL,
    timetablename character varying(30) DEFAULT NULL::character varying,
    intake character varying(50) DEFAULT NULL::character varying,
    coursecode character varying(20) DEFAULT ''::character varying NOT NULL,
    fromdate date,
    todate date,
    fromday character varying(30) DEFAULT NULL::character varying,
    today character varying(30) DEFAULT NULL::character varying,
    numberofslots integer DEFAULT 0 NOT NULL,
    fromtime1 character varying(50) DEFAULT NULL::character varying,
    totime1 character varying(50) DEFAULT NULL::character varying,
    fromtime2 character varying(50) DEFAULT NULL::character varying,
    totime2 character varying(50) DEFAULT NULL::character varying,
    fromtime3 character varying(50) DEFAULT NULL::character varying,
    totime3 character varying(50) DEFAULT NULL::character varying,
    fromtime4 character varying(50) DEFAULT NULL::character varying,
    totime4 character varying(50) DEFAULT NULL::character varying,
    fromtime5 character varying(50) DEFAULT NULL::character varying,
    totime5 character varying(50) DEFAULT NULL::character varying,
    fromtime6 character varying(50) DEFAULT NULL::character varying,
    totime6 character varying(50) DEFAULT NULL::character varying,
    fromtime7 character varying(50) DEFAULT NULL::character varying,
    totime7 character varying(50) DEFAULT NULL::character varying,
    fromtime8 character varying(50) DEFAULT NULL::character varying,
    totime8 character varying(50) DEFAULT NULL::character varying,
    fromtime9 character varying(50) DEFAULT NULL::character varying,
    totime9 character varying(50) DEFAULT NULL::character varying,
    fromtime10 character varying(50) DEFAULT NULL::character varying,
    totime10 character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE timetablesettings OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 4518949)
-- Name: universitydetails_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE universitydetails_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE universitydetails_seq OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 4518951)
-- Name: universitydetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE universitydetails (
    universityid integer DEFAULT nextval('universitydetails_seq'::regclass) NOT NULL,
    universitycode character varying(5) DEFAULT ''::character varying NOT NULL,
    universityname character varying(100) DEFAULT NULL::character varying,
    universityaddress character varying(250) DEFAULT ''::character varying NOT NULL,
    universitystate character varying(50) DEFAULT NULL::character varying,
    countryid integer DEFAULT 0 NOT NULL,
    universitypincode character varying(50) DEFAULT NULL::character varying,
    universityphonenumber character varying(50) DEFAULT NULL::character varying,
    universityfaxnumber character varying(50) DEFAULT NULL::character varying,
    universitymailid character varying(50) DEFAULT NULL::character varying,
    universitywebsitename character varying(50) DEFAULT NULL::character varying,
    contactpersonname character varying(50) DEFAULT NULL::character varying,
    contactpersonmailid character varying(50) DEFAULT NULL::character varying,
    contactpersonphonenumber character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE universitydetails OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 4518974)
-- Name: usercreation_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usercreation_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usercreation_seq OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 4518976)
-- Name: usercreation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usercreation (
    userid integer DEFAULT nextval('usercreation_seq'::regclass) NOT NULL,
    username character varying(50) DEFAULT NULL::character varying,
    password character varying(50) DEFAULT NULL::character varying,
    usertype integer DEFAULT 0 NOT NULL
);


ALTER TABLE usercreation OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 4518985)
-- Name: usertypemaster_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usertypemaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usertypemaster_seq OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 4518987)
-- Name: usertypemaster; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usertypemaster (
    userid integer DEFAULT nextval('usertypemaster_seq'::regclass) NOT NULL,
    usertype character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE usertypemaster OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 4517750)
-- Dependencies: 186
-- Data for Name: 146eee176vimal71; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "146eee176vimal71" (recordid, studentid, studentname, test, total, status) VALUES (1, 'Aug2008EEE62', 'Mr.Alex Pandien', 0, 0, 'Pass');
INSERT INTO "146eee176vimal71" (recordid, studentid, studentname, test, total, status) VALUES (2, 'Aug2008EEE67', 'Mr.Justin Doss', 43, 43, 'Pass');
INSERT INTO "146eee176vimal71" (recordid, studentid, studentname, test, total, status) VALUES (3, 'Aug2008EEE57', 'Mr.Karthik Vimalraj', 27, 27, 'Pass');


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 185
-- Name: 146eee176vimal71_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"146eee176vimal71_seq"', 1, false);


--
-- TOC entry 3408 (class 0 OID 4517761)
-- Dependencies: 188
-- Data for Name: agentmaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (139, 'MUK01', 'Karthik', 'Main Agent', 'Main', 'No 1 Esplanade Police lane, Near Chennai House,  Chennai 108+++', 'as@sd.com', '4343334', '55', '', 12, '2345', 'Account Transaction', 12, 'Week once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (141, 'SSM58', 'Jeppiaar', 'Main Agent', 'Main', 'Chennai+++', 'ssm581@yahoo.com', '323', '9884221384', '323', 56, '602201198626', 'Account Transaction', 23, 'Month Once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (165, 'SDF23', 'Wenki', 'Sub Agent', 'SDF23', '7,chinna street,vizag nagar,\r\nchennai-88', 'sdf5@yahoo.com', '234432', '9988445566', '91442343434', 66, '', 'Cash', 6666, 'Month Once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (163, 'SWE45', 'Sekar', 'Sub Agent', 'SSM58', '34,raja street,park lane,\r\nchennai-90', 'swe55@yahoo.com', '2223455', '9955667722', '9144222334455', 55, '', 'Account Transaction', 5500, 'Month Once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (192, 'KAR05', 'Karthik', 'Sub Agent', 'DSDS', '30/21, brindavan,4th st chetpet chennai', 'kartyvimy@gmail.com', '30920921', '9884926974', '5463365698', 12, '123365546689', 'Cash', 22, 'Month Once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (166, 'FGH76', 'Ffff', 'Sub Agent', 'Main', '34,krish kar street,single line,\r\nchennai-08', 'fer54@yahoo.com', '2345678', '9988223344', '914433333333', 59, '03456', 'Cheque', 333, 'Week once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (167, 'DER56', 'Shikar', 'Sub Agent', 'MANI5', '44,manlore street,shimoga cott,chennai-7', 'der45@yahoo.co.in', '0442234456', '9876543210', '91442345666', 32, '2233', 'Account Transaction', 666, 'Week once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (211, 'MANI5', 'Baska', 'Sub Agent', 'DSDS', 'vb', 'dad@as.com', '423433', '333', '', 89, '2334', 'Account Transaction', 123, 'Days');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (218, 'SRINI', 'Srini', 'Sub Agent', 'DSDS', 'chennai', 'srini@yaho.com', '23233', '9884027580', '', 45, '32343', 'Account Transaction', 20, 'Week once');
INSERT INTO agentmaster (agentid, agentcode, agentname, agentcategory, mainagentcode, agentaddress, agentmailid, agentphno, agentmobileno, agentfaxno, agentcommission, agentaccountno, agentmodeofpayment, paymentdurationno, paymentduration) VALUES (224, 'DSDS', 'SawEA.          SAV', 'Sub Agent', 'SWE45', 'ssss Aas', 'Dss@xs.co.in', '3233', '23234', '232435', 43, '32323', 'Account Transaction', 343, '--Select--');


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 187
-- Name: agentmaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('agentmaster_seq', 1, false);


--
-- TOC entry 3410 (class 0 OID 4517785)
-- Dependencies: 190
-- Data for Name: applicantdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (49, 'Mr', 'karthik', '', 'Ramalingam', 'Aug2008', 'Level1', 0, 'MECH', 'karthikfriend@gmail.com', 'Aug2008MECH2', 'ZiKDsqk', 'IND', '192.168.15.38', 'Old Mahabalipuram road,\r\nJeppiaar Nagr,\r\nChennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (50, 'Mr', 'Karthik', '', 'Vimalraj', 'Aug2008', 'Level1', 1, 'EEE', 'karthi@gmail.com', 'Aug2008EEE3', 'nMj0HPVR', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (51, 'Mr', 'Daniel', '', 'Samraj', 'Aug2008', 'Level1', 1, 'ECE', 'danie@gmail.com', 'Aug2008ECE4', 'ZcL8QKw', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (52, 'Mr', 'Omkarnath', '', 'Tiwary', 'Aug2008', 'Level2', 0, 'IT', 'omkarnat@gmail.com', 'Aug2008IT5', '8bC3h6U', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (53, 'Mr', 'Tarun', '', 'Kumar', 'Aug2008', 'Level2', 1, 'MCA', 'taru@gmail.com', 'Aug2008MCA6', 'gueBORsy', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (54, 'Mr', 'Mahesh', '', '', 'Aug2008', 'Level1', 0, 'MECH', 'karthikfrien@gmail.com', 'Aug2008MECH7', 'ZiKDsqk', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (55, 'Mr', 'Alex', '', 'Pandien', 'Aug2008', 'Level1', 1, 'EEE', 'karth@gmail.com', 'Aug2008EEE8', 'nMj0HPVR', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (56, 'Mr', 'Srijith', '', '', 'Aug2008', 'Level1', 1, 'ECE', 'dani@gmail.com', 'Aug2008ECE9', 'ZcL8QKw', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (57, 'Mr', 'Senthil', '', 'Kumar', 'Aug2008', 'Level2', 0, 'IT', 'omkarna@gmail.com', 'Aug2008IT10', '8bC3h6U', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (58, 'Mr', 'Sahji', '', '', 'Aug2008', 'Level2', 1, 'MCA', 'tar@gmail.com', 'Aug2008MCA11', 'gueBORsy', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (59, 'Mr', 'Manika', '', 'Sudar', 'Aug2008', 'Level1', 0, 'MECH', 'karthikfrie@gmail.com', 'Aug2008MECH12', 'ZiKDsqk', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (60, 'Mr', 'Justin', '', 'Doss', 'Aug2008', 'Level1', 1, 'EEE', 'kart@gmail.com', 'Aug2008EEE13', 'nMj0HPVR', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (61, 'Mr', 'Ramesh', '', '', 'Aug2008', 'Level1', 1, 'ECE', 'dan@gmail.com', 'Aug2008ECE14', 'ZcL8QKw', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (62, 'Mr', 'Babu', '', '', 'Aug2008', 'Level2', 0, 'IT', 'omkarn@gmail.com', 'Aug2008IT15', '8bC3h6U', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);
INSERT INTO applicantdetails (recordid, title, firstname, middlename, lastname, intake, levelofeducation, experience, course, mailid, applicantid, password, countryresidence, ipaddress, address, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, passportcopy, photocopy, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, status, visa, appfill) VALUES (63, 'Mr', 'John', '', 'Berkman', 'Aug2008', 'Level2', 1, 'MCA', 'ta@gmail.com', 'Aug2008MCA16', 'gueBORsy', 'IND', '192.168.15.38', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'Sunset1.jpg', 'Winter.jpg', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 0, 0, 1);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 189
-- Name: applicantdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('applicantdetails_seq', 1, false);


--
-- TOC entry 3412 (class 0 OID 4517841)
-- Dependencies: 192
-- Data for Name: arreardetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (78, 'Aug2008', 'NAT', 3, 'MAT03', 1, 'Assestment1', 1, 42);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (77, 'Aug2008', 'sci14', 1, 'C', 1, 'Assestment1', 4, 43);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (2, 'Aug2008', 'sci14', 1, 'C', 3, 'Assestment1', 32, 50);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (65, 'Aug2008', 'MCA02', 2, 'Java', 1, 'Sam', 32, 51);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (69, 'Aug2008', 'sci14', 1, 'C', 3, 'Sam', 33, 52);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (81, 'Aug2008', 'IT', 1, 'ENG104', 3, 'Sam', 34, 44);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (74, 'Aug2008', 'sci14', 1, 'C', 1, 'Sam', 32, 71);
INSERT INTO arreardetails (recordid, intake, coursecode, term, subjectcode, noofstudents, criteria, examnameid, sectionid) VALUES (79, 'Aug2008', 'sci14', 1, 'OOPS', 1, 'Sam', 4, 46);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 191
-- Name: arreardetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('arreardetails_seq', 1, false);


--
-- TOC entry 3414 (class 0 OID 4517853)
-- Dependencies: 194
-- Data for Name: assestmentdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (64, 'Vimal', 'Test', 45, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (61, 'Sam', 'Assignment', 5, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (57, 'Sam', 'Theory', 75, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (59, 'Sam', 'Practical', 20, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (12, 'Assestment1', 'Presentation', 35, 25);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (56, 'Saas', 'Qw3', 43, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (15, 'Sam', 'Performance', 25, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (16, 'karthik', 'Assignment', 20, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (17, 'karthik', 'Theory', 60, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (55, 'karthik', 'Practical', 20, 0);
INSERT INTO assestmentdetails (assestmenid, criteria, assestmenttype, marks, defaultmark) VALUES (65, 'Assestment1', 'Practical', 40, 30);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 193
-- Name: assestmentdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assestmentdetails_seq', 1, false);


--
-- TOC entry 3416 (class 0 OID 4517865)
-- Dependencies: 196
-- Data for Name: aug2008_level1_eee_1_eee601_sam; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level1_eee_1_eee601_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (1, 'Anna university', 'Aug2008EEE57', 'Mr.Karthik Vimalraj', 25, 15, 11, 51, 'pass');
INSERT INTO aug2008_level1_eee_1_eee601_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (2, 'Anna university', 'Aug2008EEE62', 'Mr.Alex Pandien', 25, 15, 13, 53, 'pass');
INSERT INTO aug2008_level1_eee_1_eee601_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (3, 'Anna university', 'Aug2008EEE67', 'Mr.Justin Doss', 25, 15, 14, 54, 'pass');


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 195
-- Name: aug2008_level1_eee_1_eee601_sam_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level1_eee_1_eee601_sam_seq', 1, false);


--
-- TOC entry 3418 (class 0 OID 4517877)
-- Dependencies: 198
-- Data for Name: aug2008_level1_eee_a_1_midterm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level1_eee_a_1_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (1, 'A', '1', 'MidTerm', 'EEE03', '2008-08-13', 'Morning', '1');
INSERT INTO aug2008_level1_eee_a_1_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (2, 'A', '1', 'MidTerm', 'EEE02', '2008-08-13', 'Evening', '1');
INSERT INTO aug2008_level1_eee_a_1_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (3, 'A', '1', 'MidTerm', 'EEE601', '2008/08/13', 'Morning', '1');


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 197
-- Name: aug2008_level1_eee_a_1_midterm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level1_eee_a_1_midterm_seq', 1, false);


--
-- TOC entry 3420 (class 0 OID 4517892)
-- Dependencies: 200
-- Data for Name: aug2008_level1_mech_2_eee503_assestment1; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level1_mech_2_eee503_assestment1 (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (1, 'Hghh', 'Aug2008MECH56', 'Mr.karthik Ramalingam', 35, 35, 3, 73, 'pass');
INSERT INTO aug2008_level1_mech_2_eee503_assestment1 (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (2, 'Hghh', 'Aug2008MECH61', 'Mr.Mahesh', 35, 35, 35, 105, 'pass');
INSERT INTO aug2008_level1_mech_2_eee503_assestment1 (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (3, 'Hghh', 'Aug2008MECH66', 'Mr.Manika Sudar', 35, 3, 38, 76, 'pass');


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 199
-- Name: aug2008_level1_mech_2_eee503_assestment1_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level1_mech_2_eee503_assestment1_seq', 1, false);


--
-- TOC entry 3422 (class 0 OID 4517904)
-- Dependencies: 202
-- Data for Name: aug2008_level2_it_1_eee601_saas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (1, 'Birla university', 'Aug2008IT59', 'Mr.Omkarnath Tiwary', 43, 43, 43, 129, 'pass');
INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (2, 'Birla university', 'Aug2008IT64', 'Mr.Senthil Kumar', 43, 43, 43, 129, 'pass');
INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (3, 'Birla university', 'Aug2008IT69', 'Mr.Babu', 43, 43, 43, 129, 'pass');
INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (4, 'Birla university', 'Aug2008IT59', 'Mr.Omkarnath Tiwary', 43, 43, 43, 129, 'pass');
INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (5, 'Birla university', 'Aug2008IT64', 'Mr.Senthil Kumar', 43, 43, 43, 129, 'pass');
INSERT INTO aug2008_level2_it_1_eee601_saas (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (6, 'Birla university', 'Aug2008IT69', 'Mr.Babu', 43, 43, 43, 129, 'pass');


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 201
-- Name: aug2008_level2_it_1_eee601_saas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level2_it_1_eee601_saas_seq', 1, false);


--
-- TOC entry 3424 (class 0 OID 4517916)
-- Dependencies: 204
-- Data for Name: aug2008_level2_it_2_mf331_sam; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level2_it_2_mf331_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (1, 'Annamalai University', 'Aug2008IT59', 'Mr.Omkarnath Tiwary', 25, 25, 5, 55, 'pass');
INSERT INTO aug2008_level2_it_2_mf331_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (2, 'Annamalai University', 'Aug2008IT64', 'Mr.Senthil Kumar', 25, 25, 5, 55, 'pass');
INSERT INTO aug2008_level2_it_2_mf331_sam (recordid, universityname, studentid, studentname, theory, practical, assignment, total, pass) VALUES (3, 'Annamalai University', 'Aug2008IT69', 'Mr.Babu', 25, 25, 5, 55, 'pass');


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 203
-- Name: aug2008_level2_it_2_mf331_sam_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level2_it_2_mf331_sam_seq', 1, false);


--
-- TOC entry 3426 (class 0 OID 4517928)
-- Dependencies: 206
-- Data for Name: aug2008_level2_it_a_2_midterm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level2_it_a_2_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (3, 'A', '2', 'MidTerm', 'C206', '2008-09-10', 'Morning', '2');
INSERT INTO aug2008_level2_it_a_2_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (2, 'A', '2', 'MidTerm', 'ENG104', '2008-08-13', 'Morning', '1');


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 205
-- Name: aug2008_level2_it_a_2_midterm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level2_it_a_2_midterm_seq', 1, false);


--
-- TOC entry 3428 (class 0 OID 4517943)
-- Dependencies: 208
-- Data for Name: aug2008_level2_it_b_2_midterm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aug2008_level2_it_b_2_midterm (examid, section, termno, nameoftheexam, subjectcode, day, slotname, arrear) VALUES (1, 'B', '2', 'MidTerm', 'C206', '2008-08-13', 'Morning', '2');


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 207
-- Name: aug2008_level2_it_b_2_midterm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aug2008_level2_it_b_2_midterm_seq', 1, false);


--
-- TOC entry 3430 (class 0 OID 4517958)
-- Dependencies: 210
-- Data for Name: balance; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO balance (recordid, accountnumber, accountname, bankname, branchname, total, balance, curdate, lastbalance, lastdate, tablename) VALUES (33, 101, 'Srinivasan', 'ICICI', 'Adyar', -188, 20000, '2006-05-11', 20000, '2006-05-11', 'ICICI101');
INSERT INTO balance (recordid, accountnumber, accountname, bankname, branchname, total, balance, curdate, lastbalance, lastdate, tablename) VALUES (46, 110, 'ramalingam', 'SBI', 'Chennai', 6000, 6000, '2008-09-10', 6000, '2008-09-10', 'SBI110');
INSERT INTO balance (recordid, accountnumber, accountname, bankname, branchname, total, balance, curdate, lastbalance, lastdate, tablename) VALUES (48, 1000, 'sundar', 'Stand', 'Cee', 1000, 1000, '2008-09-12', 1000, '2008-09-12', 'Stand1000');


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 209
-- Name: balance_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('balance_seq', 1, false);


--
-- TOC entry 3432 (class 0 OID 4517973)
-- Dependencies: 212
-- Data for Name: bankdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bankdetails (recordid, accountnumber, accountname, balance, bankname, branchname, sortcode, branchaddress, opendate, contactperson, phonenumber, faxnumber, website, balancedate) VALUES (60, 101, 'Srinivasan', 20000, 'ICICI', 'Adyar', '12-34-56', '21/4 Sathyabama Univ,\r\nChennai 119.', '2006-05-11', 'Sam', '323', '343434', 'www.g.com', '2008-06-18');
INSERT INTO bankdetails (recordid, accountnumber, accountname, balance, bankname, branchname, sortcode, branchaddress, opendate, contactperson, phonenumber, faxnumber, website, balancedate) VALUES (132, 110, 'ramalingam', 6000, 'SBI', 'Chennai', '12-34-56', 'Jeppiaar tech', '2008-09-10', 'Suresh', '24500640', '24500640', 'www.sbi.com', '2008-09-10');
INSERT INTO bankdetails (recordid, accountnumber, accountname, balance, bankname, branchname, sortcode, branchaddress, opendate, contactperson, phonenumber, faxnumber, website, balancedate) VALUES (138, 1000, 'sundar', 1000, 'Stand', 'Cee', '12-12-12', 'bang', '2008-09-12', '', '', '', '', '2008-09-13');


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 211
-- Name: bankdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bankdetails_seq', 1, false);


--
-- TOC entry 3434 (class 0 OID 4517993)
-- Dependencies: 214
-- Data for Name: billdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO billdetails (recordid, invoicenumber, quantity1, particular1, price1, amount1, quantity2, particular2, price2, amount2, quantity3, particular3, price3, amount3, quantity4, particular4, price4, amount4, quantity5, particular5, price5, amount5, quantity6, particular6, price6, amount6, quantity7, particular7, price7, amount7, quantity8, particular8, price8, amount8, quantity9, particular9, price9, amount9, quantity10, particular10, price10, amount10, quantity11, particular11, price11, amount11, quantity12, particular12, price12, amount12, quantity13, particular13, price13, amount13, quantity14, particular14, price14, amount14, quantity15, particular15, price15, amount15, quantity16, particular16, price16, amount16, quantity17, particular17, price17, amount17, quantity18, particular18, price18, amount18, quantity19, particular19, price19, amount19, quantity20, particular20, price20, amount20, others, taxamount, total) VALUES (1, '201', 1, 'Laptop', 100, 100, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 100);
INSERT INTO billdetails (recordid, invoicenumber, quantity1, particular1, price1, amount1, quantity2, particular2, price2, amount2, quantity3, particular3, price3, amount3, quantity4, particular4, price4, amount4, quantity5, particular5, price5, amount5, quantity6, particular6, price6, amount6, quantity7, particular7, price7, amount7, quantity8, particular8, price8, amount8, quantity9, particular9, price9, amount9, quantity10, particular10, price10, amount10, quantity11, particular11, price11, amount11, quantity12, particular12, price12, amount12, quantity13, particular13, price13, amount13, quantity14, particular14, price14, amount14, quantity15, particular15, price15, amount15, quantity16, particular16, price16, amount16, quantity17, particular17, price17, amount17, quantity18, particular18, price18, amount18, quantity19, particular19, price19, amount19, quantity20, particular20, price20, amount20, others, taxamount, total) VALUES (2, '2544', 1, 'Periparals', 1500, 1500, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1500);
INSERT INTO billdetails (recordid, invoicenumber, quantity1, particular1, price1, amount1, quantity2, particular2, price2, amount2, quantity3, particular3, price3, amount3, quantity4, particular4, price4, amount4, quantity5, particular5, price5, amount5, quantity6, particular6, price6, amount6, quantity7, particular7, price7, amount7, quantity8, particular8, price8, amount8, quantity9, particular9, price9, amount9, quantity10, particular10, price10, amount10, quantity11, particular11, price11, amount11, quantity12, particular12, price12, amount12, quantity13, particular13, price13, amount13, quantity14, particular14, price14, amount14, quantity15, particular15, price15, amount15, quantity16, particular16, price16, amount16, quantity17, particular17, price17, amount17, quantity18, particular18, price18, amount18, quantity19, particular19, price19, amount19, quantity20, particular20, price20, amount20, others, taxamount, total) VALUES (3, '8987897978', 1, '', 4545, 4545, 2, '', 433, 866, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0, 12.5, 45.119999999999997, 5468.6199999999999);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 213
-- Name: billdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('billdetails_seq', 1, false);


--
-- TOC entry 3436 (class 0 OID 4518025)
-- Dependencies: 216
-- Data for Name: bookissue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bookissue (issueid, userid, bookcode, dateofissue, dateofexpiry) VALUES (149, 'Aug2008ECE68', 'SAM02', '2008-10-04', '2008-10-18');
INSERT INTO bookissue (issueid, userid, bookcode, dateofissue, dateofexpiry) VALUES (148, 'Aug2008IT59', 'mat05', '2008-10-04', '2008-10-18');
INSERT INTO bookissue (issueid, userid, bookcode, dateofissue, dateofexpiry) VALUES (147, 'Aug2008MECH56', 'oops', '2008-10-03', '2008-10-17');


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 215
-- Name: bookissue_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bookissue_seq', 1, false);


--
-- TOC entry 3438 (class 0 OID 4518035)
-- Dependencies: 218
-- Data for Name: bookmaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bookmaster (bookno, bookcode, title, author, publicationid, isbnno, noofcopy, price, racknoid, checkcd, referencebook) VALUES (1, 'OOPS', 'Object oriented', 'Balaguru swamy', 2, 90897969, 35, 200, 5, 1, 0);
INSERT INTO bookmaster (bookno, bookcode, title, author, publicationid, isbnno, noofcopy, price, racknoid, checkcd, referencebook) VALUES (2, 'MAT05', 'Mathematics 5th Sem', 'John Joseph', 4, 7695585, 50, 500, 2, 0, 1);
INSERT INTO bookmaster (bookno, bookcode, title, author, publicationid, isbnno, noofcopy, price, racknoid, checkcd, referencebook) VALUES (3, 'SAM02', 'Solid Mechanics', 'Bohre', 5, 4564478, 65, 566, 4, 1, 0);
INSERT INTO bookmaster (bookno, bookcode, title, author, publicationid, isbnno, noofcopy, price, racknoid, checkcd, referencebook) VALUES (4, 'JAV01', 'Complete Reference Java', 'Daniel Samraj', 2, 7869756565, 600, 600, 2, 1, 1);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 217
-- Name: bookmaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bookmaster_seq', 1, false);


--
-- TOC entry 3440 (class 0 OID 4518050)
-- Dependencies: 220
-- Data for Name: cohortdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cohortdetails (cohortid, intake, startdate, extensiondate1, extensiondate2) VALUES (46, 'Aug2008', '2008-08-03', '2008-08-05', '2008-08-23');
INSERT INTO cohortdetails (cohortid, intake, startdate, extensiondate1, extensiondate2) VALUES (29, 'Feb2009', '2008-05-22', '2008-05-30', '2008-05-31');
INSERT INTO cohortdetails (cohortid, intake, startdate, extensiondate1, extensiondate2) VALUES (30, 'May2009', '2008-02-13', '2008-05-23', '2008-05-24');


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 219
-- Name: cohortdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cohortdetails_seq', 1, false);


--
-- TOC entry 3442 (class 0 OID 4518059)
-- Dependencies: 222
-- Data for Name: collegedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (193, 'Srr Engineering College', 'SRR ENGINEERING COLLEGE.JPG', 'Template1', 'A4', 'Chennai', 'Sam1+Sam2+Sam3+Sam4', 23, 34455, '982829', 'dsa@Srr.org', 'www.srr.in');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (173, 'Panimalar Engineering College', 'SAMRAJ.JPG', 'Template1', 'A4', 'Chennai', 'ddd+aaa+sss+ffff', 4, 2323, '45454', 'fdf@f.com', 'eee@g.vcom');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (192, 'SRM', 'SRM.JPG', 'Template1', 'A4', 'station', 'CHENNAI+++', 19, 434534, '87383744', 'ssm581@yahoo.com', 'www.sa.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (195, 'Jeppiaar Engineering College', 'JEPPIAAR ENGINEERING COLLEGE.JPG', 'Template4', 'A4', 'Chennai', 'JprNgr1+JprNgr2+JprNgr3+JprNgr4', 23, 21941, '98404', 'dsam@g.org', 'www.je.org');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (197, 'St Joseph', 'ST JOSEPH.JPG', 'Template2', 'A4', 'Chennai', 'jpr ngr1+jpr ngr2+jpr ngr3+jpr ngr4', 23, 323, '55555', 'as@g.com', 'www.stjoseph.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (198, 'Hindustan Engineering College', 'SAM.JPG', 'Template2', 'A4', 'aa', 'aa+aa+aa+aa', 4, 232, '3232', 'web@g.com', 'www.sa.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (199, 'MNM Jain College', 'AS.JPG', 'Template1', 'A4', 'as', 'sas+sa+as+asa', 4, 2323, '323', 'we@sd.com', 'www.sas.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (200, 'Stella Marys', 'SAMD.JPG', 'Template1', 'A4', 'sa', 'sas+sas+sa+sa', 35, 132, '31232', 'a2@d.com', 'www.ss.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (204, 'Infant Jesus', 'INFANT JESUS.JPG', 'Template1', 'A4', 'Chennai', 'No 1 Esplanade   police lane,\r\nNear Chennai House,\r\nChennai 600108', 34, 3443, '3434', 'jesus@god.com', 'www.IJesus.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (202, 'Queen Marys', 'WER.JPG', 'Template1', 'A3', 'er', 'er+we+we+we', 13, 2354, '34534', 'wer', 'wer');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (205, 'AMET', 'AMET.JPG', 'Template1', 'A4', 'Chennai', 'No1 East Cost Road,\r\nChennai 600108', 8, 222, '42323', 'dsa@gmail.com', 'www.Sam.com');
INSERT INTO collegedetails (collegeid, collegename, collegelogo, templatedesign, letterheaddimensions, location, address, countryid, faxno, phoneno, email, website) VALUES (206, 'Sathyabama', 'SAA.JPG', 'Template2', 'A3', 'aaaaaaaaaa', 'aaa', 1, 323, '12323', 'zs@w.com', 'www.fd.com');


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 221
-- Name: collegedetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('collegedetails_seq', 1, false);


--
-- TOC entry 3443 (class 0 OID 4518075)
-- Dependencies: 223
-- Data for Name: countdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO countdetails (intake, application, student, staff) VALUES ('Nov2008', 121, 83, 21);
INSERT INTO countdetails (intake, application, student, staff) VALUES ('Aug2008', 16, 71, 15);
INSERT INTO countdetails (intake, application, student, staff) VALUES ('Feb2009', 22, 34, 23);
INSERT INTO countdetails (intake, application, student, staff) VALUES ('staff', 0, 0, 12);


--
-- TOC entry 3445 (class 0 OID 4518084)
-- Dependencies: 225
-- Data for Name: countrydepositdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (37, 1, 71, 100, 100);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (38, 4, 44, 125, 255);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (29, 19, 71, 60000, 70000);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (36, 14, 74, 2312312, 12122);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (35, 19, 83, 3232, 32323);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (34, 23, 83, 1223232, 323123);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (32, 5, 52, 2333, 3232);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (40, 5, 45, 5000, 4000);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (39, 10, 71, 23000, 2350);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (41, 4, 45, 3545, 345345);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (42, 3, 71, 5000, 2000);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (43, 5, 44, 3333, 44444);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (44, 11, 74, 454554545, 454545545);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (45, 6, 45, 233232, 323232);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (46, 2, 95, 3434, 4343);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (47, 39, 74, 232, 323);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (49, 0, 0, 0, 0);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (50, 4, 0, 0, 0);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (51, 0, 44, 0, 0);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (52, 5, 0, 0, 0);
INSERT INTO countrydepositdetails (countrydepositdetailsid, countryid, courseid, deposit, fees) VALUES (53, 11, 71, 564, 4545);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 224
-- Name: countrydepositdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('countrydepositdetails_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 4518094)
-- Dependencies: 227
-- Data for Name: countrydetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (35, 'RUS', 'Russia', 'Russian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (4, 'JA', 'Japan', 'Japaneses');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (5, 'US', 'United States', 'American');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (34, 'ISR', 'Israel', 'Israielians');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (32, 'CH', 'Chinna', 'Chineses');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (19, 'AUS', 'Australia', 'Australia');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (23, 'IND', 'India', 'Indians');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (41, 'JM', 'Jajajaja', 'Jajajajaians');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (36, 'EUR', 'Europe', 'Europian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (1, 'AF', 'Afghanistan', 'Afghanistanis');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (2, 'AL', 'Albania', 'Albanian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (3, 'AG', 'Algeria', 'Algerian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (6, 'AS', 'American Samoa', 'American Samoani');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (7, 'AN', 'Andorra', 'Andorran');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (8, 'AO', 'Angola', 'Angolian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (9, 'AI', 'Anguilla', 'Anguillan');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (10, 'AT', 'Antarctica', 'Antarctican');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (11, 'AB', 'Antigua and Barbuda', 'Barbudan');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (12, 'AR', 'Argentina', 'Argentinan');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (13, 'AM', 'Armenia', 'Armenian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (14, 'AU', 'Aruba', 'Aruban');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (15, 'AA', 'Australia', 'Australian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (16, 'AUU', 'Austria', 'Austrian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (17, 'AZ', 'Azerbaijan', 'Azerbaijanian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (18, 'BA', 'Bahamas', 'Bahamasan');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (20, 'BH', 'Bahrain', 'Bahrainian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (21, 'BG', 'Bangladesh', 'Bangladeshian');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (22, 'BR', 'Barbados', 'Barbadosan');
INSERT INTO countrydetails (countryid, countrycode, countryname, nationality) VALUES (38, 'MDR', 'Madagaskar', 'Madagaskarian');


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 226
-- Name: countrydetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('countrydetails_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 4518105)
-- Dependencies: 229
-- Data for Name: coursedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (44, 'EEE', 'Electricals And Electronics', '35 Months', 'Part Time', 1, 69, 'No', 35435, 67, 34, 'Level1', 88, 8, 0);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (45, 'MECH', 'Mechanical Engineering', '4 Years', 'Part Time', 96, 55, 'Yes', 100, 450, 4, 'Level1', 4, 8, 0);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (74, 'ECE', 'Electronics And Communication Engineering', '34 Months', 'Full Time', 96, 55, 'Yes', 3000, 4.7000000000000002, 2, 'Level1', 2, 8, 0);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (71, 'MCA', 'Master of Computer Applicaion', '2 Years', 'Part Time', 6, 70, 'Yes', 450000, 20000, 45, 'Level2', 6, 6, 1);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (52, 'IT', 'Information Technology', '36 Months', 'Part Time', 6, 68, 'Yes', 30000, 23, 2, 'Level2', 30000, 8, 0);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (83, 'MSESE', 'Software Engineering', '4 Years', 'Full Time', 96, 0, 'Yes', 90000, 9000, 89, 'Level3', 76, 5, 1);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (94, 'BECSE', 'Computer Science And Engineering', '4 Years', 'Part Time', 99, 69, 'Yes', 100000, 10, 50, 'Level3', 10, 10, 1);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (95, 'MBA', 'Master Of Bussiness Administration', '2 Years', 'Full Time', 1, 68, 'Yes', 2305, 5000, 23, 'Level4', 5, 4, 0);
INSERT INTO coursedetails (courseid, coursecode, coursename, courseduration, modeofcourse, universityid, markschemeid, scholarship, defaultdeposit, defaultfees, noofsubjects, levelofthecourse, maximuminstalments, noofterms, experience) VALUES (96, 'NAT', 'Aeronautical Engineering', '23 Months', 'Full Time', 1, 1, 'Yes', 35000, 3000, 35, 'Level5', 3, 8, 1);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 228
-- Name: coursedetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coursedetails_seq', 1, false);


--
-- TOC entry 3451 (class 0 OID 4518124)
-- Dependencies: 231
-- Data for Name: customerdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (71, 'CH01', 'Chidambaram', 'No 21 VRD Nagar,\r\nNear Puthukoil, Madhavaram,\r\nChennai 600060', 'Chidambranar', '743843', '473749', 'chid@gmail.com', '768283', 'Indian', 'Chid', 'Water Bottles');
INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (72, 'DA05', 'Daniel', 'No 21 VRD Nagar,\r\nMadhavaram,\r\nNear Moolakadai,\r\nChennai 600060', 'DanielSamraj', '938484', '03445', 'dan@gmail.com', '63383', 'ICICI', 'Parrys', '');
INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (61, 'Vel01', 'vel', 'sd1+++', 'sahana', '22222', '234234', 'sd2@gmail.com', '234234', 'sdsad', 'seres', NULL);
INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (73, 'MA04', 'Mahendran', 'No:19,Sivan Koil Street,\r\nKodambakkam,\r\nChennai-600024', 'Banu', '9884221384', '2412', 'ssm581@yahoo.com', '602201198626', 'HDFC', 'Chennai', 'Chicken Supplier');
INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (74, 'ED05', 'Paul edward', 'sd+sd+sd+ds', 'Steve edward', '9876', '6565', 'asd@g.com', '6565', 'sad', 'Esa', 'Books');
INSERT INTO customerdetails (recordid, customerid, customername, customeraddress, contactperson, phonenumber, faxnumber, emailid, accountnumber, bankname, branchname, productdetails) VALUES (79, 'S', 'Yrty', 'cf', 'Tytry', '5654', '565', 'y54ytr', '78678', 'yugtjugtjy', 'Ghjtgjgtj', 'Tytryty');


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 230
-- Name: customerdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customerdetails_seq', 1, false);


--
-- TOC entry 3453 (class 0 OID 4518146)
-- Dependencies: 233
-- Data for Name: deposit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (1, 50000, 2147483647, 'senthil', 'kumar', 'Cash', 0, '2008-05-07', '', '', 'daniel');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (2, 100, 9883, 'Balaji', 'Srini', 'Cash', 0, '2008-05-23', '', '', 'JET SOFT');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (3, 15000, 102, 'Balaji', 'Srini', 'Cash', 0, '2008-05-23', '', '', 'Jetsoft');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (4, 10000, 101, 'Karthik', 'Karthik', 'Cheque', 12577, '2008-04-26', '', '', 'Karthik');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (5, 9, 101, 'gfhdf', '564ty56', 'Cash', 0, '2008-07-02', '', '', '3463trt');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (6, 2000, 9894, 'srinilinux', 'srinilinux', 'Cheque', 12345, '2008-07-26', '', '', 'srinilinux');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (7, 2000, 9894, 'srinilinux', 'srinilinux', 'Cash', 0, '2008-07-22', '', '', 'srinilinux');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (8, 8000, 987, 'Mr.X', 'Y to A', 'Cash', 0, '2008-08-26', '', '', 'Sba');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (9, 10000, 9875, 'Srini', 'Mahi', 'Cash', 0, '2008-09-01', '', '', 'Chennai');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (10, 10000, 987, 'dsa', 'sss', 'Cheque', 2147483647, '2008-09-24', '', '', '322');
INSERT INTO deposit (recordid, depositamount, depositaccount, depositby, reference, mode, number, dddate, bankname, branch, ddto) VALUES (11, 220, 101, 'srinivasan', 'srinivasan', 'Cheque', 987654321, '2008-09-11', '', '', 'srinivasan');


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 232
-- Name: deposit_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('deposit_seq', 1, false);


--
-- TOC entry 3455 (class 0 OID 4518163)
-- Dependencies: 235
-- Data for Name: embassyaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (2, 23, 'IndChennai', 'No 1 Esplanade Police Lane,\r\nNear Chennai House,\r\nChennai 600108');
INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (3, 4, 'JaCohima', 'No 21 VRD Nagar,\r\nMadhavaram,\r\nNear Puthu Koil,\r\nChennai 600060.');
INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (4, 5, 'ICH', 'No 24/7 Naramudi street,\r\nECR Road,\r\nChennai 600118');
INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (5, 19, 'ECH', 'No 45, Rajiv Gandhi Roan,\r\nSydney,\r\nKanchipuram dist,\r\nAustralia 45');
INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (6, 8, 'JES', 'No 235, Pondicherry road,\r\nVen Kustam Street,\r\nAngola 129');
INSERT INTO embassyaddress (embassyaddressid, countryid, embassycode, address) VALUES (7, 10, 'PEN', '245 Penguin Market,\r\nPenguin Street,\r\nAntartica 235');


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 234
-- Name: embassyaddress_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('embassyaddress_seq', 1, false);


--
-- TOC entry 3457 (class 0 OID 4518173)
-- Dependencies: 237
-- Data for Name: examnames; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO examnames (examname, examnameid) VALUES ('Midterm', 1);
INSERT INTO examnames (examname, examnameid) VALUES ('Public', 4);
INSERT INTO examnames (examname, examnameid) VALUES ('Final', 3);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 236
-- Name: examnames_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('examnames_seq', 1, false);


--
-- TOC entry 3459 (class 0 OID 4518182)
-- Dependencies: 239
-- Data for Name: examttslot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (1, 1, 'Morning', '1:00', '3:00');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (4, 3, 'Morning', '0:40', '1:30');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (32, 3, 'Afternoon', '1:15', '4:15');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (33, 3, 'Evening', '10:00', '1:00');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (34, 4, 'Afternoon', '0:15', '0:45');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (35, 1, 'Evening', '0:35', '0:25');
INSERT INTO examttslot (slotid, examnameid, slotname, fromtime, totime) VALUES (36, 4, 'Morning', '0:20', '1:10');


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 238
-- Name: examttslot_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('examttslot_seq', 1, false);


--
-- TOC entry 3461 (class 0 OID 4518194)
-- Dependencies: 241
-- Data for Name: feb2009_level1_eee_1_eee601_vimal; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 240
-- Name: feb2009_level1_eee_1_eee601_vimal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('feb2009_level1_eee_1_eee601_vimal_seq', 1, false);


--
-- TOC entry 3463 (class 0 OID 4518206)
-- Dependencies: 243
-- Data for Name: feb2009_level1_eee_a_3_midterm; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 242
-- Name: feb2009_level1_eee_a_3_midterm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('feb2009_level1_eee_a_3_midterm_seq', 1, false);


--
-- TOC entry 3465 (class 0 OID 4518221)
-- Dependencies: 245
-- Data for Name: firstyear_be_aug2008_a; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 244
-- Name: firstyear_be_aug2008_a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('firstyear_be_aug2008_a_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 4518238)
-- Dependencies: 247
-- Data for Name: firstyear_sci14_aug2008_b; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (1, 'FIRSTYEAR', 'Sci14', 'Aug2008', '1', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (2, 'FIRSTYEAR', 'Sci14', 'Aug2008', '1', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (3, 'FIRSTYEAR', 'Sci14', 'Aug2008', '1', '1', '3', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (4, 'FIRSTYEAR', 'Sci14', 'Aug2008', '2', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (5, 'FIRSTYEAR', 'Sci14', 'Aug2008', '2', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (6, 'FIRSTYEAR', 'Sci14', 'Aug2008', '2', '1', '3', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (7, 'FIRSTYEAR', 'Sci14', 'Aug2008', '3', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (8, 'FIRSTYEAR', 'Sci14', 'Aug2008', '3', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (9, 'FIRSTYEAR', 'Sci14', 'Aug2008', '3', '1', '3', 'NA', 'NA', 'NA');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (10, 'FIRSTYEAR', 'Sci14', 'Aug2008', '4', '1', '1', '', '', '');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (11, 'FIRSTYEAR', 'Sci14', 'Aug2008', '4', '1', '1', '', '', '');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (12, 'FIRSTYEAR', 'Sci14', 'Aug2008', '4', '1', '1', '', '', '');
INSERT INTO firstyear_sci14_aug2008_b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (13, 'firstyear', 'Sci14', 'Aug2008', '4', '1', '1', 'ObjectOrientedprg', 'eree', 'studio');


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 246
-- Name: firstyear_sci14_aug2008_b_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('firstyear_sci14_aug2008_b_seq', 1, false);


--
-- TOC entry 3469 (class 0 OID 4518255)
-- Dependencies: 249
-- Data for Name: firstyearsci14aug2008b; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (1, 'firstyear', 'sci14', 'Aug2008', '1', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (2, 'firstyear', 'sci14', 'Aug2008', '1', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (3, 'firstyear', 'sci14', 'Aug2008', '1', '1', '3', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (4, 'firstyear', 'sci14', 'Aug2008', '2', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (5, 'firstyear', 'sci14', 'Aug2008', '2', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (6, 'firstyear', 'sci14', 'Aug2008', '2', '1', '3', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (7, 'firstyear', 'sci14', 'Aug2008', '3', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (8, 'firstyear', 'sci14', 'Aug2008', '3', '1', '2', 'NA', 'NA', 'NA');
INSERT INTO firstyearsci14aug2008b (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (9, 'firstyear', 'sci14', 'Aug2008', '3', '1', '3', 'NA', 'NA', 'NA');


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 248
-- Name: firstyearsci14aug2008b_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('firstyearsci14aug2008b_seq', 1, false);


--
-- TOC entry 3471 (class 0 OID 4518272)
-- Dependencies: 251
-- Data for Name: icici101; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (1, 'Dr', 'Pettycash', '2008-05-23', 11, 9989);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (4, 'Dr', 'may', '2008-05-23', 1300, 8689);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (6, 'Dr', 'Refund', '2008-05-23', 100, 8589);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (7, 'Dr', 'Daniel', '2008-05-24', 10, 8579);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (8, 'Dr', 'Daniel', '2008-05-23', 10, 8569);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (9, 'Dr', 'Pettycash', '2008-05-27', 1000, 9000);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (10, 'Dr', 'Pettycash', '2008-05-27', 1000, 8000);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (11, 'Dr', 'Pettycash', '2008-08-26', 100, 19872);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (12, 'Dr', 'Pettycash', '2008-08-26', 250, 19622);
INSERT INTO icici101 (recordid, crdr, remarks, currentdate, amount, balance) VALUES (13, 'Dr', 'Pettycash', '2008-08-26', 150, 19472);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 250
-- Name: icici101_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('icici101_seq', 1, false);


--
-- TOC entry 3473 (class 0 OID 4518283)
-- Dependencies: 253
-- Data for Name: icici_pro6022; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 252
-- Name: icici_pro6022_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('icici_pro6022_seq', 1, false);


--
-- TOC entry 3475 (class 0 OID 4518294)
-- Dependencies: 255
-- Data for Name: infrastructuredetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (33, 'Old', 7, 1);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (32, 'studio', 10, 0);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (35, 'A1', 5, 1);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (38, 'SAT100', 2, 1);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (39, 'SAM007', 5, 0);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (40, 'Sam23', 3, 1);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (43, 'Auditorium', 21, 0);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (44, 'New Block', 80, 0);
INSERT INTO infrastructuredetails (halliid, hallname, hallcapacity, computerfacility) VALUES (53, 'Gdfg', 5, 1);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 254
-- Name: infrastructuredetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('infrastructuredetails_seq', 1, false);


--
-- TOC entry 3477 (class 0 OID 4518303)
-- Dependencies: 257
-- Data for Name: karthik_be_may2008_a; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO karthik_be_may2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (1, 'KARTHIK', 'be', 'May2008', '2008-05-01', '4', '1', '1', 'Holiday', 'Holiday', 'Holiday');
INSERT INTO karthik_be_may2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (2, 'KARTHIK', 'be', 'May2008', '2008-05-01', '4', '1', '3', 'Holiday', 'Holiday', 'Holiday');
INSERT INTO karthik_be_may2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (3, 'KARTHIK', 'be', 'May2008', '2008-05-02', '4', '1', '2', 'Holiday', 'Holiday', 'Holiday');


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 256
-- Name: karthik_be_may2008_a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('karthik_be_may2008_a_seq', 1, false);


--
-- TOC entry 3479 (class 0 OID 4518320)
-- Dependencies: 259
-- Data for Name: khus_sci14_aug2008_b; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO khus_sci14_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (1, 'khus', 'sci14', 'Aug2008', '2008-07-10', '4', '1', '1', 'Holiday', 'Holiday', 'Holiday');
INSERT INTO khus_sci14_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (2, 'khus', 'sci14', 'Aug2008', '2008-07-10', '4', '1', '2', 'Holiday', 'Holiday', 'Holiday');


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 258
-- Name: khus_sci14_aug2008_b_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('khus_sci14_aug2008_b_seq', 1, false);


--
-- TOC entry 3481 (class 0 OID 4518337)
-- Dependencies: 261
-- Data for Name: leavemaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (9, 'General', 'May2008', 'be', 'B', '2008-04-28', '2008-04-30', 0, 'Sam Birth day');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (10, 'Slot', 'May2008', 'be', 'A', '2008-05-02', '2008-05-02', 2, 'Chumma');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (11, 'Slot', 'May2008', 'be', 'A', '2008-05-01', '2008-05-01', 3, 'www');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (12, 'Slot', 'May2008', 'be', 'A', '2008-05-01', '2008-05-01', 1, 'www');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (13, 'partial', 'May2008', 'be', 'A', '2008-05-07', '2008-05-07', 0, 'www');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (14, 'General', 'May2008', 'be', 'B', '2008-06-07', '2008-06-08', 0, 'EEE');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (15, 'Slot', 'May2008', 'be', 'A', '2008-06-05', '2008-06-05', 3, 'ghj');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (16, 'Slot', 'May2008', 'be', 'B', '2008-05-07', '2008-05-07', 2, 'Chumma');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (17, 'Slot', 'May2008', 'be', 'A', '2008-05-06', '2008-05-06', 2, 'Chumma');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (18, 'Slot', 'May2008', 'be', 'A', '2008-05-08', '2008-05-08', 1, 'Sam Birth day');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (19, 'Slot', 'May2008', 'be', 'A', '2008-05-10', '2008-05-10', 3, 'Sam Birth day');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (20, 'Slot', 'May2008', 'be', 'A', '2008-05-09', '2008-05-09', 2, 'Slot');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (21, 'Slot', 'May2008', 'be', 'B', '2008-05-01', '2008-05-01', 2, 'uuuu');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (22, 'General', 'Aug2008', 'sci14', 'b', '2008-07-10', '2008-07-10', 0, 'jgftftyftyf');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (23, 'Slot', 'Aug2008', 'EEE', 'A', '2008-08-18', '2008-08-18', 2, 'BD');
INSERT INTO leavemaster (leaveid, typeofleave, intake, course, section, date1, date2, slot, leavereason) VALUES (24, 'Partial', 'Feb2009', 'EEE', 'n', NULL, NULL, 0, '');


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 260
-- Name: leavemaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('leavemaster_seq', 1, false);


--
-- TOC entry 3483 (class 0 OID 4518350)
-- Dependencies: 263
-- Data for Name: markschemedetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (1, 'Percentage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (55, 'ssm', 2, 3, 'LessThan', 5, 'f', 2, 'LessThanEqualto', 1, 'e', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA');
INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (68, 'MarSch', 2, 23, 'LessThan', 45, 'A', 45, 'LessThan', 100, 'B', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA');
INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (69, 'MARSCHE', 2, 50, 'LessThan', 80, 'A', 80, 'LessThan', 100, 'B', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA');
INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (70, 'srinivasan', 4, 0, 'LessThan', 40, 'Fail', 40, 'LessThan', 60, 'seocn', 60, 'LessThan', 75, 'first', 75, 'LessThanEqualto', 100, 'Fisrt', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA');
INSERT INTO markschemedetails (markschemeid, markschemename, markschemecycleno, upperlimit1, symbol1, lowerlimit1, grade1, upperlimit2, symbol2, lowerlimit2, grade2, upperlimit3, symbol3, lowerlimit3, grade3, upperlimit4, symbol4, lowerlimit4, grade4, upperlimit5, symbol5, lowerlimit5, grade5, upperlimit6, symbol6, lowerlimit6, grade6, upperlimit7, symbol7, lowerlimit7, grade7, upperlimit8, symbol8, lowerlimit8, grade8, upperlimit9, symbol9, lowerlimit9, grade9, upperlimit10, symbol10, lowerlimit10, grade10, upperlimit11, symbol11, lowerlimit11, grade11, upperlimit12, symbol12, lowerlimit12, grade12, upperlimit13, symbol13, lowerlimit13, grade13, upperlimit14, symbol14, lowerlimit14, grade14, upperlimit15, symbol15, lowerlimit15, grade15, upperlimit16, symbol16, lowerlimit16, grade16, upperlimit17, symbol17, lowerlimit17, grade17, upperlimit18, symbol18, lowerlimit18, grade18, upperlimit19, symbol19, lowerlimit19, grade19, upperlimit20, symbol20, lowerlimit20, grade20) VALUES (82, 'Karthik', 2, 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA', 0, 'NA');


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 262
-- Name: markschemedetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('markschemedetails_seq', 1, false);


--
-- TOC entry 3485 (class 0 OID 4518402)
-- Dependencies: 265
-- Data for Name: menumaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO menumaster (menuid, menuname) VALUES (1, 'Masters');
INSERT INTO menumaster (menuid, menuname) VALUES (2, 'Timetable');
INSERT INTO menumaster (menuid, menuname) VALUES (3, 'Attendance');
INSERT INTO menumaster (menuid, menuname) VALUES (4, 'Finance');
INSERT INTO menumaster (menuid, menuname) VALUES (5, 'Library');
INSERT INTO menumaster (menuid, menuname) VALUES (6, 'ExamTimetable');
INSERT INTO menumaster (menuid, menuname) VALUES (7, 'StudentDetails');
INSERT INTO menumaster (menuid, menuname) VALUES (8, 'StaffDetails');


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 264
-- Name: menumaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menumaster_seq', 1, false);


--
-- TOC entry 3486 (class 0 OID 4518409)
-- Dependencies: 266
-- Data for Name: menurights; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 3);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 4);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 1);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 2);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 6);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 5);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 8);
INSERT INTO menurights (userid, usertype, menuid) VALUES (1, 'Admin', 7);


--
-- TOC entry 3488 (class 0 OID 4518415)
-- Dependencies: 268
-- Data for Name: omkar_be_may2009_a; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 267
-- Name: omkar_be_may2009_a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('omkar_be_may2009_a_seq', 1, false);


--
-- TOC entry 3490 (class 0 OID 4518432)
-- Dependencies: 270
-- Data for Name: omkarbemay2009a; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (1, 'OMKAR', 'be', 'May2009', '1', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (2, 'OMKAR', 'be', 'May2009', '2', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (3, 'OMKAR', 'be', 'May2009', '3', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (4, 'OMKAR', 'be', 'May2009', '4', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (5, 'OMKAR', 'be', 'May2009', '5', '1', '1', 'NA', 'NA', 'NA');
INSERT INTO omkarbemay2009a (timetableid, timetablename, coursecode, term, day, week, slot, subject, staff, roomno) VALUES (6, 'OMKAR', 'be', 'May2009', '6', '1', '1', 'NA', 'NA', 'NA');


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 269
-- Name: omkarbemay2009a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('omkarbemay2009a_seq', 1, false);


--
-- TOC entry 3492 (class 0 OID 4518449)
-- Dependencies: 272
-- Data for Name: paymentdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (1, 20000, '602201198626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (2, 10000, '101', 'Deposit', 'Cheque', 12577, '2008-04-26', '', '', 'Karthik', 'no');
INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (3, 2000, '9894', 'Deposit', 'Cheque', 12345, '2008-07-26', '', '', 'srinilinux', 'no');
INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (4, 28, '101', 'Pendings', 'Cheque', 10001, '2008-08-26', '', '', 'DA05', 'no');
INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (5, 10000, '987', 'Deposit', 'Cheque', 2147483647, '2008-09-24', '', '', '322', 'no');
INSERT INTO paymentdetails (recordid, amount, accountnumber, description, paymode, cdnumber, cddate, bankname, branch, towhom, done) VALUES (6, 220, '101', 'Deposit', 'Cheque', 987654321, '2008-09-11', '', '', 'srinivasan', 'no');


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 271
-- Name: paymentdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paymentdetails_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 4518462)
-- Dependencies: 273
-- Data for Name: paythis; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paythis (recordid, onoff) VALUES (2, 'off');
INSERT INTO paythis (recordid, onoff) VALUES (3, 'off');
INSERT INTO paythis (recordid, onoff) VALUES (4, 'off');
INSERT INTO paythis (recordid, onoff) VALUES (5, 'off');
INSERT INTO paythis (recordid, onoff) VALUES (6, 'off');


--
-- TOC entry 3495 (class 0 OID 4518468)
-- Dependencies: 275
-- Data for Name: persondetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO persondetails (recordid, personid, personname) VALUES (1, 'ACCSC12', 'William');
INSERT INTO persondetails (recordid, personid, personname) VALUES (2, 'ACECE45', 'Jackson');
INSERT INTO persondetails (recordid, personid, personname) VALUES (3, 'ACCS23', 'Roy');


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 274
-- Name: persondetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persondetails_seq', 1, false);


--
-- TOC entry 3497 (class 0 OID 4518478)
-- Dependencies: 277
-- Data for Name: pettycash; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (1, '23', 'sam', 9883, NULL, NULL, NULL);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (2, 'ACCSC12', 'William', 101, 11, '2008-05-23', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (3, 'ACCSC12', 'William', 101, 1000, '2008-05-27', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (4, 'ACCSC12', 'William', 101, 1000, '2008-05-27', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (5, 'ACECE45', 'Jackson', 9894, 1100, '2008-08-26', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (6, 'ACCS23', 'Roy', 101, 100, '2008-08-26', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (7, 'ACCSC12', 'William', 101, 250, '2008-08-26', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (8, 'ACECE45', 'Jackson', 101, 150, '2008-08-26', 0);
INSERT INTO pettycash (recordid, persionid, personname, accountnumber, pettyamount, pettydate, pettycarry) VALUES (9, 'ACCS23', 'Roy', 9894, 150, '2008-08-26', 0);


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 276
-- Name: pettycash_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pettycash_seq', 1, false);


--
-- TOC entry 3499 (class 0 OID 4518488)
-- Dependencies: 279
-- Data for Name: publicationdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO publicationdetails (publicationnameid, publicationname) VALUES (5, 'Tata');
INSERT INTO publicationdetails (publicationnameid, publicationname) VALUES (2, 'Mc Graw');
INSERT INTO publicationdetails (publicationnameid, publicationname) VALUES (4, 'Osborne');


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 278
-- Name: publicationdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('publicationdetails_seq', 1, false);


--
-- TOC entry 3501 (class 0 OID 4518497)
-- Dependencies: 281
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO purchase (recordid, invoicenumber, customerid, customername, billamount, billdate, paidamount, paydate) VALUES (2, '201', 'DA05', 'Daniel', 100, '2008-03-20', 100, NULL);
INSERT INTO purchase (recordid, invoicenumber, customerid, customername, billamount, billdate, paidamount, paydate) VALUES (3, '2544', 'Vel01', 'vel', 1500, '2008-04-23', 0, '2008-04-24');
INSERT INTO purchase (recordid, invoicenumber, customerid, customername, billamount, billdate, paidamount, paydate) VALUES (4, '8987897978', 'S', 'Yrty', 5468, '2008-09-04', 0, '2008-09-05');


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 280
-- Name: purchase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('purchase_seq', 1, false);


--
-- TOC entry 3503 (class 0 OID 4518509)
-- Dependencies: 283
-- Data for Name: rack; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO rack (rackid, rackno, noofbooks) VALUES (4, 'AC', 100);
INSERT INTO rack (rackid, rackno, noofbooks) VALUES (2, 'AB', 1000);
INSERT INTO rack (rackid, rackno, noofbooks) VALUES (5, 'AA', 50);


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 282
-- Name: rack_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rack_seq', 1, false);


--
-- TOC entry 3505 (class 0 OID 4518519)
-- Dependencies: 285
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 284
-- Name: random_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('random_seq', 1, false);


--
-- TOC entry 3507 (class 0 OID 4518529)
-- Dependencies: 287
-- Data for Name: refund; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO refund (recordid, studentid, paidamount, refundamount, accountnumber, mode, cdnumber, dddate, bankname, branch, towhom) VALUES (3, '1', 1000, 100, 101, 'Cash', 0, '2008-05-23', '', '', '1');


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 286
-- Name: refund_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('refund_seq', 1, false);


--
-- TOC entry 3509 (class 0 OID 4518543)
-- Dependencies: 289
-- Data for Name: registrationfeesdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO registrationfeesdetails (registrationfeesid, registrationfees, libraryfine) VALUES (1, 1, 20);
INSERT INTO registrationfeesdetails (registrationfeesid, registrationfees, libraryfine) VALUES (2, 0, NULL);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 288
-- Name: registrationfeesdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('registrationfeesdetails_seq', 1, false);


--
-- TOC entry 3511 (class 0 OID 4518552)
-- Dependencies: 291
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO salary (recordid, salarymonth, accountnumber, salarytotal, mode, cdnumber, cdbankname, cdbranch, cddate, cdto) VALUES (4, 'may', 101, 1300, 'Cash', 0, '', '', '2008-05-23', 'may');
INSERT INTO salary (recordid, salarymonth, accountnumber, salarytotal, mode, cdnumber, cdbankname, cdbranch, cddate, cdto) VALUES (5, '', 0, 0, 'Cash', 0, '', '', NULL, '');


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 290
-- Name: salary_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('salary_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 4518565)
-- Dependencies: 293
-- Data for Name: sbnm1515; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 292
-- Name: sbnm1515_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sbnm1515_seq', 1, false);


--
-- TOC entry 3515 (class 0 OID 4518576)
-- Dependencies: 295
-- Data for Name: screenmaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO screenmaster (screenid, screenname) VALUES (21, 'AgentDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (2, 'BankDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (3, 'AssestmentDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (4, 'CohortDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (6, 'CollegeDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (7, 'CountryDepositDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (8, 'CountryDetail');
INSERT INTO screenmaster (screenid, screenname) VALUES (9, 'CourseDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (10, 'EmbassyAddress');
INSERT INTO screenmaster (screenid, screenname) VALUES (11, 'ExaminationTimeTable');
INSERT INTO screenmaster (screenid, screenname) VALUES (12, 'ExamTTSlot');
INSERT INTO screenmaster (screenid, screenname) VALUES (13, 'InfrastructureDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (14, 'MarkSchemeDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (15, 'RegistrationFeesDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (16, 'ScreenMaster');
INSERT INTO screenmaster (screenid, screenname) VALUES (17, 'SectionMaster');
INSERT INTO screenmaster (screenid, screenname) VALUES (18, 'SubjectCreditDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (19, 'SupplierDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (20, 'UniversityDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (22, 'ExamName');
INSERT INTO screenmaster (screenid, screenname) VALUES (23, 'BookDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (24, 'MenuMaster');
INSERT INTO screenmaster (screenid, screenname) VALUES (25, 'MenuRights');
INSERT INTO screenmaster (screenid, screenname) VALUES (26, 'PublicationDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (27, 'RackDetails');
INSERT INTO screenmaster (screenid, screenname) VALUES (28, 'ScreenRights');
INSERT INTO screenmaster (screenid, screenname) VALUES (29, 'UserCreation');
INSERT INTO screenmaster (screenid, screenname) VALUES (30, 'UserTypeMaster');


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 294
-- Name: screenmaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('screenmaster_seq', 1, false);


--
-- TOC entry 3516 (class 0 OID 4518583)
-- Dependencies: 296
-- Data for Name: screenrights; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO screenrights (userid, usertype, screenid) VALUES (2, 'Agent', 17);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (2, 'Agent', 18);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (2, 'Agent', 19);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (2, 'Agent', 20);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 21);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 3);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 2);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 4);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 6);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 7);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 8);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 9);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 10);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 11);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 12);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 13);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 14);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 15);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 16);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 17);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 18);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 19);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 20);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 23);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 22);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 24);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 25);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 26);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 27);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 28);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 29);
INSERT INTO screenrights (userid, usertype, screenid) VALUES (1, 'Admin', 30);


--
-- TOC entry 3518 (class 0 OID 4518589)
-- Dependencies: 298
-- Data for Name: sectionmaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (42, 'Aug2008', 'MECH', 'Level1', 'D');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (69, 'May2009', 'IT', 'Level2', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (43, 'Aug2008', 'IT', 'Level2', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (52, 'Aug2008', 'IT', 'Level2', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (51, 'Aug2008', 'EEE', 'Level1', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (50, 'Aug2008', 'MSESE', 'Level3', 'F');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (44, 'Aug2008', 'MBA', 'Level4', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (71, 'Aug2008', 'EEE', 'Level1', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (45, 'Aug2008', 'NAT', 'Level5', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (46, 'Aug2008', 'MCA', 'Level2', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (47, 'Aug2008', 'MECH', 'Level1', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (72, 'Nov2008', 'IT', 'Level2', 'E');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (54, 'Aug2008', 'BECSE', 'Level3', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (55, 'Aug2008', 'MBA', 'Level4', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (57, 'Aug2008', 'MCA', 'Level2', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (58, 'Aug2008', 'MECH', 'Level1', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (59, 'Aug2008', 'ECE', 'Level1', 'A');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (61, 'Aug2008', 'IT', 'Level2', 'C');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (63, 'Aug2008', 'BECSE', 'Level3', 'C');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (64, 'Aug2008', 'MBA', 'Level4', 'C');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (65, 'Aug2008', 'NAT', 'Level5', 'C');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (66, 'Aug2008', 'MCA', 'Level2', 'C');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (67, 'Aug2008', 'MECH', 'Level1', 'E');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (68, 'Aug2008', 'ECE', 'Level1', 'B');
INSERT INTO sectionmaster (sectionid, intake, coursecode, levelofcourse, section) VALUES (75, 'Feb2009', 'EEE', 'Level1', 'A');


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 297
-- Name: sectionmaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sectionmaster_seq', 1, false);


--
-- TOC entry 3519 (class 0 OID 4518599)
-- Dependencies: 299
-- Data for Name: slotrepeat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO slotrepeat (week, "boolean") VALUES (1, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (2, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (3, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (4, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (5, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (6, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (7, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (8, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (9, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (10, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (11, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (12, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (13, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (14, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (15, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (16, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (17, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (18, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (19, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (20, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (21, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (22, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (23, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (24, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (25, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (26, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (27, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (28, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (29, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (30, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (31, 0);
INSERT INTO slotrepeat (week, "boolean") VALUES (32, 0);


--
-- TOC entry 3521 (class 0 OID 4518608)
-- Dependencies: 301
-- Data for Name: srini_eee_aug2008_a; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (3, 'SRINI', 'EEE', 'Aug2008', '2008-08-27', '3', '2', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (4, 'SRINI', 'EEE', 'Aug2008', '2008-09-03', '3', '3', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (5, 'SRINI', 'EEE', 'Aug2008', '2008-09-10', '3', '4', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (6, 'SRINI', 'EEE', 'Aug2008', '2008-09-17', '3', '5', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (7, 'SRINI', 'EEE', 'Aug2008', '2008-09-24', '3', '6', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (8, 'SRINI', 'EEE', 'Aug2008', '2008-10-01', '3', '7', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (9, 'SRINI', 'EEE', 'Aug2008', '2008-10-08', '3', '8', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (10, 'SRINI', 'EEE', 'Aug2008', '2008-10-15', '3', '9', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (11, 'SRINI', 'EEE', 'Aug2008', '2008-10-22', '3', '10', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (12, 'SRINI', 'EEE', 'Aug2008', '2008-10-29', '3', '11', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (13, 'SRINI', 'EEE', 'Aug2008', '2008-11-05', '3', '12', '1', 'ENG107', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (14, 'SRINI', 'EEE', 'Aug2008', '2008-11-12', '3', '13', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (15, 'SRINI', 'EEE', 'Aug2008', '2008-11-19', '3', '14', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (16, 'SRINI', 'EEE', 'Aug2008', '2008-11-26', '3', '15', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (17, 'SRINI', 'EEE', 'Aug2008', '2008-12-03', '3', '16', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (18, 'SRINI', 'EEE', 'Aug2008', '2008-12-10', '3', '17', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (19, 'SRINI', 'EEE', 'Aug2008', '2008-12-17', '3', '18', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (20, 'SRINI', 'EEE', 'Aug2008', '2008-12-24', '3', '19', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (21, 'SRINI', 'EEE', 'Aug2008', '2008-12-31', '3', '20', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (22, 'SRINI', 'EEE', 'Aug2008', '2009-01-07', '3', '21', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (23, 'SRINI', 'EEE', 'Aug2008', '2009-01-14', '3', '22', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (24, 'SRINI', 'EEE', 'Aug2008', '2009-01-21', '3', '23', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (25, 'SRINI', 'EEE', 'Aug2008', '2009-01-28', '3', '24', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (26, 'SRINI', 'EEE', 'Aug2008', '2009-02-04', '3', '25', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (27, 'SRINI', 'EEE', 'Aug2008', '2009-02-11', '3', '26', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (28, 'SRINI', 'EEE', 'Aug2008', '2009-02-18', '3', '27', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (29, 'SRINI', 'EEE', 'Aug2008', '2009-02-25', '3', '28', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (30, 'SRINI', 'EEE', 'Aug2008', '2009-03-04', '3', '29', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (31, 'SRINI', 'EEE', 'Aug2008', '2009-03-11', '3', '30', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (32, 'SRINI', 'EEE', 'Aug2008', '2009-03-18', '3', '31', '1', 'ENG105', 'syam', 'h2');
INSERT INTO srini_eee_aug2008_a (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (33, 'SRINI', 'EEE', 'Aug2008', '2009-03-25', '3', '32', '1', 'ENG105', 'syam', 'h2');


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 300
-- Name: srini_eee_aug2008_a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('srini_eee_aug2008_a_seq', 1, false);


--
-- TOC entry 3523 (class 0 OID 4518625)
-- Dependencies: 303
-- Data for Name: srini_mech_aug2008_a; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 302
-- Name: srini_mech_aug2008_a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('srini_mech_aug2008_a_seq', 1, false);


--
-- TOC entry 3525 (class 0 OID 4518642)
-- Dependencies: 305
-- Data for Name: srini_mech_aug2008_b; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (1, 'SRINI', 'MECH', 'Aug2008', '2008-08-21', '4', '1', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (2, 'SRINI', 'MECH', 'Aug2008', '2008-10-02', '4', '7', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (3, 'SRINI', 'MECH', 'Aug2008', '2008-10-30', '4', '11', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (4, 'SRINI', 'MECH', 'Aug2008', '2008-11-27', '4', '15', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (5, 'SRINI', 'MECH', 'Aug2008', '2008-12-25', '4', '19', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (6, 'SRINI', 'MECH', 'Aug2008', '2009-02-05', '4', '25', '3', '', '', '');
INSERT INTO srini_mech_aug2008_b (timetableid, timetablename, coursecode, term, todaydate, day, week, slot, subject, staff, roomno) VALUES (7, 'SRINI', 'MECH', 'Aug2008', '2009-03-12', '4', '30', '3', '', '', '');


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 304
-- Name: srini_mech_aug2008_b_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('srini_mech_aug2008_b_seq', 1, false);


--
-- TOC entry 3527 (class 0 OID 4518659)
-- Dependencies: 307
-- Data for Name: srinimca02may2008a; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 306
-- Name: srinimca02may2008a_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('srinimca02may2008a_seq', 1, false);


--
-- TOC entry 3529 (class 0 OID 4518676)
-- Dependencies: 309
-- Data for Name: staffattendence; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (48, '23', 'IT', '2008-08-07', 'A', '-', '*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (46, '23', 'IT', '2008-08-04', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (47, '22', 'IT', '2008-08-07', 'A', '-', '*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (51, '35', 'IT', '2008-08-31', 'A', '-', '*22*23*24*25*26*27*28*29*30*31*32*33*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (50, '34', 'IT', '2008-08-31', 'A', '-', '*22*23*24*25*26*27*28*29*30*31*32*33*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (49, '24', 'IT', '2008-08-07', 'A', '-', '*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (38, 'AP', 'IT', '2008-07-31', 'AP', '-', '*22sit227*44sit224*34sit225***Dr*Dr*Mr*Mr*Mr*Mr*Mr*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (39, '22', 'IT', '2008-08-01', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (40, '23', 'IT', '2008-08-01', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (43, '22', 'IT', '2008-08-02', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (42, 'AP', 'IT', '2008-08-06', 'AP', '-', '*22*23*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (44, '23', 'IT', '2008-08-02', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (45, '22', 'IT', '2008-08-04', 'A', '-', '*24*25*26*27*28*29*30*31*32*33*34*35*36*');
INSERT INTO staffattendence (attendenceid, staffid, department, attendancedate, attendancestatus, reason, present) VALUES (52, '36', 'IT', '2008-08-31', 'A', '-', '*22*23*24*25*26*27*28*29*30*31*32*33*');


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 308
-- Name: staffattendence_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('staffattendence_seq', 1, false);


--
-- TOC entry 3531 (class 0 OID 4518691)
-- Dependencies: 311
-- Data for Name: staffattendencemark; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (61, 0, 'EEE', '*EEE9*EEE8*EEE2*', '*EEE10*EEE11*EEE7*EEE6*', '*2*1*1*2*', '2008-08-25');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (56, 0, 'IT', '*IT5*IT16*', '*IT4*IT3*', '*1*3*', '2008-08-29');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (59, 0, 'EEE', '*EEE8*', '*EEE10*EEE11*EEE9*EEE7*EEE6*EEE2*', '*1*1*4*2*3*', '2008-08-01');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (60, 0, 'IT', '*IT5*IT16*', '*IT4*IT3*', '*1*2*', '2008-08-01');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (62, 0, 'EEE', '*EEE8*', '*EEE10*EEE11*EEE9*EEE7*EEE6*EEE2*', '*1*1*4*2*3*', '2008-08-01');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (63, 0, 'EEE', '*EEE10*EEE8*EEE7*EEE6*EEE2*', '*EEE10*EEE11*EEE9*EEE8*EEE7*EEE6*EEE2*', '*1*3*', '2008-09-09');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (70, 0, 'EEE', '*EEE9*EEE8*EEE7*', '*EEE10*EEE11*EEE6*EEE2*', '*2*3*2*3*', '2008-09-10');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (69, 0, 'IT', '*IT3*IT16*', '*IT5*IT4*', '*1*2*', '2008-09-10');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (71, 0, 'EEE', '*EEE10*EEE8*EEE6*', '*EEE11*EEE9*EEE7*EEE2*', '*1*1*2*3*4*', '2008-09-14');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (72, 0, 'EEE', '*EEE11*EEE8*EEE6*', '*EEE10*EEE9*EEE7*EEE2*', '*1*3*3*4*', '2008-09-13');
INSERT INTO staffattendencemark (attendenceid, staffinformationid, coursecode, present, absent, leavereason, date) VALUES (74, 0, 'EEE', '238*237*232*239*241', '236*240', '2*3', '2008-09-20');


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 310
-- Name: staffattendencemark_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('staffattendencemark_seq', 1, false);


--
-- TOC entry 3533 (class 0 OID 4518705)
-- Dependencies: 313
-- Data for Name: staffavailabilitytimetable; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (342, 'EEE7', 'IT', 'ENG107', '1.2.3.4.5.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (344, 'EEE11', 'MECH', 'ME338', '1.2.3.4.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (345, 'EEE10', 'EEE', 'EEE702', '1.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (346, 'EEE10', 'EEE', 'EEE601', '1.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (347, 'EEE10', 'EEE', 'EEE801', '1.2.3.4.5.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (348, 'EEE10', 'EEE', 'EEE502', '1.2.3.4.5.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (355, 'IT4', 'IT', 'IT082', '1.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (350, 'EEE10', 'MECH', 'MF331', '1.2.3.4.5.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (351, 'EEE10', 'MECH', 'ME331', '1.2.3.4.5.6.7.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (352, 'EEE10', 'EEE', 'EEE502', '1.2.3.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (353, 'EEE10', 'EEE', 'EEE805', '1.2.3.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (356, 'IT4', 'IT', 'IT072', '1.');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (366, 'EEE9', 'EEE', 'EEE703', '1.3.5.7');
INSERT INTO staffavailabilitytimetable (staffavailabilityid, staffid, coursecode, subjectcode, availability) VALUES (367, 'EEE9', 'EEE', 'EEE502', '1.3.5.7');


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 312
-- Name: staffavailabilitytimetable_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('staffavailabilitytimetable_seq', 1, false);


--
-- TOC entry 3535 (class 0 OID 4518717)
-- Dependencies: 315
-- Data for Name: staffpersonalinformation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (240, 'EEE10', 'tarun', 'Lecturer', 'Permanent', 'Male', 'none', 25, 'Married', '2003-08-16', NULL, 's@yahoo.co.in', 'XnndS', 'sfsfs', 'fsfsf', '7575', '757575', 'hi', 'm', 'B.TECH', 'csc', 'sathyaba', 'deemed', '4', 78, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (241, 'EEE11', 'syam', 'Professor', 'Permanent', 'Male', 'none', 24, 'Unmarried', '1998-08-21', NULL, 's@gmail.com', 'EuyUP', 'erere', 'ere', '6866', '8686', 'hindu', 'fe', 'b.tech', 'it', 'sathyabama', 'deemed', '4', 78, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (239, 'EEE9', 'srini', 'Professor', 'Permanent', 'Male', 'none', 23, 'Unmarried', '1999-08-12', NULL, 's1@gmail.com', 'vkDiA', 'hfh', 'fhfhf', '676868', '6868686', 'hindu', 'hhf', 'Btech', 'mca', 'sathyaba', 'deemed', '4', 67, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (238, 'EEE8', 'karthick', 'Professor', 'Permanent', 'Male', 'none', 24, 'Married', '1985-08-16', NULL, 's@gmail.com', 'zRmH', 'sfsfs', 'sfsfs', '9575575757', '57757575', 'hin', 'yad', 'mba', 'mba', 'sathyabama', 'demmwed', '2', 80, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (237, 'EEE7', 'sita', 'Lecturer', 'Permanent', 'Female', 'none', 25, 'Unmarried', '2002-08-03', NULL, 's@gmail.com', 'ZTVsP', 'ghhfh', 'hfh', '788242422', '242454546', 'hindu', 'bra', 'b.tech', 'CSC', 'sathy', 'demmed', '4', 70, '', '', '', '', '', 0, 'sathyabama', 'math,phy', 'lect', 2, '', '', '', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (236, 'EEE6', 'omkar', 'Professor', 'Permanent', 'Male', 'none', 25, 'Unmarried', '1992-08-21', NULL, 's@gmail.com', 'AwYnx', 'plot.176', 'ara,', '9884277243', '062424424', 'hindu', 'brahmin', 'b.tech', 'IT', 'sathyabama', 'deemed', '4', 69, '', '', '', '', '', 0, 'srm', 'english', 'lect', 2, 'dggd', 'mr karthick', 'adyar', '', '', '', 0, '', '', '', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (235, 'IT5', 'hari', 'Lecturer', 'none', 'Male', 'AB+', 0, 'Married', '2008-08-05', NULL, '', 'avmJt', '', '-do-', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'IT');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (234, 'IT4', 'omkar', 'none', 'none', 'Male', 'O+', 25, 'none', '2008-08-15', NULL, 's@gmail.com', 'NnjII', '', '-do-', '8878', '8787', '', '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'IT');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (233, 'IT3', 'SHYAM', 'Lecturer', 'Permanent', 'Male', 'none', 25, 'Unmarried', '2008-08-10', NULL, 'S@GMAO.COM', 'EhWev', 'ghghg', 'ghghg', '949664564', '464646446', 'HI', 'hghg', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'IT');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (232, 'EEE2', 'sonu', 'Professor', 'Permanent', 'Male', 'none', 24, 'Unmarried', '2008-08-06', NULL, 's@gmail.com', 'MrhvI', 'plot no.175', 'ggf', '9884277243', '565657', 'hindu', 'brahmin', 'b.tech', 'IT', 'SATHYABAMA', 'SATHYABAMA', '4', 67, 'b.tech', 'CSC', 'SATHYABAMA', 'SATHYABAMA', '2', 67, 'JEPP', 'JAVA', 'LECT', 2, 'HHF', 'FHFH', 'FHFHFHF', 'JEPP', 'JAVA', 'LECT', 2, 'HGF', 'GFHFH', 'FHFHJFH', 'EEE');
INSERT INTO staffpersonalinformation (staffinformationid, staffid, name, designation, typeofjob, gender, boodgroup, age, maritalstatus, dateofbirth, dateofjoining, mailid, password, presentaddress, permanentaddress, mobileno, phoneno, religion, community, degree, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, compname, subject, compdesignation, years, rewards, reference, address, compname1, subject1, compdesignation1, years1, rewards1, reference1, address1, department) VALUES (231, 'IT16', 'sila', 'none', 'none', 'Male', 'none', 0, 'none', NULL, NULL, '', 'AwfXs', '', '-do-', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 'IT');


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 314
-- Name: staffpersonalinformation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('staffpersonalinformation_seq', 1, false);


--
-- TOC entry 3536 (class 0 OID 4518764)
-- Dependencies: 316
-- Data for Name: staffqualificationdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('ghgh', '', 'hfhghg', 'hghjhjh', 'gjgjg', '45', 56, 'ghggh', 'dddd', 'dadad', 'ddadada', '67', 53, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '', 'hghg', 'ghghg', 'ghghg', '8', 566, 'fgfg', 'gfgfg', 'gfgf', 'gfgfg', '2', 34, 'fdfd', 'dd', 'ffdfd', 2, 'dffd', 'fdf', 'dfdfd', 'fdfd', 'fdfd', 'fdfd', 2, 'fdfdfd', 'fdggf', 'fggf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '', 'tyy', 'yttyt', 'yty', '34', 56, 'b.tfd', 'jj', 'hjh', 'jhj', '78', 78, 'b.tech', 'hg', 'hgh', 1, 'ff', 'fd', 'dfdfd', 'bd', 'dffd', 'fdfd', 3, 'dsds', 'sdfsf', 'fsf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '', 'ghh', 'hghg', 'ghghg', '2', 78, 'hgd', 'iiy', 'iyi', 'iyi', '4', 89, 'tiwary', 'gdgd', 'ggd', 2, 'gg', 'gfgf', 'gfgf', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b', '', 'thghg', 'ghghg', 'hghg', '2', 78, 'bhu', 'jjgj', 'gjgj', 'gjgj', '1', 89, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b', '', 'ggf', 'fgfg', 'gfgf', '1', 89, 'n', 'hghg', 'hghg', 'ghghg', '2', 90, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '', 'ggf', 'gfg', 'gfg', '3', 89, 'df', 'jjhj', 'jhj', 'hjhj', '8', 90, '', '', 'fgfg', 3, 'gdg', 'dgdg', 'dgdgd', 'ggd', 'dgdg', 'dgdg', 3, 'dggdgd', 'gdg', 'dgdgdg');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '', 'ggf', 'gfg', 'gfg', '3', 89, 'df', 'jjhj', 'jhj', 'hjhj', '8', 90, 'fhfhf', 'fhfh', 'fgfg', 3, 'gdg', 'dgdg', 'dgdgd', 'ggd', 'dgdg', 'dgdg', 3, 'dggdgd', 'gdg', 'dgdgdg');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '', 'grr', 'trtrtr', 'rtrtr', '2', 89, 'b.tech', 'gfgfg', 'gfgf', 'fgfg', '1', 80, 'ffdfd', 'fdfd', 'dfdfd', 2, 'dsdfsf', 'rwwrrw', 'rwrw', 'wrrwrw', 'rwrwr', 'rrw', 4, 'gfgg', 'grrrtr', 'rtrtrt');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('gfg', '22sit224', 'jgjgj', 'jgjg', 'gjgj', '6', 78, 'hfhf', 'ghjkghjkh', 'hkhkh', 'hkhkh', '1', 90, 'ggdfg', 'gdgd', 'gdgd', 4, 'gdgdg', 'dgdgd', 'gdgd', 'dgdgd', 'gddgd', 'dgdg', 8, 'fhhf', 'hffhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('b.tech', '22sit226', 'hjhjh', 'hjhjh', 'jhjh', '6', 89, 'hffh', 'hfhf', 'hfhf', 'fhfhfh', '1', 89, 'sdsds', 'sdsds', 'sdsd', 2, 'daq', 'eqeq', 'eqeq', 'eqeq', 'eqeq', 'eq', 3, 'eqereq', 'qeqeq', 'eqqqeq');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('rte', '', '543srt', 'yyhrtyrty', 'ryeryertert', '4', 45, 'trert', '765grthy', 'tytytry', 'yhtrytytry', '6', 45, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('br', '34sit225', 'g', 'gfgfg', 'fgfg', '1', 67, 'fg', 'hgh', 'hgh', 'hgh', '3', 56, 'gg', 'fg', 'fgf', 4, '3', 'hth', 'hfhf', 'hff', 'fhff', 'fhfhf', 4, '5', 'ghfhf', 'fhfhf');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');
INSERT INTO staffqualificationdetails (degree, staffid, specification, institutename, universityname, duration, percentage, degree1, specification1, institutename1, universityname1, duration1, percentage1, name, subject, designation, years, rewards, reference, address, name1, subject1, designation1, years1, rewards1, reference1, address1) VALUES ('', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', '', '', 0, '', '', '');


--
-- TOC entry 3538 (class 0 OID 4518797)
-- Dependencies: 318
-- Data for Name: stand1000; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 317
-- Name: stand1000_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stand1000_seq', 1, false);


--
-- TOC entry 3540 (class 0 OID 4518808)
-- Dependencies: 320
-- Data for Name: studattendencemark; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO studattendencemark (attendenceid, intake, coursecode, present, absent, leavereason, date, subjectcode, section) VALUES (41, 'Aug2008', 'EEE', '*Aug2008EEE67*', '*Aug2008EEE57*', '*1*', '2008-09-03', 'ENG105', 'A');
INSERT INTO studattendencemark (attendenceid, intake, coursecode, present, absent, leavereason, date, subjectcode, section) VALUES (40, 'Aug2008', 'EEE', '*Aug2008EEE57*', '*Aug2008EEE67*', '*1*', '2008-08-27', 'ENG105', 'A');
INSERT INTO studattendencemark (attendenceid, intake, coursecode, present, absent, leavereason, date, subjectcode, section) VALUES (65, 'Aug2008', 'EEE', '15*25', '*', '*', '2008-09-17', 'ENG107', 'A');


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 319
-- Name: studattendencemark_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('studattendencemark_seq', 1, false);


--
-- TOC entry 3542 (class 0 OID 4518822)
-- Dependencies: 322
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (14, 'Aug2008MECH56', 'x4TQEB', 'Mr.karthik Ramalingam', 'Aug2008', 'Aug2008', 'Level1', 'karthikfriend@gmail.com', 'MECH', 'A', 'IND', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MECH', 450, 420, 0, 0, 1, 0, 1, 'SA');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (15, 'Aug2008EEE57', 'w9Iajb', 'Mr.Karthik Vimalraj', 'Aug2008', 'Aug2008', 'Level1', 'karthi@gmail.com', 'EEE', 'A', 'IND', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'EEE', 67, 67, 0, 0, 1, 0, 1, 'MUK01');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (16, 'Aug2008ECE58', 'iKCKPK', 'Mr.Daniel Samraj', 'Aug2008', 'Aug2008', 'Level1', 'danie@gmail.com', 'ECE', 'A', 'IND', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'IND', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'ECE', 4.7000000000000002, 4.7000000000000002, 0, 0, 1, 0, 1, 'JAN14');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (17, 'Aug2008IT59', 'k2n00Q', 'Mr.Omkarnath Tiwary', 'Aug2008', 'Aug2008', 'Level2', 'omkarnat@gmail.com', 'IT', 'A', 'AF', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'AF', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'IT', 23, 22, 0, 0, 1, 0, 1, 'SSM58');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (18, 'Aug2008MCA60', '6IFPYN', 'Mr.Tarun Kumar', 'Aug2008', 'Aug2008', 'Level2', 'taru@gmail.com', 'MCA', 'A', 'AN', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'AN', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MCA', 20000, 19000, 0, 0, 1, 0, 1, 'FGH76');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (19, 'Aug2008MECH61', 'dOYyqo', 'Mr.Mahesh', 'Aug2008', 'Aug2008', 'Level1', 'karthikfrien@gmail.com', 'MECH', 'A', 'BG', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'BG', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MECH', 450, 450, 0, 0, 1, 0, 1, 'SWE45');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (20, 'Aug2008EEE62', 'kakv4u', 'Mr.Alex Pandien', 'Aug2008', 'Aug2008', 'Level1', 'karth@gmail.com', 'EEE', 'A', 'DN', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'DN', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'EEE', 67, 66, 0, 0, 1, 0, 1, 'MUK01');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (21, 'Aug2008ECE63', 'pRdiXY', 'Mr.Srijith', 'Aug2008', 'Aug2008', 'Level1', 'dani@gmail.com', 'ECE', 'A', 'GA', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'GA', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'ECE', 4.7000000000000002, 4.7000000000000002, 0, 0, 1, 0, 1, 'MAH14');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (22, 'Aug2008IT64', 'DS5JuR', 'Mr.Senthil Kumar', 'Aug2008', 'Aug2008', 'Level2', 'omkarna@gmail.com', 'IT', 'A', 'KAZ', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'KAZ', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'IT', 23, 23, 0, 0, 1, 0, 1, 'DER56');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (23, 'Aug2008MCA65', 'nioFfL', 'Mr.Sahji', 'Aug2008', 'Aug2008', 'Level2', 'tar@gmail.com', 'MCA', 'A', 'VAT', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'VAT', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MCA', 20000, 20000, 0, 0, 1, 0, 1, 'FGH76');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (24, 'Aug2008MECH66', '83VmL0', 'Mr.Manika Sudar', 'Aug2008', 'Aug2008', 'Level1', 'karthikfrie@gmail.com', 'MECH', 'A', 'SKN', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'SKN', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MECH', 450, 450, 0, 0, 1, 0, 1, 'JAN14');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (25, 'Aug2008EEE67', 'TromQh', 'Mr.Justin Doss', 'Aug2008', 'Aug2008', 'Level1', 'kart@gmail.com', 'EEE', 'A', 'TI', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'TI', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'EEE', 67, 67, 0, 0, 1, 0, 1, 'SWE45');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (26, 'Aug2008ECE68', 'dvwd5d', 'Mr.Ramesh', 'Aug2008', 'Aug2008', 'Level1', 'dan@gmail.com', 'ECE', 'A', 'LOA', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'LOA', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'ECE', 4.7000000000000002, 4.7000000000000002, 0, 0, 1, 0, 1, 'MUK01');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (27, 'Aug2008IT69', 'ruQVbX', 'Mr.Babu', 'Aug2008', 'Aug2008', 'Level2', 'omkarn@gmail.com', 'IT', 'A', 'CM', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'CM', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'IT', 23, 23, 0, 0, 1, 0, 1, 'SSM58');
INSERT INTO student (recordid, studentid, studentpwd, studentname, intake, nextintake, levelofeducation, mailid, coursecode, section, countryresidence, addreassline1, addressline2, postcode, citizenof, phonenumber, mobilenumber, faxnumber, dateofbirth, passportnumber, course1, institute1, duration1, grade1, course2, institute2, duration2, grade2, employer1, designation1, startdate1, enddate1, employer2, designation2, startdate2, enddate2, refname1, refoccupation1, refinstitution1, refrelationship1, refphonenumber1, refemail1, refname2, refoccupation2, refinstitution2, refrelationship2, refphonenumber2, refemail2, transferbranch, courseamount, feepaid, fine, examfee, visa, englishclass, discontinued, agentid) VALUES (28, 'Aug2008MCA70', 'Ypvi7Y', 'Mr.John Berkman', 'Aug2008', 'Aug2008', 'Level2', 'ta@gmail.com', 'MCA', 'A', 'GA', 'Old Mahabalipuram road, Jeppiaar Nagr, Chennai', '', '600119', 'GA', '24500640', '9888844444', '24500640', '1982-02-08', 'PASS789', 'SSLC', 'Govt.Hr.Sec School', 10, 'B ', '+2', 'Govt.Hr.Sec School', 10, 'B ', '', '', NULL, NULL, '', '', NULL, NULL, 'Paul Edward', 'Employee', 'Jeppiaar Technologies', 'Friends', '9888855555', 'paul@gmail.com', '', '', '', '', '', '', 'MCA', 20000, 20000, 0, 0, 1, 0, 1, 'MUK01');


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 321
-- Name: student_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('student_seq', 1, false);


--
-- TOC entry 3544 (class 0 OID 4518875)
-- Dependencies: 324
-- Data for Name: studentfinanace; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (11, '1', '1', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 5000, NULL, 20000, 20000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (12, '2', '1', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 10000, NULL, 15000, 15000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (13, '9', '8', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 4350, NULL, 20650, 20650, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (14, '10', '9', 'Mr.omkar nath tiwary', 'UG', '2008-02-26', 25000, 5600, NULL, 19400, 19400, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (15, '11', '10', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 11000, NULL, 14000, 14000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (16, '12', '11', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 1000, NULL, 24000, 24000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (17, '13', '12', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 20000, NULL, 5000, 5000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (18, '18', '7', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 1100, NULL, 23900, 23900, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (19, '19', '8', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 1100, NULL, 23900, 23900, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (20, '20', '9', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, 'no', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (21, '1', '1', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (22, '2', '1', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (23, '9', '8', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (24, '10', '9', 'Mr.omkar nath tiwary', 'UG', '2008-02-26', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (25, '11', '10', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (26, '12', '11', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (27, '13', '12', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (28, '18', '7', 'Mr.balaji Ram Ram', 'UG', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (29, '19', '8', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (30, '20', '9', 'Mr.balaji Ram Ram', 'matric', '2008-02-08', 25000, 0, NULL, 25000, 25000, 0, 0, '', 'no');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (31, '21', '10', '.', '', '', 0, 0, NULL, 0, 0, 0, 0, 'no', '0');
INSERT INTO studentfinanace (recordid, studentid, registrationid, studentname, branchname, intake, totalfeeamount, initialdeposit, nextpaydate, dueamount, balance, fineamount, exambookfee, transferofbranch, discontinued) VALUES (32, '22', '11', 'Mr.sonu nath tiwary', 'IT', '2008-02-11', 15000, 3400, NULL, 11600, 11600, 0, 0, 'yes', '0');


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 323
-- Name: studentfinanace_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('studentfinanace_seq', 1, false);


--
-- TOC entry 3546 (class 0 OID 4518890)
-- Dependencies: 326
-- Data for Name: studentsubject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO studentsubject (recordid, studentid, subjectcode, termno, mark, reason) VALUES (6, 'Aug2008ECE58', 'ENG103', 2, 91, 'ECE');
INSERT INTO studentsubject (recordid, studentid, subjectcode, termno, mark, reason) VALUES (7, 'Aug2008EEE62', 'EEE601', 1, 71, 'EEE');


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 325
-- Name: studentsubject_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('studentsubject_seq', 1, false);


--
-- TOC entry 3548 (class 0 OID 4518901)
-- Dependencies: 328
-- Data for Name: subjectcreditdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (74, 'EEE502', '', 2, 10, 'ECE', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (75, 'EEE503', 'Field Theory', 4, 3, 'EEE', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (76, 'EEE601', 'Analog & Digital Electronics', 45, 2, 'EEE', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (77, 'EEE604', 'Electrical Energy Systems', 5, 3, 'EEE', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (78, 'EEE702', 'Power Electronics', 5, 3, 'EEE', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (79, 'EEE703', 'Control Systems', 5, 4, 'EEE', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (80, 'EEE801', 'Industrial Engineering', 10, 5, 'EEE', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (81, 'EEE805', 'CAD/CAM', 5, 3, 'EEE', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (82, 'ME331', 'Design of Machine Elements', 2, 4, 'MECH', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (83, 'ME335', 'Computer Aided Design', 4, 23, 'MECH', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (84, 'MF331', 'Engineering Metrology', 45, 2, 'MECH', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (85, 'ME336', 'Dynamics Lab', 5, 0, 'MECH', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (86, 'ME337', 'Thermal Engineering Laboratory I', 5, 3, 'MECH', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (87, 'ME338', 'Computer Aided Manufacturing', 5, 4, 'MECH', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (88, 'ME339', 'Design of Jigs, Fixtures and Press Tools', 10, 5, 'MECH', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (89, 'ME340', 'Heat and Mass Transfer', 5, 3, 'MECH', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (90, 'ME341', 'Hydraulic and Pneumatic Controls', 2, 4, 'MECH', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (91, 'ME342', 'Design of Transmission Systems', 4, 23, 'MECH', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (92, 'ME343', 'CAM Laboratory', 45, 2, 'MECH', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (93, 'ME344', 'Thermal Engineering Laboratory II', 5, 0, 'MECH', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (94, 'CE071', 'Principles of Environmental Science and Engineering', 5, 3, 'MECH', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (95, 'GE035', 'Power Plant Engineering', 5, 4, 'MECH', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (96, 'ME433', 'Mechatronics', 10, 5, 'MECH', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (97, 'ME434', 'Microprocessor Lab', 5, 3, 'MECH', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (98, 'ENG103', 'Engineering Mechanics', 2, 4, 'ECE', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (99, 'ENG104', 'Engineering Graphics', 4, 23, 'ECE', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (100, 'ENG106', 'Engineering Physics', 45, 2, 'ECE', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (101, 'ENG107', 'Engineering Chemistry', 5, 0, 'ECE', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (102, 'ECE302', 'Electrical Circuits and Network Theory', 5, 3, 'ECE', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (103, 'ECE305', 'Solid State Devices', 5, 4, 'ECE', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (104, 'ECE403', 'Electronic Circuits', 10, 5, 'ECE', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (105, 'ECE405', 'Digital Electronics', 5, 3, 'ECE', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (106, 'ECE503', 'Linear Integrated Circuits', 2, 4, 'ECE', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (107, 'ECE504', 'Electromagnetic Theory', 4, 23, 'ECE', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (108, 'ECE603', 'Integrated Circuit Technology', 45, 2, 'ECE', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (109, 'ECE604', 'Microwave Engineering', 5, 0, 'ECE', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (110, 'ECE702', 'Radiation and Propagation', 5, 3, 'ECE', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (111, 'ECE704', 'Electronic Instrumentation', 5, 4, 'ECE', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (112, 'ECE802', 'Modern Communication Systems', 10, 5, 'ECE', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (113, 'ECE803', 'Radar and Navigation Aids', 5, 3, 'ECE', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (114, 'MA533', 'Mathematical Foundations of Computer Science', 2, 4, 'MCA', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (115, 'MC503', 'Data Structures', 4, 23, 'MCA', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (116, 'MC502', 'Data Communication and Networking', 45, 2, 'MCA', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (117, 'MC506', 'Operating System', 5, 0, 'MCA', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (118, 'MC601', 'Data Base System Concepts', 5, 3, 'MCA', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (119, 'MC605', 'Software Engineering', 5, 4, 'MCA', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (120, 'MC602', 'Unix and Network Programming', 10, 5, 'MCA', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (121, 'MC608', 'Multimedia Systems', 5, 3, 'MCA', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (122, 'MC701', 'Programming in ASP .Net', 2, 4, 'MCA', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (123, 'MC703', 'Distributed Date Base Systems', 4, 23, 'MCA', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (124, 'MC705', 'Web Technology', 45, 2, 'MCA', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (125, 'MC606', 'Advanced Java Programming', 5, 0, 'MCA', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (126, 'C107', 'ENGINEERING DRAWING', 2, 4, 'IT', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (127, 'C108', 'WORKSHOP PRACTICE', 4, 23, 'IT', 1);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (128, 'C206', 'ENGINEERING MECHANICS', 45, 2, 'IT', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (129, 'IT033', 'Data structures & Algorithms', 5, 0, 'IT', 2);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (130, 'IT034', 'Digital Techniques', 5, 3, 'IT', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (131, 'IT031', 'Discrete mathematics', 5, 4, 'IT', 3);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (132, 'IT041', 'Numerical Techniques', 10, 5, 'IT', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (133, 'IT045', 'Database Management System', 5, 3, 'IT', 4);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (134, 'IT051', 'Probability Theory & its application', 2, 4, 'IT', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (135, 'IT056', 'Software Engineering', 4, 23, 'IT', 5);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (136, 'IT061', 'Data Communication', 45, 2, 'IT', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (137, 'IT062', 'Computer Graphics', 5, 0, 'IT', 6);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (138, 'IT071', 'Engineering Economics & Management', 2, 4, 'IT', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (139, 'IT072', 'Graph Theory & Applications', 4, 23, 'IT', 7);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (140, 'IT081', 'High speed Networks', 45, 2, 'IT', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (141, 'IT082', 'Distributed Computing', 5, 0, 'IT', 8);
INSERT INTO subjectcreditdetails (subjectcreditid, subjectcode, subjectname, normalcredit, ectscredit, coursecode, termnumber) VALUES (144, 'DSA', 'Gf', 4, 34, 'NAT', 0);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 327
-- Name: subjectcreditdetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('subjectcreditdetails_seq', 1, false);


--
-- TOC entry 3550 (class 0 OID 4518914)
-- Dependencies: 330
-- Data for Name: timetablesettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO timetablesettings (settingsid, timetablename, intake, coursecode, fromdate, todate, fromday, today, numberofslots, fromtime1, totime1, fromtime2, totime2, fromtime3, totime3, fromtime4, totime4, fromtime5, totime5, fromtime6, totime6, fromtime7, totime7, fromtime8, totime8, fromtime9, totime9, fromtime10, totime10) VALUES (90, 'SRINI', 'Aug2008', 'MECH', '2008-08-20', '2009-03-20', 'Monday', 'Saturday', 3, '8:00', '8:45', '9:00', '9:45', '10:00', '10:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO timetablesettings (settingsid, timetablename, intake, coursecode, fromdate, todate, fromday, today, numberofslots, fromtime1, totime1, fromtime2, totime2, fromtime3, totime3, fromtime4, totime4, fromtime5, totime5, fromtime6, totime6, fromtime7, totime7, fromtime8, totime8, fromtime9, totime9, fromtime10, totime10) VALUES (89, 'SRINI', 'Aug2008', 'EEE', '2008-08-20', '2009-03-20', 'Monday', 'Saturday', 3, '8:00', '8:45', '9:00', '9:45', '10:00', '10:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '');


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 329
-- Name: timetablesettings_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('timetablesettings_seq', 1, false);


--
-- TOC entry 3552 (class 0 OID 4518951)
-- Dependencies: 332
-- Data for Name: universitydetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (124, 'SSM58', 'MADRAS UNIVERSITY', 'CHENNAI', 'Fg', 23, '7676', '5554', '445', 'ssmQ@yaho.com', 'www.maduniv.com', 'Kk', 'sdas@jdf.vnv', '988989898');
INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (125, 'SATHY', 'ST MARY', 'CHENNA', 'TAMILNAD', 23, '60011', '83839', '838839', 'SATHYAB@SATY.COM', 'www.google.co.in', 'Prabaka', 'PRAB@AS.CO', '839390');
INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (99, 'ANAU', 'Anna university', 'main street+++', 'TN', 5, '23123123', '2321312', '32222', 'anna@yahoo.com', 'www.anna.com', 'ravi', 'anna@yahoo.com', '2131231');
INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (1, 'UKU', 'UK University', 'Sam1+Sam2+Sam3+Sam4', 'TN', 23, '613501', '2321312', '32222', 'uk@yahoo.com', 'www.uk.com', 'Samraj', 'Sam@g.com', '9876543');
INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (6, 'SATU', 'Sathyabama University', 'line1+line2+line3+line4', 'TN', 4, '613501', '67890', '999', 'Sat@yah.com', 'www.Sat.com', 'Samraj', 'Sam@g.com', '9876543');
INSERT INTO universitydetails (universityid, universitycode, universityname, universityaddress, universitystate, countryid, universitypincode, universityphonenumber, universityfaxnumber, universitymailid, universitywebsitename, contactpersonname, contactpersonmailid, contactpersonphonenumber) VALUES (96, 'ANLU', 'Annamalai University', 'Sam1+Sam2+Sam3+Sam4', 'TamilNadu', 19, '600012', '67890', '67890', 'Sam@g.com', 'www.sa.com', 'Samraj', 'Sam@g.com', '9876543');


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 331
-- Name: universitydetails_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('universitydetails_seq', 1, false);


--
-- TOC entry 3554 (class 0 OID 4518976)
-- Dependencies: 334
-- Data for Name: usercreation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usercreation (userid, username, password, usertype) VALUES (1, 'sam', 'sam', 1);
INSERT INTO usercreation (userid, username, password, usertype) VALUES (2, 'srini', 'srini', 1);
INSERT INTO usercreation (userid, username, password, usertype) VALUES (4, 'karthi', 'karthi', 1);
INSERT INTO usercreation (userid, username, password, usertype) VALUES (5, 'rkarthi', 'rkarthi', 3);
INSERT INTO usercreation (userid, username, password, usertype) VALUES (6, 'tiwary', 'tiwary', 1);
INSERT INTO usercreation (userid, username, password, usertype) VALUES (7, 'raj', 'raj', 2);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 333
-- Name: usercreation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usercreation_seq', 1, false);


--
-- TOC entry 3556 (class 0 OID 4518987)
-- Dependencies: 336
-- Data for Name: usertypemaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usertypemaster (userid, usertype) VALUES (1, 'Admin');
INSERT INTO usertypemaster (userid, usertype) VALUES (2, 'Agent');
INSERT INTO usertypemaster (userid, usertype) VALUES (3, 'Student');
INSERT INTO usertypemaster (userid, usertype) VALUES (5, 'Aplicant');
INSERT INTO usertypemaster (userid, usertype) VALUES (6, 'Staff');


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 335
-- Name: usertypemaster_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usertypemaster_seq', 1, false);


--
-- TOC entry 3139 (class 2606 OID 4517758)
-- Name: 146eee176vimal71 146eee176vimal71_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "146eee176vimal71"
    ADD CONSTRAINT "146eee176vimal71_pkey" PRIMARY KEY (recordid);


--
-- TOC entry 3141 (class 2606 OID 4517782)
-- Name: agentmaster agentmaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY agentmaster
    ADD CONSTRAINT agentmaster_pkey PRIMARY KEY (agentid);


--
-- TOC entry 3143 (class 2606 OID 4517838)
-- Name: applicantdetails applicantdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY applicantdetails
    ADD CONSTRAINT applicantdetails_pkey PRIMARY KEY (recordid, mailid);


--
-- TOC entry 3145 (class 2606 OID 4517850)
-- Name: arreardetails arreardetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arreardetails
    ADD CONSTRAINT arreardetails_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3147 (class 2606 OID 4517862)
-- Name: assestmentdetails assestmentdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY assestmentdetails
    ADD CONSTRAINT assestmentdetails_pkey PRIMARY KEY (assestmenid);


--
-- TOC entry 3149 (class 2606 OID 4517874)
-- Name: aug2008_level1_eee_1_eee601_sam aug2008_level1_eee_1_eee601_sam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level1_eee_1_eee601_sam
    ADD CONSTRAINT aug2008_level1_eee_1_eee601_sam_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3151 (class 2606 OID 4517889)
-- Name: aug2008_level1_eee_a_1_midterm aug2008_level1_eee_a_1_midterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level1_eee_a_1_midterm
    ADD CONSTRAINT aug2008_level1_eee_a_1_midterm_pkey PRIMARY KEY (examid);


--
-- TOC entry 3153 (class 2606 OID 4517901)
-- Name: aug2008_level1_mech_2_eee503_assestment1 aug2008_level1_mech_2_eee503_assestment1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level1_mech_2_eee503_assestment1
    ADD CONSTRAINT aug2008_level1_mech_2_eee503_assestment1_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3155 (class 2606 OID 4517913)
-- Name: aug2008_level2_it_1_eee601_saas aug2008_level2_it_1_eee601_saas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level2_it_1_eee601_saas
    ADD CONSTRAINT aug2008_level2_it_1_eee601_saas_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3157 (class 2606 OID 4517925)
-- Name: aug2008_level2_it_2_mf331_sam aug2008_level2_it_2_mf331_sam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level2_it_2_mf331_sam
    ADD CONSTRAINT aug2008_level2_it_2_mf331_sam_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3159 (class 2606 OID 4517940)
-- Name: aug2008_level2_it_a_2_midterm aug2008_level2_it_a_2_midterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level2_it_a_2_midterm
    ADD CONSTRAINT aug2008_level2_it_a_2_midterm_pkey PRIMARY KEY (examid);


--
-- TOC entry 3161 (class 2606 OID 4517955)
-- Name: aug2008_level2_it_b_2_midterm aug2008_level2_it_b_2_midterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aug2008_level2_it_b_2_midterm
    ADD CONSTRAINT aug2008_level2_it_b_2_midterm_pkey PRIMARY KEY (examid);


--
-- TOC entry 3163 (class 2606 OID 4517970)
-- Name: balance balance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY balance
    ADD CONSTRAINT balance_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3165 (class 2606 OID 4517990)
-- Name: bankdetails bankdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bankdetails
    ADD CONSTRAINT bankdetails_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3167 (class 2606 OID 4518022)
-- Name: billdetails billdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY billdetails
    ADD CONSTRAINT billdetails_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3169 (class 2606 OID 4518032)
-- Name: bookissue bookissue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookissue
    ADD CONSTRAINT bookissue_pkey PRIMARY KEY (issueid);


--
-- TOC entry 3171 (class 2606 OID 4518047)
-- Name: bookmaster bookmaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookmaster
    ADD CONSTRAINT bookmaster_pkey PRIMARY KEY (bookno);


--
-- TOC entry 3173 (class 2606 OID 4518056)
-- Name: cohortdetails cohortdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cohortdetails
    ADD CONSTRAINT cohortdetails_pkey PRIMARY KEY (cohortid, intake);


--
-- TOC entry 3175 (class 2606 OID 4518074)
-- Name: collegedetails collegedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY collegedetails
    ADD CONSTRAINT collegedetails_pkey PRIMARY KEY (collegeid);


--
-- TOC entry 3177 (class 2606 OID 4518091)
-- Name: countrydepositdetails countrydepositdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countrydepositdetails
    ADD CONSTRAINT countrydepositdetails_pkey PRIMARY KEY (countrydepositdetailsid);


--
-- TOC entry 3179 (class 2606 OID 4518102)
-- Name: countrydetails countrydetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY countrydetails
    ADD CONSTRAINT countrydetails_pkey PRIMARY KEY (countryid);


--
-- TOC entry 3181 (class 2606 OID 4518120)
-- Name: coursedetails coursedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY coursedetails
    ADD CONSTRAINT coursedetails_pkey PRIMARY KEY (courseid);


--
-- TOC entry 3184 (class 2606 OID 4518143)
-- Name: customerdetails customerdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customerdetails
    ADD CONSTRAINT customerdetails_pkey PRIMARY KEY (recordid, customerid);


--
-- TOC entry 3186 (class 2606 OID 4518160)
-- Name: deposit deposit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deposit
    ADD CONSTRAINT deposit_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3188 (class 2606 OID 4518170)
-- Name: embassyaddress embassyaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY embassyaddress
    ADD CONSTRAINT embassyaddress_pkey PRIMARY KEY (embassyaddressid);


--
-- TOC entry 3190 (class 2606 OID 4518179)
-- Name: examnames examnames_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY examnames
    ADD CONSTRAINT examnames_pkey PRIMARY KEY (examnameid);


--
-- TOC entry 3192 (class 2606 OID 4518191)
-- Name: examttslot examttslot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY examttslot
    ADD CONSTRAINT examttslot_pkey PRIMARY KEY (slotid);


--
-- TOC entry 3194 (class 2606 OID 4518203)
-- Name: feb2009_level1_eee_1_eee601_vimal feb2009_level1_eee_1_eee601_vimal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY feb2009_level1_eee_1_eee601_vimal
    ADD CONSTRAINT feb2009_level1_eee_1_eee601_vimal_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3196 (class 2606 OID 4518218)
-- Name: feb2009_level1_eee_a_3_midterm feb2009_level1_eee_a_3_midterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY feb2009_level1_eee_a_3_midterm
    ADD CONSTRAINT feb2009_level1_eee_a_3_midterm_pkey PRIMARY KEY (examid);


--
-- TOC entry 3198 (class 2606 OID 4518235)
-- Name: firstyear_be_aug2008_a firstyear_be_aug2008_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY firstyear_be_aug2008_a
    ADD CONSTRAINT firstyear_be_aug2008_a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3200 (class 2606 OID 4518252)
-- Name: firstyear_sci14_aug2008_b firstyear_sci14_aug2008_b_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY firstyear_sci14_aug2008_b
    ADD CONSTRAINT firstyear_sci14_aug2008_b_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3202 (class 2606 OID 4518269)
-- Name: firstyearsci14aug2008b firstyearsci14aug2008b_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY firstyearsci14aug2008b
    ADD CONSTRAINT firstyearsci14aug2008b_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3204 (class 2606 OID 4518280)
-- Name: icici101 icici101_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY icici101
    ADD CONSTRAINT icici101_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3206 (class 2606 OID 4518291)
-- Name: icici_pro6022 icici_pro6022_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY icici_pro6022
    ADD CONSTRAINT icici_pro6022_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3208 (class 2606 OID 4518300)
-- Name: infrastructuredetails infrastructuredetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY infrastructuredetails
    ADD CONSTRAINT infrastructuredetails_pkey PRIMARY KEY (halliid);


--
-- TOC entry 3210 (class 2606 OID 4518317)
-- Name: karthik_be_may2008_a karthik_be_may2008_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY karthik_be_may2008_a
    ADD CONSTRAINT karthik_be_may2008_a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3212 (class 2606 OID 4518334)
-- Name: khus_sci14_aug2008_b khus_sci14_aug2008_b_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY khus_sci14_aug2008_b
    ADD CONSTRAINT khus_sci14_aug2008_b_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3214 (class 2606 OID 4518347)
-- Name: leavemaster leavemaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY leavemaster
    ADD CONSTRAINT leavemaster_pkey PRIMARY KEY (leaveid);


--
-- TOC entry 3216 (class 2606 OID 4518399)
-- Name: markschemedetails markschemedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY markschemedetails
    ADD CONSTRAINT markschemedetails_pkey PRIMARY KEY (markschemeid);


--
-- TOC entry 3218 (class 2606 OID 4518408)
-- Name: menumaster menumaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menumaster
    ADD CONSTRAINT menumaster_pkey PRIMARY KEY (menuid);


--
-- TOC entry 3220 (class 2606 OID 4518429)
-- Name: omkar_be_may2009_a omkar_be_may2009_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY omkar_be_may2009_a
    ADD CONSTRAINT omkar_be_may2009_a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3222 (class 2606 OID 4518446)
-- Name: omkarbemay2009a omkarbemay2009a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY omkarbemay2009a
    ADD CONSTRAINT omkarbemay2009a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3224 (class 2606 OID 4518461)
-- Name: paymentdetails paymentdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paymentdetails
    ADD CONSTRAINT paymentdetails_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3226 (class 2606 OID 4518475)
-- Name: persondetails persondetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persondetails
    ADD CONSTRAINT persondetails_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3228 (class 2606 OID 4518485)
-- Name: pettycash pettycash_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pettycash
    ADD CONSTRAINT pettycash_pkey PRIMARY KEY (recordid, persionid);


--
-- TOC entry 3230 (class 2606 OID 4518494)
-- Name: publicationdetails publicationdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicationdetails
    ADD CONSTRAINT publicationdetails_pkey PRIMARY KEY (publicationnameid);


--
-- TOC entry 3232 (class 2606 OID 4518506)
-- Name: purchase purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3234 (class 2606 OID 4518516)
-- Name: rack rack_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rack
    ADD CONSTRAINT rack_pkey PRIMARY KEY (rackid);


--
-- TOC entry 3236 (class 2606 OID 4518526)
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY random
    ADD CONSTRAINT random_pkey PRIMARY KEY (sno);


--
-- TOC entry 3238 (class 2606 OID 4518540)
-- Name: refund refund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY refund
    ADD CONSTRAINT refund_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3240 (class 2606 OID 4518549)
-- Name: registrationfeesdetails registrationfeesdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registrationfeesdetails
    ADD CONSTRAINT registrationfeesdetails_pkey PRIMARY KEY (registrationfeesid);


--
-- TOC entry 3242 (class 2606 OID 4518562)
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3244 (class 2606 OID 4518573)
-- Name: sbnm1515 sbnm1515_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sbnm1515
    ADD CONSTRAINT sbnm1515_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3246 (class 2606 OID 4518582)
-- Name: screenmaster screenmaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY screenmaster
    ADD CONSTRAINT screenmaster_pkey PRIMARY KEY (screenid);


--
-- TOC entry 3248 (class 2606 OID 4518598)
-- Name: sectionmaster sectionmaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sectionmaster
    ADD CONSTRAINT sectionmaster_pkey PRIMARY KEY (sectionid);


--
-- TOC entry 3250 (class 2606 OID 4518605)
-- Name: slotrepeat slotrepeat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY slotrepeat
    ADD CONSTRAINT slotrepeat_pkey PRIMARY KEY (week);


--
-- TOC entry 3252 (class 2606 OID 4518622)
-- Name: srini_eee_aug2008_a srini_eee_aug2008_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY srini_eee_aug2008_a
    ADD CONSTRAINT srini_eee_aug2008_a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3254 (class 2606 OID 4518639)
-- Name: srini_mech_aug2008_a srini_mech_aug2008_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY srini_mech_aug2008_a
    ADD CONSTRAINT srini_mech_aug2008_a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3256 (class 2606 OID 4518656)
-- Name: srini_mech_aug2008_b srini_mech_aug2008_b_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY srini_mech_aug2008_b
    ADD CONSTRAINT srini_mech_aug2008_b_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3258 (class 2606 OID 4518673)
-- Name: srinimca02may2008a srinimca02may2008a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY srinimca02may2008a
    ADD CONSTRAINT srinimca02may2008a_pkey PRIMARY KEY (timetableid);


--
-- TOC entry 3260 (class 2606 OID 4518688)
-- Name: staffattendence staffattendence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY staffattendence
    ADD CONSTRAINT staffattendence_pkey PRIMARY KEY (attendenceid);


--
-- TOC entry 3262 (class 2606 OID 4518702)
-- Name: staffattendencemark staffattendencemark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY staffattendencemark
    ADD CONSTRAINT staffattendencemark_pkey PRIMARY KEY (attendenceid);


--
-- TOC entry 3264 (class 2606 OID 4518714)
-- Name: staffavailabilitytimetable staffavailabilitytimetable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY staffavailabilitytimetable
    ADD CONSTRAINT staffavailabilitytimetable_pkey PRIMARY KEY (staffavailabilityid);


--
-- TOC entry 3266 (class 2606 OID 4518763)
-- Name: staffpersonalinformation staffpersonalinformation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY staffpersonalinformation
    ADD CONSTRAINT staffpersonalinformation_pkey PRIMARY KEY (staffinformationid, staffid);


--
-- TOC entry 3268 (class 2606 OID 4518805)
-- Name: stand1000 stand1000_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stand1000
    ADD CONSTRAINT stand1000_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3270 (class 2606 OID 4518819)
-- Name: studattendencemark studattendencemark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY studattendencemark
    ADD CONSTRAINT studattendencemark_pkey PRIMARY KEY (attendenceid);


--
-- TOC entry 3272 (class 2606 OID 4518872)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (recordid, studentid);


--
-- TOC entry 3274 (class 2606 OID 4518887)
-- Name: studentfinanace studentfinanace_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY studentfinanace
    ADD CONSTRAINT studentfinanace_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3276 (class 2606 OID 4518898)
-- Name: studentsubject studentsubject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY studentsubject
    ADD CONSTRAINT studentsubject_pkey PRIMARY KEY (recordid);


--
-- TOC entry 3278 (class 2606 OID 4518911)
-- Name: subjectcreditdetails subjectcreditdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subjectcreditdetails
    ADD CONSTRAINT subjectcreditdetails_pkey PRIMARY KEY (subjectcreditid, subjectcode);


--
-- TOC entry 3280 (class 2606 OID 4518948)
-- Name: timetablesettings timetablesettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY timetablesettings
    ADD CONSTRAINT timetablesettings_pkey PRIMARY KEY (settingsid);


--
-- TOC entry 3282 (class 2606 OID 4518972)
-- Name: universitydetails universitydetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY universitydetails
    ADD CONSTRAINT universitydetails_pkey PRIMARY KEY (universityid);


--
-- TOC entry 3285 (class 2606 OID 4518984)
-- Name: usercreation usercreation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usercreation
    ADD CONSTRAINT usercreation_pkey PRIMARY KEY (userid);


--
-- TOC entry 3287 (class 2606 OID 4518993)
-- Name: usertypemaster usertypemaster_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usertypemaster
    ADD CONSTRAINT usertypemaster_pkey PRIMARY KEY (userid);


--
-- TOC entry 3182 (class 1259 OID 4518121)
-- Name: universityid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX universityid ON coursedetails USING btree (universityid);


--
-- TOC entry 3283 (class 1259 OID 4518973)
-- Name: universityname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX universityname ON universitydetails USING btree (universityname);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-04-18 14:52:47

--
-- PostgreSQL database dump complete
--

