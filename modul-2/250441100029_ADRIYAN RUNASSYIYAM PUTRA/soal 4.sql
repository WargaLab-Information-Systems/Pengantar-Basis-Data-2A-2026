DROP table rekam_medis;
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-06-07', 'HIV'),
(2, 2, 1, '2025-09-04', 'Demam Berdarah');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;