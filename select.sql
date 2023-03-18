 -- 1. Wyswietl nazwê gminy w ktorej po 1980 roku urodzilo siê najwiecej osob oraz wyswietl nazwe gminy w ktorej po 1980 roku urodzilo siê najmniej osob
 SELECT gmina , count(*) AS liczba_dzieci
 FROM Miejscowosc
 INNER JOIN Adres ON Adres.miejscowosc = Miejscowosc.id
 INNER JOIN Osoba ON Osoba.adres = Adres.id
 WHERE data_urodzenia >= '1980-01-01'
 GROUP BY gmina
 ORDER BY liczba_dzieci DESC;

 -- 2. Wyswietl liste gmin oraz przyporzadkowany jej wspó³czynnik bezrobocia (podzielenie ilosci mieszkancow ktorzy maja prace przez sume mieszkancow)
SELECT Gmina.nazwa, 
       CAST((SELECT COUNT(Osoba.pesel) 
	   FROM Osoba 
        INNER JOIN Adres ON Adres.id = Osoba.adres
        INNER JOIN Miejscowosc ON Miejscowosc.id = Adres.miejscowosc
		INNER JOIN Pracownicy ON Pracownicy.osoba = Osoba.pesel
        WHERE data_rozwiazania_umowy IS NULL AND Miejscowosc.gmina = Gmina.nazwa)AS float)/
       CAST((SELECT COUNT(Osoba.pesel) 
	   FROM Osoba 
        INNER JOIN Adres ON Adres.id = Osoba.adres
        INNER JOIN Miejscowosc ON Miejscowosc.id = Adres.miejscowosc
        WHERE Miejscowosc.gmina = Gmina.nazwa)AS float) AS wspolczynnik_bezrobocia
FROM Gmina
INNER JOIN Miejscowosc ON Miejscowosc.gmina = Gmina.nazwa
 INNER JOIN Adres ON Miejscowosc.id = Adres.miejscowosc
 INNER JOIN Osoba ON Adres.id = Osoba.adres
 GROUP BY Gmina.nazwa
HAVING COUNT(Osoba.pesel) > 0

 -- 3. Wyswietl liste wszystkich Id kosciolow znajdujacych sie w gminie X oraz ilosc ich wyznawcow przypisanych do danego kosciola
 SELECT wyznanie ,COUNT(*) AS liczba_wyznawcow
 FROM Kosciol
 INNER JOIN Adres ON Kosciol.adres = Adres.id
 INNER JOIN Osoba ON Kosciol.id = Osoba.kosciol
 INNER JOIN Miejscowosc ON Adres.miejscowosc = Miejscowosc.id
 --WHERE gmina = 'Gdansk'
 GROUP BY wyznanie
 ORDER BY liczba_wyznawcow DESC;

 -- 4. Podaj mieszkancow gminy XD, ktorzy nie naleza do zadnej parafii.
 CREATE VIEW [Niewierzacy mieszkancy] AS
 SELECT pesel, imie, nazwisko, gmina, kosciol
 FROM Miejscowosc
 INNER JOIN Adres ON Adres.miejscowosc = Miejscowosc.id
 INNER JOIN Osoba ON Osoba.adres = Adres.id
 WHERE kosciol IS NULL
 --AND gmina = 'Tczew';

 SELECT * FROM [Niewierzacy mieszkancy]
 DROP VIEW [Niewierzacy mieszkancy]

 -- 5. Podaj osoby zmar³e o wieku niemniejszym ni¿ 60 lat oraz miejscowosc z jakiej pochodza.
 SELECT imie, nazwisko, Miejscowosc.nazwa, data_smierci
 FROM Osoba
 INNER JOIN Adres ON Osoba.adres = Adres.id
 INNER JOIN Miejscowosc ON Adres.miejscowosc = Miejscowosc.id
 WHERE data_smierci IS NOT NULL
 AND data_urodzenia > '1963-01-24'


 -- 6. Podaj adres ktorego mieszkancy maja najwiekszy dochod godzinowy na osobe (podziel dochod na liczbe osob)
 SELECT Adres.id, Miejscowosc.nazwa ,SUM(stawka_godzinowa)/COUNT(*) AS dochod_na_osobe
 FROM Adres
 INNER JOIN Osoba ON Osoba.adres = Adres.id
 INNER JOIN Pracownicy ON Pracownicy.osoba = Osoba.pesel
 INNER JOIN Miejscowosc ON Miejscowosc.id = Adres.miejscowosc
 WHERE data_rozwiazania_umowy IS NOT NULL
 GROUP BY Adres.id, Miejscowosc.nazwa;

 -- 7. Podaj gmine ktora ma najwiekszy zsumowany dochod placowek firm w niej sie znajdujacych
 SELECT gmina, SUM(Placowka.roczny_obrot) AS dochod_placowek
 FROM Placowka
 INNER JOIN Adres ON Adres.id = Placowka.adres
 INNER JOIN Miejscowosc ON Miejscowosc.id = Adres.miejscowosc
 GROUP BY gmina
 ORDER BY dochod_placowek DESC;



 