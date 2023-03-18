--INSERT INTO Gmina VALUES ('Nazwa gminy');
INSERT INTO Gmina VALUES ('Zukowo');
INSERT INTO Gmina VALUES ('Kolbudy');
INSERT INTO Gmina VALUES ('Gdansk');
INSERT INTO Gmina VALUES ('Kartuzy');
INSERT INTO Gmina VALUES ('Stezyca');
INSERT INTO Gmina VALUES ('Tczew');
INSERT INTO Gmina VALUES ('Gdynia');
INSERT INTO Gmina VALUES ('Sopot');
INSERT INTO Gmina VALUES ('Puck');
INSERT INTO Gmina VALUES ('Reda');

--INSERT INTO Miejscowosc VALUES ('Nazwa miejscowosci','liczba mieszkancow','powierzchnia ','1 jak miasto 0 jak nie', 'nazwa gminy');
INSERT INTO Miejscowosc VALUES ('Zukowo','6688','5','1', 'Zukowo');
INSERT INTO Miejscowosc VALUES ('Pepowo','2557','2.5','0', 'Zukowo');
INSERT INTO Miejscowosc VALUES ('Kolbudy','3698','3','0', 'Kolbudy');
INSERT INTO Miejscowosc VALUES ('Gdansk','582205','262','1', 'Gdansk');
INSERT INTO Miejscowosc VALUES ('Kartuzy','14611','6.8','1', 'Kartuzy');
INSERT INTO Miejscowosc VALUES ('Tczew','60257','22.26','1', 'Tczew');
INSERT INTO Miejscowosc VALUES ('Gdynia','244458','135.1','1', 'Gdynia');
INSERT INTO Miejscowosc VALUES ('Sopot','37089','17.31','1', 'Sopot');
INSERT INTO Miejscowosc VALUES ('Puck','11329','4.9','1', 'Puck');
INSERT INTO Miejscowosc VALUES ('Reda','26011','33.46','1', 'Reda');

--INSERT INTO Adres VALUES ('ulica', 'numer domu', 'numer mieszkania' , 'kod pocztowy' , 'miejscowosc id');
INSERT INTO Adres VALUES ('Lipowa', '26', NULL, '16-001', 1);
INSERT INTO Adres VALUES ('Swierkowa', '12A', '10', '67-340', 2);
INSERT INTO Adres VALUES ('Slowackiego', '14', NULL, '81-170', 3);
INSERT INTO Adres VALUES ('Matejki', '24E', '4', '92-213', 4);
INSERT INTO Adres VALUES ('Piwna', '56C', '7', '25-620', 5);
INSERT INTO Adres VALUES ('Topolowa', '22A', '7', '38-530', 6);
INSERT INTO Adres VALUES ('Wielka', '24D', '43', '22-170', 7);
INSERT INTO Adres VALUES ('Dluga', '25A', '9', '71-400', 8);
INSERT INTO Adres VALUES ('Szeroka', '46', NULL, '49-420', 9);
INSERT INTO Adres VALUES ('Modrzewiowa', '13', NULL, '64-400', 10);
INSERT INTO Adres VALUES ('Jaskowa', '45', NULL, '97-500', 1);
INSERT INTO Adres VALUES ('Spacerowa', '22A', '7', '65-212', 2);
INSERT INTO Adres VALUES ('Okopowa', '24E', '8', '21-421', 3);
INSERT INTO Adres VALUES ('Grunwaldzka', '26E', '6', '85-190', 4);
INSERT INTO Adres VALUES ('Otwarta', '123', NULL, '75-600', 5);
INSERT INTO Adres VALUES ('Kurpinskiego', '44', NULL, '18-300', 6);
INSERT INTO Adres VALUES ('Rogali', '24E', '12', '79-324', 7);
INSERT INTO Adres VALUES ('Mickiewicza', '12D', '8', '65-150', 8);
INSERT INTO Adres VALUES ('Wolskiego', '12A', '5', '34-600', 9);
INSERT INTO Adres VALUES ('Gosciaka', '24B', '8', '78-320', 10);

--INSERT INTO Kosciol VALUES ('wyznanie', 'adres id');
INSERT INTO Kosciol VALUES ('rzymskokatolicki' , 1);
INSERT INTO Kosciol VALUES ('prawoslawny' , 2);
INSERT INTO Kosciol VALUES ('grekokatolicki' , 3);
INSERT INTO Kosciol VALUES ('starokatolicki' , 4);
INSERT INTO Kosciol VALUES ('adwentystow' , 5);

--INSERT INTO Osoba VALUES ('Pesel', 'Imie', 'Nazwisko', 'Data Urodzenia', 'data smierci', 'adres', 'kosciol' );
INSERT INTO Osoba VALUES ('50072941471', 'Jan', 'Kowalski', '1978-08-05', '1991-11-01', 6, 5 );
INSERT INTO Osoba VALUES ('71113088812', 'Piotr', 'Nowak', '1989-01-26', NULL, 7, NULL );
INSERT INTO Osoba VALUES ('59060332754', 'Kazimierz', 'Wisniewski', '1972-06-28', NULL, 8, 1 );
INSERT INTO Osoba VALUES ('86090885855', 'Andrzej', 'Wojcik', '1983-02-07', NULL, 9, NULL );
INSERT INTO Osoba VALUES ('67080825534', 'Stanis³aw', 'Kowalczyk', '1974-07-21', NULL, 10, 2 );

INSERT INTO Osoba VALUES ('07262084175', 'Tomasz', 'Kaminski', '1987-09-16', NULL, 6, NULL );
INSERT INTO Osoba VALUES ('71032733415', 'Marek', 'Lewandowski', '1991-11-01', NULL, 7, 1 );
INSERT INTO Osoba VALUES ('68122422399', 'Jerzy', 'Dabrowski', '1982-03-18', NULL, 8, 3 );
INSERT INTO Osoba VALUES ('73041339754', 'Adam', 'Zielinski', '1970-05-12', NULL, 9, 2 );
INSERT INTO Osoba VALUES ('98040783311', 'Tadeusz', 'Szymanski', '1998-12-25', NULL, 10, 4 );

INSERT INTO Osoba VALUES ('90081739166', 'Maria', 'Kamiñska', '1987-03-15', NULL, 6, 4 );
INSERT INTO Osoba VALUES ('07310573442', 'Anna', 'Lewandowska', '1972-12-27', '1998-06-09', 7, 4 );
INSERT INTO Osoba VALUES ('56082996986', 'Kazimiera', 'D¹browska', '1998-06-09', NULL, 8, 4 );
INSERT INTO Osoba VALUES ('94121715444', 'Barbara', 'Zieliñska', '1976-07-21', NULL, 9, 4 );
INSERT INTO Osoba VALUES ('55080972189', 'Teresa', 'Szymañska', '1980-09-17', NULL, 10, 4 );

--INSERT INTO Malrzenstwo VALUES ('pesel mezczyzny', 'pesel kobiety', 'data rozpoczecia', 'data zakonczenia');
INSERT INTO Malrzenstwo VALUES ('50072941471', '90081739166', '2007-11-02', NULL);
INSERT INTO Malrzenstwo VALUES ('71113088812', '07310573442', '2003-03-16', '2012-12-29');
INSERT INTO Malrzenstwo VALUES ('59060332754', '56082996986', '2005-08-13', NULL);
INSERT INTO Malrzenstwo VALUES ('86090885855', '94121715444', '2012-12-29', NULL);
INSERT INTO Malrzenstwo VALUES ('67080825534', '55080972189', '2010-04-23', NULL);

--INSERT INTO Dziecko VALUES ('pesel dziecka', 'id malrzenstwa');
INSERT INTO Dziecko VALUES ('07262084175', 1);
INSERT INTO Dziecko VALUES ('71032733415', 1);
INSERT INTO Dziecko VALUES ('68122422399', 3);
INSERT INTO Dziecko VALUES ('73041339754', 4);
INSERT INTO Dziecko VALUES ('98040783311', 5);


--INSERT INTO Firma VALUES ('nip' , 'nazwa', 'branza');
INSERT INTO Firma VALUES ('9530124678' , 'CyberTech Solutions', 'telekomunikacja');
INSERT INTO Firma VALUES ('9415682373' , 'Data Dynamics Inc.', 'telekomunikacja');
INSERT INTO Firma VALUES ('8127345096' , 'Innovate IT Services', 'telekomunikacja');
INSERT INTO Firma VALUES ('7893045672' , 'NextGen Software Corp.', 'telekomunikacja');
INSERT INTO Firma VALUES ('6782013547' , 'TechCore Industries', 'budownictwo');
INSERT INTO Firma VALUES ('5039472086' , 'DigitalWorks Corporation', 'budownictwo');
INSERT INTO Firma VALUES ('4789230561' , 'FusionTech Enterprises', 'budownictwo');
INSERT INTO Firma VALUES ('3589142736' , 'Quantum Computing Inc.', 'transport');
INSERT INTO Firma VALUES ('2468013579' , 'SmartTech Systems', 'IT');
INSERT INTO Firma VALUES ('1234567890' , 'VirtuTech Solutions', 'IT');
INSERT INTO Firma VALUES ('1357924680', 'Cloud9 Technologies', 'IT');
INSERT INTO Firma VALUES ('2468024681', 'InnoTech Industries', 'transport');
INSERT INTO Firma VALUES ('3579135792', 'Progressive Solutions', 'budownictwo');
INSERT INTO Firma VALUES ('4680135793', 'Dynamic Enterprises', 'telekomunikacja');

--INSERT INTO Placowka VALUES ('wielkosc firmy','roczny obrot', 'firma', 'adres');
INSERT INTO Placowka VALUES ('60','22091338', '9530124678', 11);
INSERT INTO Placowka VALUES ('75','18781243', '9415682373', 12);
INSERT INTO Placowka VALUES ('112','45528946', '8127345096', 13);
INSERT INTO Placowka VALUES ('75','17053246', '6782013547', 14);
INSERT INTO Placowka VALUES ('63','12456872', '5039472086', 15);
INSERT INTO Placowka VALUES ('68','27034198', '3589142736', 16);
INSERT INTO Placowka VALUES ('86','34529087', '1234567890', 17);
INSERT INTO Placowka VALUES ('90','46872109', '1234567890', 18);
INSERT INTO Placowka VALUES ('101','50890134', '1234567890', 19);
INSERT INTO Placowka VALUES ('75','30045678', '7893045672', 20);
INSERT INTO Placowka VALUES ('100','2000000', '1357924680', 13);
INSERT INTO Placowka VALUES ('120','3000000', '2468024681', 14);
INSERT INTO Placowka VALUES ('80','2500000', '3579135792', 15);
INSERT INTO Placowka VALUES ('120','3500000', '4680135793', 16);

--INSERT INTO Pracownicy VALUES ('data zatrudnienia' , 'data rozwiazania umowy' , 'stanowisko' , 'stawka godzinowa', 'wielkosc etatu' , 'placowka' , 'osoba');
INSERT INTO Pracownicy VALUES ('1999-09-24' , '2005-06-29' , 'dyrektor' , '50', '0.75' , 2 , '50072941471');
INSERT INTO Pracownicy VALUES ('2000-02-14' , '2006-05-12' , 'kierownik' , '75', '1' , 3 , '71113088812');
INSERT INTO Pracownicy VALUES ('2000-08-20' , '2007-01-06' , 'inzynier' , '62', '0.5' , 5 , '59060332754');
INSERT INTO Pracownicy VALUES ('2001-03-15' , '2008-04-23' , 'specjalista ds. marketingu' , '20', '0.25' , 3 , '86090885855');
INSERT INTO Pracownicy VALUES ('2001-07-11' , '2009-03-01' , 'pracownik produkcji' , '65', '0.25' , 2 , '67080825534');
INSERT INTO Pracownicy VALUES ('2002-01-03' , '2010-12-25' , 'kierownik projektu' , '80', '1' , 7 , '90081739166');
INSERT INTO Pracownicy VALUES ('2002-06-17' , '2011-11-03' , 'sprzedawca' , '45', '0.75' , 8 , '07310573442');
INSERT INTO Pracownicy VALUES ('2002-12-29' , '2012-09-15' , 'kierownik dzialu HR' , '72', '0.5' , 10 , '56082996986');

INSERT INTO Pracownicy VALUES ('1999-05-14' , NULL , 'menedzer ds. sprzedazy' , '40', '0.5' , 3 , '94121715444');
INSERT INTO Pracownicy VALUES ('2003-11-24' , NULL , 'kierownik dzia³u IT' , '75', '0.75' , 2 , '55080972189');

INSERT INTO Pracownicy VALUES ('2013-07-11', '2016-01-14', 'specjalista ds. obs³ugi klienta', '40', '0.5', 6, '50072941471');
INSERT INTO Pracownicy VALUES ('2014-03-28', '2016-09-22', 'mened¿er ds. logistyki', '50', '0.75', 7, '71113088812');
INSERT INTO Pracownicy VALUES ('2014-09-17', '2017-06-06', 'kierownik dzialu finansowego', '60', '1', 8, '59060332754');
INSERT INTO Pracownicy VALUES ('2015-04-01', '2018-01-23', 'konsultant ds. HR', '50', '0.75', 7, '86090885855');
INSERT INTO Pracownicy VALUES ('2015-09-23', '2018-09-11', 'specjalista ds. marketingu internetowego', '70', '1', 9, '67080825534');
INSERT INTO Pracownicy VALUES ('2013-01-03', '2019-05-24', 'menedzer ds. sprzedazy', '80', '0.25', 6, '90081739166');

INSERT INTO Pracownicy VALUES ('2013-06-17' , '2016-11-03' , 'kierownik' , '40', '0.5' , 2 , '07310573442');
INSERT INTO Pracownicy VALUES ('2014-02-14' , '2017-03-29' , 'pracownik biurowy' , '60', '0.75' , 2 , '56082996986');

INSERT INTO Pracownicy VALUES ('2018-06-28' , NULL , 'kierownik dzia³u produkcji' , '40', '0.5' , 2 , '07310573442');
INSERT INTO Pracownicy VALUES ('2020-02-14' , NULL , 'specjalista ds. sprzedazy' , '70', '1' , 4 , '56082996986');