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

-- data type change 

ALTER TABLE person2
      ALTER COLUMN first_name type VARCHAR(30);

-- add constraints (existing column);

ALTER TABLE person2
        ALTER COLUMN user_age set NOT NULL;

-- remove constraints 

ALTER TABLE person2
        ALTER COLUMN user_age    NOT NULL;