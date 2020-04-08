
USE skola;
CREATE TABLE UCENIK
      ( idbr INTEGER NOT NULL PRIMARY KEY,
      ime NVARCHAR (25) NOT NULL,
      prezime NVARCHAR (25) NOT NULL,
      jmbg BIGINT(13) UNIQUE,
      datumrodjenja DATE,
      adresa CHAR(50),
      email CHAR(50));

ALTER TABLE UCENIK ADD smer nvarchar(25);
INSERT INTO UCENIK (idbr, ime, prezime, jmbg, datumrodjenja, adresa, email, smer) 
VALUES
(2345, "Milos", "Milosevic", 1222333444555, "2003-01-01", "ul Radnicka 2, 11000 Beograd", "mmiki@gmail.com", "administrator rac. mreza"),
(2223, "Zoran", "Petrovic", 1222333444666, "2003-10-05", "ul Radnicka 33, 11000 Beograd", "zoki123@gmail.com", "administrator rac. mreza"),
(2361, "Milos", "Nastic", 1222333444777, "2003-04-05", "ul Mike Alasa 12, 11000 Beograd", "mnast333@gmail.com", "administrator rac. mreza"),
(2363, "Zorica", "Predic", 1222333444888, "2003-08-02", "ul Kneza Mihaila 7/12, 11000 Beograd", "zoricap34@gmail.com", "programerski smer"),
(2366, "Milica", "Rancic", 1222333444999, "2003-07-06", "ul Glavna 15, 11000 Zemun", "milicaran@gmail.com", "programerski smer");



