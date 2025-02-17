-- select all from db
SELECT * FROM person2

-- inset into db
INSERT INTO person2 values(2, 'MAHDI', 22, 'RAFI@GAMIL.COM')

-- add column in the existing table 
ALTER TABLE person2 
    ADD COLUMN phone INTEGER DEFAULT '0193959694' NOT NULL;

-- delete existing table column name;

ALTER TABLE person2
     DROP phone;

-- rename column field name;
ALTER TABLE person2
      RENAME age to user_age;