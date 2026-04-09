
INSERT INTO dokter VALUES
(1, 'Dr. Iyan', 'Bedah'),
(2, 'Dr. Tirta', 'Umum');

INSERT INTO pasien VALUES
(1, 'Rio', '2000-08-11', '08123976789'),
(2, 'Kevin', '1994-07-30', '0823456782');

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-04-01', 'Flu sINGAPUR'),
(2, 2, 2, '2025-04-02', 'Sakit gigi');

select * from dokter;
select * from pasien;
select * from rekam_medis;

INSERT INTO rekam_medis VALUES
(3, 1, 99, '2025-04-03', 'Demam');
