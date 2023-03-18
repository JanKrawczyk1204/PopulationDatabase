DROP TABLE Pracownicy
DROP TABLE Placowka
DROP TABLE Firma
DROP TABLE Dziecko
DROP TABLE Malrzenstwo
DROP TABLE Osoba
DROP TABLE Kosciol
DROP TABLE Adres
DROP TABLE Miejscowosc
DROP TABLE Gmina

CREATE DATABASE Spis_Ludnosci
USE Spis_Ludnosci

CREATE TABLE Gmina (
	nazwa VARCHAR(40) PRIMARY KEY CHECK(nazwa NOT LIKE '%[^A-Za-z]%')
);

CREATE TABLE Miejscowosc (
	id INT IDENTITY(1,1) PRIMARY KEY,
	nazwa VARCHAR(40) NOT NULL CHECK(nazwa NOT LIKE '%[^A-Za-z]%'),
	liczba_mieszkancow INT NOT NULL CHECK(liczba_mieszkancow > 0),
	powierzchnia FLOAT NOT NULL CHECK(powierzchnia > 0),
	prawa_miejskie BIT NOT NULL,
	gmina VARCHAR(40) NOT NULL FOREIGN KEY REFERENCES Gmina(nazwa)
);

CREATE TABLE Adres (
	id INT IDENTITY(1,1) PRIMARY KEY,
	ulica VARCHAR(40) NOT NULL CHECK(ulica NOT LIKE '%[^A-Za-z]%'),
	numer_domu varchar(4) NOT NULL,
	numer_mieszkania INT CHECK (numer_mieszkania > 0 AND numer_mieszkania < 1000),
	kod_pocztowy CHAR(6) CHECK (kod_pocztowy LIKE '[0-9][0-9]-[0-9][0-9][0-9]'),
	miejscowosc INT NOT NULL FOREIGN KEY REFERENCES Miejscowosc(id)
);

CREATE TABLE Kosciol (
	id INT IDENTITY(1,1) PRIMARY KEY,
	wyznanie VARCHAR(50) NOT NULL CHECK(wyznanie NOT LIKE '%[^A-Za-z]%'),
	adres INT NOT NULL FOREIGN KEY REFERENCES Adres(id)
);

CREATE TABLE Osoba (
	pesel CHAR(11) PRIMARY KEY CHECK(pesel NOT LIKE '%[^0-9]%'),
	imie VARCHAR(20) NOT NULL CHECK(imie NOT LIKE '%[^A-Za-z]%'),
	nazwisko VARCHAR(40) NOT NULL CHECK(nazwisko NOT LIKE '%[^A-Za-z]%'),
	data_urodzenia DATE NOT NULL,
	data_smierci DATE, 
	adres INT NOT NULL FOREIGN KEY REFERENCES Adres(id),
	kosciol INT FOREIGN KEY REFERENCES kosciol(id)
);

CREATE TABLE Malrzenstwo (
	id INT IDENTITY(1,1) PRIMARY KEY,
	pesel_mezczyzny CHAR(11) NOT NULL FOREIGN KEY REFERENCES Osoba(pesel),
	pesel_kobiety CHAR(11) NOT NULL FOREIGN KEY REFERENCES Osoba(pesel),
	data_rozpoczecia DATE NOT NULL,
	data_zakonczenia DATE 
);

CREATE TABLE Dziecko (
	osoba CHAR(11) PRIMARY KEY FOREIGN KEY REFERENCES Osoba(pesel),
	malrzenstwo INT NOT NULL FOREIGN KEY REFERENCES Malrzenstwo(id)
);

CREATE TABLE Firma (
	nip CHAR(10) PRIMARY KEY CHECK(nip NOT LIKE '%[^0-9]%'),
	nazwa VARCHAR(40) NOT NULL,
	branza VARCHAR(40) NOT NULL CHECK(branza NOT LIKE '%[^A-Za-z]%'),
);

CREATE TABLE Placowka (
	id INT IDENTITY(1,1) PRIMARY KEY,
	wielkosc_firmy INT NOT NULL CHECK(wielkosc_firmy > 0),
	roczny_obrot FLOAT NOT NULL CHECK(roczny_obrot > 0),
	firma CHAR(10) NOT NULL FOREIGN KEY REFERENCES Firma(nip) ON DELETE CASCADE ON UPDATE CASCADE,
	adres INT NOT NULL FOREIGN KEY REFERENCES Adres(id)
);


CREATE TABLE Pracownicy (
	id INT IDENTITY(1,1) PRIMARY KEY,
	data_zatrudnienia DATE NOT NULL,
	data_rozwiazania_umowy DATE,
	stanowisko VARCHAR(60) NOT NULL,
	stawka_godzinowa INT NOT NULL CHECK(stawka_godzinowa > 0),
	wielkosc_etatu FLOAT NOT NULL CHECK(wielkosc_etatu > 0 AND wielkosc_etatu <=1),
	placowka INT NOT NULL FOREIGN  KEY REFERENCES Placowka(id),
	osoba CHAR(11) NOT NULL FOREIGN KEY REFERENCES Osoba(pesel)
);

