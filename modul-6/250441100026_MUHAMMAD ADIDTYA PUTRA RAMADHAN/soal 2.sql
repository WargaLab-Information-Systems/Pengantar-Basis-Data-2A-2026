INSERT INTO dosen VALUES
  (1,'Dr. Ahmad'), (2,'Prof. Budi'),
  (3,'Siti Rahma, M.Kom'), (4,'Rudi Hartono, M.T'),
  (5,'Lina Kusuma, M.Kom');

INSERT INTO mata_kuliah VALUES
  ('MK01','Pengantar Basis Data',3,1),
  ('MK02','Pemrograman Berbasis Web',3,2),
  ('MK03','Desain Manajemen Jaringan',2,3),
  ('MK04','Sistem Operasi',3,1),
  ('MK05','Algoritma dan Dasar Pemrograman',2,2),
  ('MK06','Kecerdasan Buatan',3,4),
  ('MK07','Data Mining',2,5);

INSERT INTO mahasiswa VALUES
  ('21001','Andi Saputra',2021,'Teknik Informatika'),
  ('22001','Budi Santoso',2022,'Sistem Informasi'),
  ('22002','Citra Dewi',2022,'Teknik Informatika'),
  ('23001','Dewi Lestari',2023,'Sistem Informasi'),
  ('23002','Eko Prasetyo',2023,'Teknik Informatika'),
  ('24001','Fajar Hidayat',2024,'Sistem Informasi'),
  ('24002','Gina Putri',2024,'Teknik Informatika'),
  ('24003','Hendra Wijaya',2024,'Sistem Informasi'),
  ('25001','Indra Mahendra',2025,'Teknik Informatika'),
  ('25002','Joko Purwanto',2025,'Sistem Informasi'),
  ('25003','Kiara Sabrina',2025,'Teknik Informatika'),
  ('25004','Laura Mala',2025,'Sistem Informasi');

INSERT INTO krs (nim, kode_mk, semester) VALUES
  ('21001','MK01',1), ('22001','MK01',1), ('22001','MK02',2),
  ('22002','MK02',2), ('23001','MK03',1), ('23002','MK04',3),
  ('24001','MK02',1), ('24002','MK03',2), ('24003','MK01',3),
  ('25001','MK05',2), ('25002','MK06',3), ('25003','MK07',1),
  ('25004','MK01',2);

INSERT INTO nilai (nim, kode_mk, nilai_angka, nilai_huruf) VALUES
  ('21001','MK01',82,'A'), ('22001','MK01',85,'A'),
  ('22001','MK02',78,'B'), ('22002','MK02',80,'A'),
  ('23001','MK03',75,'B'), ('23002','MK04',88,'A'),
  ('24001','MK02',90,'A'), ('24002','MK03',77,'B'),
  ('24003','MK01',84,'A'), ('25001','MK05',79,'B'),
  ('25002','MK06',83,'A'), ('25003','MK07',76,'B'),
  ('25004','MK01',81,'A');