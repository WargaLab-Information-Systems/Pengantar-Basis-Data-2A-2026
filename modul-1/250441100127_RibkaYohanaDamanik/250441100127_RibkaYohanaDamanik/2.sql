USE db_bljr;

CREATE TABLE pelanggan_internasional (
    nomor_identitas INT NOT NULL
);

ALTER TABLE pelanggan_internasional 
MODIFY COLUMN nomor_identitas VARCHAR(20) NOT NULL;

DESCRIBE pelanggan_internasional;