USE db_bljr;

CREATE TABLE umpan_balik (
    id_komentar  BIGINT NOT NULL AUTO_INCREMENT,
    isi_komentar TEXT   NOT NULL,
    waktu_dibuat DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (id_komentar)
);

DESCRIBE umpan_balik