-- create database modul4
-- use modul4



create table dosen (
    id_dosen int primary key,
    nama_dosen varchar(100),
    bidang_keahlian varchar(50)
);

create table mahasiswa (
    id_mahasiswa int primary key,
    nama_mahasiswa varchar(100),
    program_studi varchar(100),
    angkatan int
);

create table mata_kuliah (
    id_mata_kuliah varchar(20) primary key,
    nama_mk varchar(100),
    sks int,
    id_dosen int,
    foreign key (id_dosen) references dosen(id_dosen)
);

create table krs (
    id_krs int primary key,
    id_mahasiswa int,
    id_mata_kuliah varchar(20),
    semester_ambil int,
    foreign key (id_mahasiswa) references mahasiswa(id_mahasiswa),
    foreign key (id_mata_kuliah) references mata_kuliah(id_mata_kuliah)
);

INSERT INTO dosen VALUES
(1, 'Dr. Budi', 'Pemrograman'),
(2, 'Prof. Siti', 'Basis Data'),
(3, 'Ir. Ahmad', 'Jaringan'),
(4, 'Dian, M.Kom', 'Pemrograman'),
(5, 'Eko, S.T', 'Kecerdasan Buatan'),
(6, 'Rina, M.T', 'Basis Data'),
(7, 'Hadi, Ph.D', 'Keamanan Siber'),
(8, 'Siska, M.SI', 'Sistem Informasi'),
(9, 'Bambang, M.Kom', 'Pemrograman'),
(10, 'Laila, M.T', 'Manajemen Proyek');

INSERT INTO mahasiswa VALUES
(2201, 'Dhani Kusuma', 'Sistem Informasi', 2022),
(2202, 'Rizky Pratama', 'Sistem Informasi', 2022),
(2301, 'Andi Wijaya', 'Sistem Informasi', 2023),
(2302, 'Bunga Citra', 'Sistem Informasi', 2023),
(2303, 'Dimas Anggara', 'Sistem Informasi', 2023),
(2401, 'Candra Gupta', 'Sistem Informasi', 2024),
(2402, 'Dedi Kurniawan', 'Sistem Informasi', 2024),
(2501, 'Farah Nabila', 'Sistem Informasi', 2025),
(2502, 'Gibran Rakabumi', 'Sistem Informasi', 2025),
(2503, 'Hani Safira', 'Sistem Informasi', 2025),
(2504, 'Irfan Bachdim', 'Sistem Informasi', 2025),
(2505, 'Joko Anwar', 'Sistem Informasi', 2025);

INSERT INTO mata_kuliah VALUES
('MK01', 'Algoritma & Pemrograman', 4, 1),
('MK02', 'Basis Data Terdistribusi', 3, 2),
('MK03', 'Struktur Data', 3, 4),
('MK04', 'Jaringan Komputer', 3, 3),
('MK05', 'Kecerdasan Buatan', 3, 5),
('MK06', 'Sistem Informasi Akuntansi', 2, 8),
('MK07', 'Pemrograman Web Native', 3, 9),
('MK08', 'Keamanan Informasi', 3, 7),
('MK09', 'Etika Profesi IT', 2, 10),
('MK10', 'Administrasi Basis Data', 3, 6);

INSERT INTO krs VALUES
(101, 2301, 'MK01', 3),
(102, 2301, 'MK02', 3),
(103, 2201, 'MK05', 5),
(104, 2302, 'MK04', 3),
(105, 2401, 'MK01', 1),
(106, 2402, 'MK07', 2),
(107, 2202, 'MK10', 5),
(108, 2303, 'MK06', 4),
(109, 2201, 'MK08', 6),
(110, 2401, 'MK03', 1);

-- 2.1 beban mengajar dosen tertentu
select mt.nama_mk, mt.sks, ds.nama_dosen
from mata_kuliah mt
inner join dosen ds on mt.id_dosen = ds.id_dosen
where ds.bidang_keahlian = 'Pemrograman' or ds.bidang_keahlian = 'Basis Data';

-- 2.2 cek kelengkapan krs mahasiswa
select mh.nama_mahasiswa, kr.id_mata_kuliah
from mahasiswa mh
left join krs kr on mh.id_mahasiswa = kr.id_mahasiswa;

-- 2.3 evaluasi krs semester menengah
select mh.nama_mahasiswa, mt.nama_mk, kr.semester_ambil
from krs kr
inner join mahasiswa mh on kr.id_mahasiswa = mh.id_mahasiswa
inner join mata_kuliah mt on kr.id_mata_kuliah = mt.id_mata_kuliah
where kr.semester_ambil >= 3 and kr.semester_ambil <= 5
order by kr.semester_ambil asc;

-- 2.4 tinjauan sks berat prodi si
select mh.nama_mahasiswa, mt.nama_mk, mt.sks
from krs kr
inner join mahasiswa mh on kr.id_mahasiswa = mh.id_mahasiswa
inner join mata_kuliah mt on kr.id_mata_kuliah = mt.id_mata_kuliah
where mh.program_studi = 'Sistem Informasi' and mt.sks > 2
order by mt.sks desc, mh.nama_mahasiswa asc;

-- 2.5 laporan dekanat angkatan peralihan
select mh.nama_mahasiswa, mh.angkatan, mt.nama_mk, ds.nama_dosen
from krs kr
inner join mahasiswa mh on kr.id_mahasiswa = mh.id_mahasiswa
inner join mata_kuliah mt on kr.id_mata_kuliah = mt.id_mata_kuliah
inner join dosen ds on mt.id_dosen = ds.id_dosen
where (mh.angkatan >= 2023 and mh.angkatan <= 2025) 
and (ds.nama_dosen = 'Dr. Budi' or ds.nama_dosen = 'Prof. Siti')
order by mh.angkatan desc;