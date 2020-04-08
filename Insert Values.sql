USE preduzece;

INSERT INTO radnik (idbr, ime, prezime, posao, kvalif, datzap, premija, plata) 
VALUES
(5376, "Petar", "Vasic", "vozac", "KV", "1978-01-01", 1900, 1300),
(5497, "Aleksandar", "Maric", "elektricar", "KV", "1990-02-17", 800, 1000),
(5519, "Vanja", "Kondic", "prodavac", "VKV", "1991-11-07", 1300, 1200),
(5652, "Jovan", "Peric", "elektricar", "KV", "1980-05-30", 500, 1000),
(5662, "Janko", "Marcic", "upravnik", "VSS", "1993-08-12", 1000, 2400),
(5696, "Marjana", "Dimic", "cistacica", "KV", "1991-09-30", 0, 1000),
(5780, "Bozidar", "Ristic", "upravnik", "VSS", "1984-08-01", 1000, 2200),
(5786, "Pavle", "Sotra", "upravnik", "VSS", "1983-05-22", 1000, 2800),
(5842, "Milos", "Markovic", "direktor", "VSS", "1981-12-15", 1000, 3000),
(5867, "Svetlana", "Grubac", "savetnik", "VSS", "1970-08-08", 500, 2750),
(5874, "Tomislav", "Bogovac", "elektricar", "KV", "1971-04-19", 1100, 1000);

INSERT INTO projekat (brproj, Imeproj, sredstva, rok)
VALUES (100, "uvoz", 300000, "2020-08-09"),
(200, "izvoz", 200000, "2021-03-10");

INSERT INTO odeljenje (brod, Imeod, mesto, sefod)
VALUES (10, "Komercijala", "Novi Beograd", 5662),
(20, "Plan", "Dorcol", 5780);

INSERT INTO ucesce (idbr, brproj, brsati, funkcija)
VALUES (5662, 100, 2000, "izvrsilac"),
(5780, 200, 3000, "izvrsilac");

