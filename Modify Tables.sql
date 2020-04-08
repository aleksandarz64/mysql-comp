/* Vezba 2 SQL */
USE preduzece;

ALTER TABLE ODELJENJE ADD brzap INTEGER;

ALTER TABLE RADNIK MODIFY COLUMN brod SMALLINT;

ALTER TABLE UCESCE MODIFY COLUMN brsati SMALLINT;

ALTER TABLE RADNIK MODIFY COLUMN prezime char(25) NOT NULL;

ALTER TABLE PROJEKAT ADD CONSTRAINT ck_rok_projekta CHECK (rok>SYSDATE());

ALTER TABLE radnik MODIFY COLUMN datzap DATE;

ALTER TABLE RADNIK
ADD CONSTRAINT ck_kvalif
CHECK( kvalif  in ('VKV','KV','VSS'));

ALTER TABLE ODELJENJE
ADD CONSTRAINT uk_odeljenje_imeod
UNIQUE (imeod);


ALTER TABLE UCESCE
ADD CONSTRAINT pk_ucesce
PRIMARY KEY (idbr,brproj);

ALTER TABLE RADNIK
ADD CONSTRAINT fk_radnik_odeljenje
FOREIGN KEY (brod)
REFERENCES ODELJENJE (brod);

ALTER TABLE ODELJENJE
ADD CONSTRAINT fk_odeljenje_RADNIK                                                                                   
FOREIGN KEY (sefod)
REFERENCES RADNIK (idbr);


ALTER TABLE UCESCE
ADD CONSTRAINT fk_ucesce_radnik
FOREIGN KEY (idbr)
REFERENCES RADNIK (idbr);

ALTER TABLE RADNIK
ADD CONSTRAINT fk_radnik_radnik
FOREIGN KEY (rukovodilac)
REFERENCES RADNIK(idbr);

ALTER TABLE ODELJENJE
DROP COLUMN brzap;

CREATE INDEX ind_imeod
ON ODELJENJE (imeod);

CREATE UNIQUE INDEX ind_brod
ON ODELJENJE (brod);





