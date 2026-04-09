DROP TABLE rekam_medis;
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);
INSERT INTO rekam_medis 
VALUES (4, 1, 1, '2024-03-07', 'Lambung'),
(5, 1, 1, '2024-03-05', 'Anemia');

DELETE FROM dokter
WHERE id_dokter = 1;

select * from rekam_medis;