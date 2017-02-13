/*WYSWIETLANIE*/
SELECT * FROM rodzaj;
SELECT * FROM zespol;
SELECT * FROM obecny_sklad;
SELECT * FROM albumy;
SELECT * FROM utwory;

SELECT nazwa FROM T;
SELECT nazwa, album FROM F;

/*DODAWANIE WIERSZY*/
INSERT INTO zespol VALUES ('K', 'FOLK','NIEMCY', 2002);
INSERT INTO obecny_sklad VALUES (70, 'Ma', 'Wa', 'FAUN', 'FOLK', 2013);
INSERT INTO albumy VALUES ( 'ZE', 'FAUN', 'FOLK', 2002);
INSERT INTO utwory VALUES (178, 'xyz', 'LICHT', 'FAUN');

DELETE FROM obecny_sklad WHERE  id_wykonawca =1;

/*WYWOLANIE_AKCJI_URUCHAMIAJACEJ_TRIGGER*/

INSERT INTO RODZAJ VALUES ('FOLKI','ROCK', 1960);

SELECT * FROM tabela_trigger;

/*AGREGACJA*/
SELECT utwory.nazwa , utwory.album , albumy.rok_powstania , utwory.wykonawca , zespol.kraj ,
zespol.rok_powstania AS rok_powstania_zespolu, rodzaj.nazwa AS rodzaj, rodzaj.pochodzenie,
rodzaj.rok_powstania  AS rok_powstania_rodzaju FROM utwory
JOIN albumy ON utwory.album = albumy.nazwa
JOIN zespol ON albumy.wykonawca=zespol.nazwa
JOIN rodzaj ON zespol.rodzaj=rodzaj.nazwa
ORDER BY  zespol.nazwa, albumy.rok_powstania ;