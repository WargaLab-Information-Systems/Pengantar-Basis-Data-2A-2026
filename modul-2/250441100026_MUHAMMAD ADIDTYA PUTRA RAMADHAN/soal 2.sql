INSERT INTO dokter VALUES 
(1, 'dr. Adi', 'Umum'), 
(2, 'dr. Adit', 'Anak');

INSERT INTO pasien VALUES 
(1, 'Joni', '1995-05-10', '081234'), 
(2, 'Adrian', '1990-12-12', '085678');
 
INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2024-03-01', 'Flu'),
(2, 2, 2, '2024-03-02', 'Demam');

select * from dokter;
select * from pasien;
select * from rekam_medis;

INSERT INTO rekam_medis VALUES 
(3, 1, 99, '2024-03-03', 'Batuk');